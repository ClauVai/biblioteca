package it.corso.service;
import java.util.List;
import it.corso.model.DettaglioLibro;

public interface DettaglioLibroService
{
	DettaglioLibro getDettaglioLibro(int libroId) throws Exception;

	void prenota(int id) throws Exception;

	List<DettaglioLibro> getUltimiUsciti();

	List<DettaglioLibro> getPreferitiRedazione();
	
}