package it.corso.controller;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.GetMapping;

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