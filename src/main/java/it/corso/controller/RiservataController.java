package it.corso.controller;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import it.corso.model.Utente;
import it.corso.service.AutoreService;
import it.corso.service.CasaEditriceService;
import it.corso.service.GenereService;
import it.corso.service.PrenotazioneService;
import it.corso.service.RecensioneService;
import jakarta.servlet.http.HttpSession;

@Controller
@RequestMapping("/riservata")
public class RiservataController {
	@Autowired
	private PrenotazioneService prenotazioneService;
	@Autowired
	private CasaEditriceService casaEditriceService;
	@Autowired
	private GenereService genereService;
	@Autowired
	private AutoreService autoreService;
	@Autowired
	private RecensioneService recensioneService;
	@GetMapping
	public String getPage(Model model, HttpSession session) {
		Utente utente = (Utente) session.getAttribute("utente");
	    if (utente == null) {
	        return "redirect:/login";
	    }
	    boolean loggato = true;
	    model.addAttribute("loggato", loggato);
		int utenteId = utente.getId();
		model.addAttribute("utente", utente);
		model.addAttribute("caseEditrici", casaEditriceService.getCaseEditrici());
		model.addAttribute("generi", genereService.getGeneri());
		model.addAttribute("autori", autoreService.getAutori());
		model.addAttribute("recensioni", recensioneService.getAllFromUtente(utenteId));
		model.addAttribute("prenotazioni", prenotazioneService.getPrenotazioniByUtenteId(utenteId));
		return "riservata";
	}
	
    @PostMapping("/restituisci")
    public String restituisci(Model model, @RequestParam(name = "prenotazioneId") int prenotazioneId) {
    	prenotazioneService.aggiornaRestituzioneById(prenotazioneId);
    	return "redirect:/riservata";
    }
	@GetMapping("/logout")
	public String logout(HttpSession session) {
	    session.invalidate();
	    return "redirect:/login";
	}
}
