package it.corso.dao;
import java.util.List;
import java.util.Optional;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import it.corso.model.Recensione;

public interface RecensioneDao extends CrudRepository<Recensione, Integer>{	
	//mi serve per verificare se una recensione esiste già controllando l'username e dettagliolibri id 
	Optional<Recensione> findByUtenteIdAndDettaglioLibroId(int utenteId, int dettaglioLibroId);

	List<Recensione> findAllByDettaglioLibroId(int dettaglioLibroId);
	
	@Query(value = "SELECT r.*,l.copertina , AVG(r.ranked) AS mediaRecensioni " +
	        "FROM Recensioni r " +
	        "JOIN Libri l ON r.libro_id = l.id " +
	        "GROUP BY r.libro_id " +
	        "ORDER BY AVG(r.ranked) DESC " + 
	        "LIMIT 10", nativeQuery = true)
	List<Recensione> getTopTen();
	List<Recensione> findByUtenteId(int id);
}

