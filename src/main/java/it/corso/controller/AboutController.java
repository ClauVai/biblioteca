package it.corso.controller;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import it.corso.service.AutoreService;
import it.corso.service.CasaEditriceService;
import it.corso.service.GenereService;
import org.springframework.web.bind.annotation.GetMapping;

// localhost:8080/home
@Controller
@RequestMapping("/about")
public class AboutController
{	

	@Autowired
	private CasaEditriceService casaEditriceService;
	@Autowired
	private GenereService genereService;
	@Autowired
	private AutoreService autoreService;
	
	@GetMapping
	public String getPage(Model model)
	{
		model.addAttribute("caseEditrici", casaEditriceService.getCaseEditrici());
		model.addAttribute("generi", genereService.getGeneri());
		model.addAttribute("autori", autoreService.getAutori());
		return "about";
	}
	
}