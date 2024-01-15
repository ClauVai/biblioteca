package it.corso.service;
import java.util.List;
import java.util.stream.Collectors;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import it.corso.dao.DettaglioLibroDao;
import it.corso.model.DettaglioLibro;

@Service
public class CatalogoServiceImpl implements CatalogoService {

	@Autowired
	private DettaglioLibroDao dettaglioLibroDao;

//	@Override
//	public void resetStato() {
//		dettaglioLibroDao.updateStatoToZeroForAllRecords();
//	}

	@Override
	public List<DettaglioLibro> getCatalogoDettaglio() {
		return dettaglioLibroDao.findAllByOrderByTitoloAsc();
	}

	@Override
	public List<DettaglioLibro> getByFilter(
			int autoreId,
			int genereId,
			int annoEdizione,
			int casaEditriceId,
			int linguaId) {
		List<DettaglioLibro> tuttiLibri = (List<DettaglioLibro>) dettaglioLibroDao.findAllByOrderByTitoloAsc();
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
	public List<DettaglioLibro> getLibriFiltro(Integer idGenere, Integer idAutore, Integer idCasaEditrice,
			Integer idLingua, String titolo, Boolean stato) {
		return dettaglioLibroDao.getLibriFilter(idGenere, idAutore, idCasaEditrice, idLingua, titolo, stato);
	}
}