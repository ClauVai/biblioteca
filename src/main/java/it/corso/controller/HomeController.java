package it.corso.controller;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;

import it.corso.service.DettaglioLibroService;


// localhost:8080/home
@Controller
@RequestMapping("/index")
public class HomeController
{
	
	@GetMapping
	public String getPage()
	{
		return "index";
	}
	
}