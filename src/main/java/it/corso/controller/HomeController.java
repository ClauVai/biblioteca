package it.corso.controller;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import it.corso.service.AutoreService;
import it.corso.service.CasaEditriceService;
import it.corso.service.CatalogoService;
import it.corso.service.DettaglioLibroService;
import it.corso.service.GenereService;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;

// localhost:8080/home
@Controller
@RequestMapping("/index")
public class HomeController
{	
	//@Autowired
	//private DettaglioLibroService dettaglioLibroService;
	@Autowired
	private CatalogoService catalogoService;
	@Autowired
	private CasaEditriceService casaEditriceService;
	@Autowired
	private GenereService genereService;
	@Autowired
	private AutoreService autoreService;
	
	@Autowired
	private DettaglioLibroService dettaglioLibroService;
	
	@GetMapping
	public String getPage(Model model)
	{
		addSelectFields(model);
		model.addAttribute("ultimiLibri", dettaglioLibroService.getUltimiLibri());
		//model.addAttribute("preferiti", dettaglioLibroService.getPreferitiRedazione());
		return "index";
	}
	
	@GetMapping("/autore/{id}")
	public String getByAutore(Model model, @PathVariable int id )
	{
		model.addAttribute("catalogo", catalogoService.getByFilter(id, 0, 0, 0, 0));
		addSelectFields(model);
		return "catalogo";
	}
	

	@GetMapping("/genere/{id}")
	public String getByGenere(Model model, @PathVariable int id )
	{
		model.addAttribute("catalogo", catalogoService.getByFilter(0, id, 0, 0, 0));
		addSelectFields(model);
		return "catalogo";
	}
	
	@GetMapping("/caseEditrici/{id}")
	public String getByEditore(Model model, @PathVariable int id )
	{
		model.addAttribute("catalogo", catalogoService.getByFilter(0, 0, 0, id, 0));
		addSelectFields(model);
		return "catalogo";
	}
	
	private void addSelectFields(Model model) {
		model.addAttribute("caseEditrici", casaEditriceService.getCaseEditrici());
		model.addAttribute("generi", genereService.getGeneri());
		model.addAttribute("autori", autoreService.getAutori());
	}
	
}