package it.corso.controller;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import it.corso.model.DettaglioLibro;
import it.corso.service.AutoreService;
import it.corso.service.CasaEditriceService;
import it.corso.service.CatalogoService;
import it.corso.service.GenereService;
import it.corso.service.LinguaService;

// localhost:8080/catalogo
@Controller
@RequestMapping("/catalogo")
public class CatagoloController
{	
	@Autowired
	private LinguaService linguaService;
	@Autowired
	private CatalogoService catalogoService;
	@Autowired
	private CasaEditriceService casaEditriceService;
	@Autowired
	private GenereService genereService;
	@Autowired
	private AutoreService autoreService;
	List<DettaglioLibro> risultati;
	@GetMapping
	public String getPage(Model model)
	{
		model.addAttribute("risultati", catalogoService.getCatalogoDettaglio());
		addSelectFields(model);
//		catalogoService.resetStato(); //FUNZIONE TEMPORANEA, ELIMINARE IN SEGUITO!!
		return "catalogo";
	}
	
	
	@GetMapping("/autore/{id}")
	public String getByAutore(Model model, @PathVariable int id )
	{
		model.addAttribute("risultati", catalogoService.getByFilter(id, 0, 0, 0, 0));
		addSelectFields(model);
		return "catalogo";
	}
	

	@GetMapping("/genere/{id}")
	public String getByGenere(Model model, @PathVariable int id )
	{
		model.addAttribute("risultati", catalogoService.getByFilter(0, id, 0, 0, 0));
		addSelectFields(model);
		return "catalogo";
	}
	
	@GetMapping("/caseEditrici/{id}")
	public String getByEditore(Model model, @PathVariable int id )
	{
		model.addAttribute("risultati", catalogoService.getByFilter(0, 0, 0, id, 0));
		addSelectFields(model);
		return "catalogo";
	}
	
	private void addSelectFields(Model model) {
		model.addAttribute("caseEditrici", casaEditriceService.getCaseEditrici());
		model.addAttribute("generi", genereService.getGeneri());
		model.addAttribute("autori", autoreService.getAutori());
		model.addAttribute("lingue", linguaService.getLingue());
	}
	
	@PostMapping("/ricerca")
	public String getByRicerca(
			Model model, 
			@RequestParam(name="idGenere", required = false) Integer idGenere, 
			@RequestParam(name="idAutore", required = false) Integer idAutore, 
			@RequestParam(name="idCasaEditrice", required = false) Integer idCasaEditrice,
			@RequestParam(name="idLingua", required = false) Integer idLingua,
			@RequestParam(name ="titolo", required = false) String titolo,
			@RequestParam(name="stato", required = false) Boolean stato) {
		addSelectFields(model);
		model.addAttribute("idGenere", idGenere);
		model.addAttribute("idAutore", idAutore);
		model.addAttribute("idCasaEditrice", idCasaEditrice);
		model.addAttribute("idLingua", idLingua);
		model.addAttribute("titolo", titolo);
		model.addAttribute("stato", stato);
		risultati = catalogoService.getLibriFiltro(idGenere, idAutore, idCasaEditrice, idLingua, titolo, stato);
		model.addAttribute("risultati", risultati);
				return "catalogo";
	}
}