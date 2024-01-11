package it.corso.service;
import java.time.LocalDate;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import it.corso.dao.PrenotazioneDao;
import it.corso.model.Prenotazione;

@Service
public class PrenotazioneServiceImpl implements PrenotazioneService {
	@Autowired
	PrenotazioneDao prenotazioneDao;
	@Autowired
	UtenteService utenteService;
	@Autowired
	DettaglioLibroService dettaglioLibroService;

	@Override
	public void registraPrenotazione(int libroId, int utenteId) throws Exception {
		Prenotazione prenotazione = new Prenotazione();
		prenotazione.setUtente(utenteService.getUtenteById(utenteId));
		prenotazione.setDettaglioLibro(dettaglioLibroService.getDettaglioLibro(libroId));
		prenotazione.setDataPrenotazione(LocalDate.now());
		prenotazioneDao.save(prenotazione);
	}

	@Override
	public Prenotazione getPrenotazioneById(int id) {
		return prenotazioneDao.findById(id).get();
	}

	@Override
	public List<Prenotazione> getPrenotazioniByUtenteId(int utenteId) {
		return prenotazioneDao.findByUtenteIdOrderByDataPrenotazione(utenteId);
	}
	
	@Transactional
	@Override
	public void aggiornaRestituzioneById(int prenotazioneId) {
		LocalDate data = LocalDate.now();
		prenotazioneDao.updateDataRestituzioneById(prenotazioneId, data);
	}
}
