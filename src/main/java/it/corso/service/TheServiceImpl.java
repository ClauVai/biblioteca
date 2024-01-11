package it.corso.service;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import it.corso.dao.TheDao;
import it.corso.model.The;

@Service
public class TheServiceImpl implements TheService {
	@Autowired
	private TheDao theDao;


	@Override
	public List<The> getThe() {
        return (List<The>) theDao.findAll();

	}

}


