package it.corso.controller;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import it.corso.service.DettaglioLibroService;
import jakarta.servlet.http.HttpSession;

// localhost:8080/dettaglio
@Controller
@RequestMapping("/dettaglio")
public class DettaglioLibroController
{
	@Autowired
	private DettaglioLibroService dettaglioLibroService;
	
	@GetMapping
	public String getPage(Model model,
			@RequestParam(name = "id", required = true) Integer id) throws Exception
	{
		model.addAttribute("dettaglio", dettaglioLibroService.getDettaglioLibro(id));
		return "dettaglio";
	}
	
	@PostMapping("/prenota")
	public String prenota(
			@RequestParam(name = "id", required = true) int id, HttpSession session, RedirectAttributes redirectAttributes) throws Exception {
		redirectAttributes.addFlashAttribute("alert", true);
		dettaglioLibroService.prenota(id);
	    return "redirect:/dettaglio?id=" + id;
	}
	
}