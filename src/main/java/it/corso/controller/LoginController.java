package it.corso.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import it.corso.model.Utente;
import it.corso.service.AutoreService;
import it.corso.service.CasaEditriceService;
import it.corso.service.GenereService;
import it.corso.service.UtenteService;
import jakarta.servlet.http.HttpSession;

//nuoba pagina per login (Maria Elena non odiarmi!)
@Controller
@RequestMapping("/login")
public class LoginController {
	@Autowired
	private UtenteService utenteService;
	@Autowired
	private CasaEditriceService casaEditriceService;
	@Autowired
	private GenereService genereService;
	@Autowired
	private AutoreService autoreService;

	@GetMapping
	public String getPage(Model model, HttpSession session, @RequestParam(name = "id", required = false) Integer id) {
		model.addAttribute("caseEditrici", casaEditriceService.getCaseEditrici());
		model.addAttribute("generi", genereService.getGeneri());
		model.addAttribute("autori", autoreService.getAutori());
		model.addAttribute("id", id);
		if (session.getAttribute("utente") != null)
			return "redirect:/riservata";
		model.addAttribute("utente", new Utente());
		return "login";
	}

	@PostMapping("/accedi")
	public String formManager(Model model, @RequestParam("username") String username,
			@RequestParam("password") String password, HttpSession session,
			@RequestParam(name = "id", required = false) Integer id) {
		if (utenteService.controlloLogin(username, password, session)) {
			if (id == null)
				return "redirect:/riservata";
			return "redirect:/dettaglio?id=" + id;
		}
		model.addAttribute("id", id);
		model.addAttribute("caseEditrici", casaEditriceService.getCaseEditrici());
		model.addAttribute("generi", genereService.getGeneri());
		model.addAttribute("autori", autoreService.getAutori());
		model.addAttribute("loginError", true);
		model.addAttribute("messaggio", "Username o password errati, verifica i dati o registrati");
		model.addAttribute("utente", new Utente());
		return "login";
	}

	@PostMapping("/registra")
	public String formManager(Model model, @ModelAttribute("utente") Utente utente, HttpSession session,
			@RequestParam(name = "idLibro", required = false) Integer idLibro) {
		model.addAttribute("utente", new Utente());
		utenteService.registraUtente(utente, session);
		if (idLibro == null)
			return "redirect:/riservata";
		return "redirect:/dettaglio?id=" + idLibro;
	}
}
