package it.corso.dao;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.data.repository.query.Param;

import it.corso.model.Utente;

public interface UtenteDao extends CrudRepository<Utente, Integer>{
	@Query(value = "SELECT u.* FROM utenti u JOIN profili p ON u.profilo_id = p.id WHERE p.username = :username AND p.password = :password", nativeQuery = true)
	Utente getUtenteFromLogin(@Param("username") String username, @Param("password") String password);

	}
