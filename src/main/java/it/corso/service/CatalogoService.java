package it.corso.service;
import java.util.List;

import it.corso.model.DettaglioLibro;
import it.corso.model.Libro;

public interface CatalogoService
{
	public List<Libro> getCatalogo();
	public void resetStato();
	public List<Libro> getLastFive();
	public List<DettaglioLibro> getCatalogoDettaglio();

	
}