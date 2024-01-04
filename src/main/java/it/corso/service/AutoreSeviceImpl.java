package it.corso.service;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import it.corso.dao.AutoreDao;
import it.corso.model.Autore;


public class AutoreSeviceImpl implements AutoreService {
	@Autowired
	private AutoreDao autoreDao;
	
	public List<Autore> getAutore() {
		return (List<Autore>) autoreDao.findAllByOrderByAutoreAsc();
	}

	@Override
	public Autore getAutore(int autoreId) {
		return autoreDao.findById(autoreId).get();
	}
}

