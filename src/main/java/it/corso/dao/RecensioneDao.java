package it.corso.dao;
import java.util.List;
import java.util.Optional;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;

import it.corso.model.Recensione;

public interface RecensioneDao extends CrudRepository<Recensione, Integer>{
//	List<Recensione> findAllByOrderById();
	
	//mi serve per verificare se una recensione esiste già controllando l'username e dettagliolibri id 
	Optional<Recensione> findByUsernameAndDettaglioLibroId(String username, int dettaglioLibroId);

	List<Recensione> findAllByDettaglioLibroId(int dettaglioLibroId);
	
    
    @Query(value = "SELECT r.* FROM recensioni r " +
            "JOIN libri l ON r.libro_id = l.id " +
            "ORDER BY r.ranked DESC LIMIT 10",  nativeQuery = true)
	List<Recensione> getTopTen();
}

