package it.corso.controller;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import it.corso.service.AutoreService;
import it.corso.service.CasaEditriceService;
import it.corso.service.DettaglioLibroService;
import it.corso.service.GenereService;
import it.corso.service.RecensioneService;
import it.corso.service.TheService;

import org.springframework.web.bind.annotation.GetMapping;

// localhost:8080/home
@Controller
@RequestMapping("/")
public class HomeController
{	
	//@Autowired
	//private DettaglioLibroService dettaglioLibroService;
	@Autowired
	private CasaEditriceService casaEditriceService;
	@Autowired
	private GenereService genereService;
	@Autowired
	private AutoreService autoreService;
	@Autowired
	private DettaglioLibroService dettaglioLibroService;
	@Autowired
	private RecensioneService recensioneService;
	@Autowired
	private TheService theService;

	@GetMapping
	public String getPage(Model model)
	{
		model.addAttribute("caseEditrici", casaEditriceService.getCaseEditrici());
		model.addAttribute("generi", genereService.getGeneri());
		model.addAttribute("autori", autoreService.getAutori());
		model.addAttribute("ultimiLibri", dettaglioLibroService.getUltimiLibri());
		model.addAttribute("preferiti", dettaglioLibroService.getPreferitiRedazione());
		model.addAttribute("recensioni", recensioneService.getTopTen());
		model.addAttribute("the", theService.getThe());
		// System.out.println("recensioni" + recensioneService.getTopTen().size());

	  // System.out.println("the" + theService.getThe(1).size());

		return "index";
	}
	
}