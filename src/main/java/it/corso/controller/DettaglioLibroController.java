package it.corso.controller;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;
import it.corso.service.AutoreService;
import it.corso.service.CasaEditriceService;
import it.corso.service.DettaglioLibroService;
import it.corso.service.GenereService;
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
	
	@GetMapping
	public String getPage(Model model,
			@RequestParam(name = "id", required = true) Integer id) throws Exception
	{
		model.addAttribute("dettaglio", dettaglioLibroService.getDettaglioLibro(id));
		model.addAttribute("caseEditrici", casaEditriceService.getCaseEditrici());
		model.addAttribute("generi", genereService.getGeneri());
		model.addAttribute("autori", autoreService.getAutori());
		return "dettaglio";
	}
	
	@PostMapping("/prenota")
	public String prenota(
			@RequestParam(name = "id", required = true) int id, HttpSession session, RedirectAttributes redirectAttributes) throws Exception {
		redirectAttributes.addFlashAttribute("alert", true);
		dettaglioLibroService.prenota(id);
	    return "redirect:/dettaglio?id=" + id;
	}
	
	
	/*
	@PostMapping("/comment")
    public String handleCommentForm(@ModelAttribute CommentForm commentForm, Model model) {
        // Logica per gestire il form e salvare i dati

        // Imposta un attributo nel modello per indicare che il form è stato compilato e inviato con successo
        model.addAttribute("commentFormSubmitted", true);

        return "redirect:/pagina-del-tuo-form"; // Puoi reindirizzare l'utente ad una pagina specifica dopo l'invio del form
    }*/
}