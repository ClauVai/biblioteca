package it.corso.controller;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import it.corso.service.CatalogoService;

// localhost:8080/catalogo
@Controller
@RequestMapping("/catalogo")
public class CatagoloController
{
	@Autowired
	private CatalogoService catalogoService;
	
	@GetMapping
	public String getPage(Model model)
	{
		model.addAttribute("catalogo", catalogoService.getCatalogoDettaglio());
		catalogoService.resetStato(); //FUNZIONE TEMPORANEA, ELIMINARE IN SEGUITO!!
		return "catalogo";
	}
	
	
	@GetMapping("/autore/{id}")
	public String getByAutore(Model model, @PathVariable int id )
	{
		model.addAttribute("catalogo", catalogoService.getByFilter(id, 0, 0, 0, 0));
		return "catalogo";
	}

}