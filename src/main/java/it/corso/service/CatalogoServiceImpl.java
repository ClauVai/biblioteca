package it.corso.service;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import it.corso.dao.LibroDao;
import it.corso.model.Libro;

@Service
public class CatalogoServiceImpl implements CatalogoService
{
	@Autowired
	private LibroDao libroDao;
	
	public List<Libro> getCatalogo() {
		// findAll torna un insieme di libri che castiamo a lista per facilitarne l'utilizzo
		return libroDao.findAllByOrderByTitoloAsc();
	}

	@Override
	public void resetStato() {
		libroDao.updateStatoToZeroForAllRecords();		
	}

	@Override
	public List<Libro> getLastFive() {
		return libroDao.findTop5ByOrderByIdDesc();
	}
	
}