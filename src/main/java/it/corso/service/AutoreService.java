package it.corso.service;
import java.util.List;
import it.corso.model.Autore;

public interface AutoreService {
	public Autore getAutore(int autoreId);
	public List<Autore> getAutori();
		
	
}
