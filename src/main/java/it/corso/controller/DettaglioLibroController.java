package it.corso.controller;

import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import it.corso.dao.RecensioneDao;
import it.corso.model.Recensione;
import it.corso.model.Utente;
import it.corso.service.AutoreService;
import it.corso.service.CasaEditriceService;
import it.corso.service.DettaglioLibroService;
import it.corso.service.GenereService;
import it.corso.service.PrenotazioneService;
import it.corso.service.RecensioneService;
import jakarta.servlet.http.HttpSession;

// localhost:8080/dettaglio
@Controller
@RequestMapping("/dettaglio")
public class DettaglioLibroController {
	@Autowired
	private DettaglioLibroService dettaglioLibroService;
	@Autowired
	private CasaEditriceService casaEditriceService;
	@Autowired
	private GenereService genereService;
	@Autowired
	private AutoreService autoreService;
	@Autowired
	private RecensioneService recensioneService;
	@Autowired
	private PrenotazioneService prenotazioneService;
	@Autowired
	private RecensioneDao recensioneDao;

	@GetMapping
	public String getPage(Model model, HttpSession session, @RequestParam(name = "id", required = true) Integer id
			)
			throws Exception {
		Utente utente = (Utente) session.getAttribute("utente");
		boolean loggato;
		boolean dupliceRec = false;
		
		if (utente == null) {
			loggato = false;
		} else {
			loggato = true;
			int utenteId = utente.getId();
			Optional<Recensione> esisteGiaRecensione = recensioneDao.findByUtenteIdAndDettaglioLibroId(utenteId, id);
			// se esiste già allora non mi salva la nuova recensione 
			if(esisteGiaRecensione.isPresent()) {
				dupliceRec = true;
			}
			model.addAttribute("dupliceRec", dupliceRec);
			model.addAttribute("nomeUtente", utente.getNome());
			model.addAttribute("cognomeUtente", utente.getCognome());
		} 
		
		model.addAttribute("libroId", id);
		model.addAttribute("loggato", loggato);
		model.addAttribute("dettaglio", dettaglioLibroService.getDettaglioLibro(id));
		model.addAttribute("caseEditrici", casaEditriceService.getCaseEditrici());
		model.addAttribute("generi", genereService.getGeneri());
		model.addAttribute("autori", autoreService.getAutori());
		model.addAttribute("nuovaRecensione", new Recensione());
		model.addAttribute("listaRecensioni", recensioneService.getRecensioniByLibroId(id));
		
		// System.out.println("listaRecensioni" +
		// recensioneService.getRecensioniByLibroId(id).get(0).getRanked());
		return "dettaglio";
	}

	@PostMapping("/prenota")
	public String prenota(
			@RequestParam(name = "id", required = true) int id, 
			HttpSession session, 
			Model model,
			RedirectAttributes redirectAttributes) throws Exception {
		Utente utenteAttivo = (Utente) session.getAttribute("utente");
		if (utenteAttivo == null) {
			return "redirect:/dettaglio?id=" + id;
	    }
		int utenteId = utenteAttivo.getId();
		redirectAttributes.addFlashAttribute("alert", true);
		prenotazioneService.registraPrenotazione(id, utenteId);
	    return "redirect:/dettaglio?id=" + id;
	}

	@PostMapping("/inserisciRecensione")
	public String inserisciRecensione(
			// questo id è quello di dettaglio
			@RequestParam(name = "id", required = true) int id,
			@ModelAttribute(name = "commento") String commento,
			@RequestParam(name = "ranked", required = true) Integer ranked, 
			@ModelAttribute Recensione recensione, HttpSession session, Model model, RedirectAttributes redirectAttributes) {
		
		// se tutti i campi sono pieni, inserisci nel database
		Utente utenteAttivo = (Utente) session.getAttribute("utente");
		if (utenteAttivo == null) {
			return "redirect:/dettaglio?id=" + id;
		}  
		
		if (ranked == 0) {
			redirectAttributes.addFlashAttribute("errore", "Devi selezionare una valutazione");
			model.addAttribute("commento", commento);
			redirectAttributes.addFlashAttribute("commento", commento);
			System.out.println("commento va?" +  recensione.getCommento());
			return "redirect:/dettaglio?id=" + id;
	    }
		
		int utenteId = utenteAttivo.getId();
		model.addAttribute("utenteAttivo", utenteAttivo);
		model.addAttribute("nuovaRecensione", new Recensione());
		recensioneService.registraRecensione(recensione.getCommento(), utenteId, ranked, id);
		return "redirect:/dettaglio?id=" + id;
	}
}

