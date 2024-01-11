package it.corso.service;
import java.util.List;
import it.corso.model.Recensione;

public interface RecensioneService {	
	//mi serve poi per andare a scaricare tutte le recensioni relative a un libroID
	public List<Recensione> getRecensioniByLibroId(int libroId);
	public void registraRecensione(String commento, int utenteId, int ranked, int dettaglioLibroId);
    List<Recensione> getTopTen();
    List<Recensione> getAllFromUtente(int utenteId);

}
