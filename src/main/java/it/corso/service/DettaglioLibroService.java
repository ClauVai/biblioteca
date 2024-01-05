package it.corso.service;
import java.util.List;
import it.corso.model.DettaglioLibro;

public interface DettaglioLibroService
{
	public DettaglioLibro getDettaglioLibro(int libroId) throws Exception;

	public void prenota(int id) throws Exception;

	List<DettaglioLibro> getUltimiUsciti();

	//List<DettaglioLibro> getSceltaRedazione();//
	
}