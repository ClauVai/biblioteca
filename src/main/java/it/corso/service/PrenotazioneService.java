package it.corso.service;
import java.util.List;
import it.corso.model.Prenotazione;

public interface PrenotazioneService {
	void registraPrenotazione(int libroId, int utenteId) throws Exception;
	void aggiornaRestituzioneById(int prenotazioneId);
	Prenotazione getPrenotazioneById(int id);
	public List<Prenotazione> getPrenotazioniByUtenteId(int utenteId);
}
