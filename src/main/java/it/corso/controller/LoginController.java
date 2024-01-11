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
import it.corso.service.UtenteService;
import jakarta.servlet.http.HttpSession;

//nuoba pagina per login (Maria Elena non odiarmi!)
@Controller
@RequestMapping("/login")
public class LoginController {
	@Autowired
	private UtenteService utenteService;

	@GetMapping
	public String getPage(Model model, HttpSession session) {
		if (session.getAttribute("utente") != null)
			return "redirect:/riservata";
		model.addAttribute("utente", new Utente());
		return "login";
	}

	@PostMapping("/accedi")
	public String formManager(Model model, @RequestParam("username") String username,
			@RequestParam("password") String password, HttpSession session) {
		if (utenteService.controlloLogin(username, password, session)) {
			model.addAttribute("loginError", true);
			return "redirect:/riservata";
		}
		model.addAttribute("loginError", false);
		return "login";
	}

	@PostMapping("/registra")
	public String formManager(Model model, @ModelAttribute("utente") Utente utente, HttpSession session) {
		model.addAttribute("utente", new Utente());
		utenteService.registraUtente(utente, session);
		return "redirect:/riservata";
	}
}
