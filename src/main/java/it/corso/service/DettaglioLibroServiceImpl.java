package it.corso.service;
import java.util.List;
import java.util.stream.Collectors;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import it.corso.dao.DettaglioLibroDao;
import it.corso.model.DettaglioLibro;

@Service
public class DettaglioLibroServiceImpl implements DettaglioLibroService
{
	@Autowired
	private DettaglioLibroDao dettaglioLibroDao;

	@Override
	public DettaglioLibro getDettaglioLibro(int libroId) throws Exception {
		
		// è un optional, perchè potrebbe esistere o meno il dettaglioLibro scaricato dal DB
		java.util.Optional<DettaglioLibro> optionalDettaglioLibro = dettaglioLibroDao.findById(libroId);
		
		if(optionalDettaglioLibro.isPresent()) {
			return optionalDettaglioLibro.get();
		} else {
			throw new Exception("Dettaglio del libro non trovati!");
		}
		
	}
	
	public List<DettaglioLibro> getByFilter(
			int autoreId,
			int genereId,
			int annoEdizione,
			int casaEditriceId,
			int linguaId) {
		List<DettaglioLibro> tuttiLibri = (List<DettaglioLibro>) dettaglioLibroDao.findAll();
		// Applica i filtri
        List<DettaglioLibro> libriFiltrati = tuttiLibri.stream()
                .filter(libro ->
                		// filtra per autore se autore è inserito
                        (autoreId == 0 || libro.getAutore().getId() == autoreId) &&
                        // filtra per genere se genere è inserito
                        (genereId == 0 || libro.getGenere().getId() == genereId) &&
                        // filtra per anno di pubblicazione se inserito
                        (annoEdizione == 0 || libro.getAnnoEdizione() == (annoEdizione)) &&
                        // filtra per casa editrice se inserito
                        (casaEditriceId == 0 || libro.getCasaEditrice().getId() == casaEditriceId) && 
                        (linguaId == 0 || libro.getLingua().getId() == linguaId)
                )
                .collect(Collectors.toList());

        return libriFiltrati;
    }

	@Override
	public List<DettaglioLibro> getPreferitiRedazione() {
		return dettaglioLibroDao.findRandomSixLibri();
	}
	


	@Override
	public List<DettaglioLibro> getUltimiLibri() {
		return dettaglioLibroDao.findUltimiOttoLibri();
	}

}