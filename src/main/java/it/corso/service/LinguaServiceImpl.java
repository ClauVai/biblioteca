package it.corso.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import it.corso.dao.LinguaDao;
import it.corso.model.Lingua;
	@Service
public class LinguaServiceImpl implements LinguaService {
	@Autowired
	private LinguaDao linguaDao;
	
	@Override
	public Lingua getLinguaById(int linguaId) {
		return linguaDao.findById(linguaId).get();
	}

	@Override
	public List<Lingua> getLingue() {
		return linguaDao.findAllByOrderByIdiomaAsc();
	}

}
