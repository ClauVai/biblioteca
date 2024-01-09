package it.corso.service;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import it.corso.dao.DettaglioLibroDao;
import it.corso.dao.RecensioneDao;
import it.corso.model.DettaglioLibro;
import it.corso.model.Recensione;
import java.util.Optional;

@Service
public class RecensioneServiceImpl implements RecensioneService {
	@Autowired
	private RecensioneDao recensioneDao;
	
	@Autowired
	private DettaglioLibroDao dettaglioLibroDao;
	
	// passo in input il commento della recensione, l'username, il ranked e l'id del libro a cui voglio associare la recensione 
	@Override
	public void registraRecensione(String commento, String username, int ranked, int dettaglioLibroId) 
		{
		Recensione recensioneDaSalvare = new Recensione();
		recensioneDaSalvare.setCommento(commento);
		recensioneDaSalvare.setRanked(ranked);
		recensioneDaSalvare.setUsername(username);
		
		// scarico dal database un dettaglilibro dando in input un dettagliolibroid
		DettaglioLibro dettaglioLibro = dettaglioLibroDao.findById(dettaglioLibroId).get();
		recensioneDaSalvare.setDettaglioLibro(dettaglioLibro);
		//recensioneDaSalvare.setLibroId(dettaglioLibroId);
		
		// controlla se esiste già una recensione associata allo stesso username e allo stesso libro 
		Optional<Recensione> esisteGiaRecensione = recensioneDao.findByUsernameAndDettaglioLibroId(username, dettaglioLibroId);
		// se esiste già allora non mi salva la nuova recensione 
		if(!esisteGiaRecensione.isPresent()) {
			recensioneDao.save(recensioneDaSalvare);
		}
		
	}

	@Override
	public List<Recensione> getRecensioniByLibroId(int libroId) {
		
		return recensioneDao.findAllByDettaglioLibroId(libroId);
	}

}
