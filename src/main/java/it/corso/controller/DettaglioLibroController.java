package it.corso.controller;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;
import it.corso.model.Recensione;
import it.corso.service.AutoreService;
import it.corso.service.CasaEditriceService;
import it.corso.service.DettaglioLibroService;
import it.corso.service.GenereService;
import it.corso.service.RecensioneService;
import jakarta.servlet.http.HttpSession;

// localhost:8080/dettaglio
@Controller
@RequestMapping("/dettaglio")
public class DettaglioLibroController
{
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
	
	
	@GetMapping
	public String getPage(Model model,
			@RequestParam(name = "id", required = true) Integer id) throws Exception
	{
		model.addAttribute("dettaglio", dettaglioLibroService.getDettaglioLibro(id));
		model.addAttribute("caseEditrici", casaEditriceService.getCaseEditrici());
		model.addAttribute("generi", genereService.getGeneri());
		model.addAttribute("autori", autoreService.getAutori());
		model.addAttribute("nuovaRecensione", new Recensione());
		model.addAttribute("listaRecensioni", recensioneService.getRecensioniByLibroId(id));
		//System.out.println("listaRecensioni" + recensioneService.getRecensioniByLibroId(id).get(0).getRanked());
		return "dettaglio";
	}
	
	@PostMapping("/prenota")
	public String prenota(
			@RequestParam(name = "id", required = true) int id, HttpSession session, RedirectAttributes redirectAttributes) throws Exception {
		redirectAttributes.addFlashAttribute("alert", true);
		dettaglioLibroService.prenota(id);
	    return "redirect:/dettaglio?id=" + id;
	}
	
	@PostMapping("/inserisciRecensione")
	public String inserisciRecensione(
			// questo id è quello di dettaglio
			@RequestParam(name = "id", required = true) int id,
			@RequestParam(name = "commento", required = true) String commento,
			@RequestParam(name = "username", required = true) String username,
			@RequestParam(name = "ranked", required = true) Integer ranked,
			Model model) 
	{
		// controllo che sia l'id del libro, sia il commento sia lo username sia il ranked devono essere diversi da vuoto
		if( id == 0 || commento.isBlank() || username.isBlank() || ranked == null || ranked.equals(0)) {
			return "redirect:/dettaglio?id=" + id;
		} else {
			// se tutti i campi sono pieni, inserisci nel database
			model.addAttribute("nuovaRecensione", new Recensione());
			recensioneService.registraRecensione(commento, username, ranked, id);
			return "redirect:/dettaglio?id=" + id;
		}
	}
}


