package it.corso.service;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import it.corso.dao.UtenteDao;
import it.corso.model.Utente;
import jakarta.servlet.http.HttpSession;

@Service
public class UtenteServiceImpl implements UtenteService {
	@Autowired
	private UtenteDao utenteDao;

	@Override
	public void registraUtente(Utente utente, HttpSession session) {
		String password = utente.getProfilo().getPassword();
		String username = utente.getProfilo().getUsername();
		Utente result = utenteDao.getUtenteFromLogin(username, password);
		if (result == null) {
			utenteDao.save(utente);
			session.setAttribute("utente", utente);
		} else {
		session.setAttribute("utente", result);}

	}

	@Override
	public Utente getUtenteById(int id) {
		return utenteDao.findById(id).get();
	}

	@Override
	public List<Utente> getClienti() {
		return (List<Utente>) utenteDao.findAll();
	}

	@Override
	public boolean controlloLogin(String username, String password, HttpSession session) {
		Utente utente = utenteDao.getUtenteFromLogin(username, password);
	    if (utente != null) {
	        session.setAttribute("utente", utente);
	        return true;
	    }
	    return false;
	}

}