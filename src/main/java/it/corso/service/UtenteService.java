package it.corso.service;
import java.util.List;
import it.corso.model.Utente;
import jakarta.servlet.http.HttpSession;

public interface UtenteService {
	void registraUtente(Utente utente, HttpSession session);
	Utente getUtenteById(int id);
	List<Utente> getClienti();
	boolean controlloLogin(String username, String password, HttpSession session);
}
