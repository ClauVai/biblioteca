package it.corso.service;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import it.corso.dao.CasaEditriceDao;
import it.corso.model.CasaEditrice;

@Service
public class CasaEditriceServiceImpl implements CasaEditriceService {
	@Autowired
	private CasaEditriceDao casaEditriceDao;
	
	@Override
	public List<CasaEditrice> getCaseEditrici() {
		return casaEditriceDao.findAllByOrderByNomeCasaAsc();
	}

}
