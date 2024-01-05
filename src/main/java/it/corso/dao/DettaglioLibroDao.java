package it.corso.dao;
import java.util.List;

import org.springframework.data.jpa.repository.Query;
//import org.springframework.data.jpa.repository.Query;//
import org.springframework.data.repository.CrudRepository;
import it.corso.model.DettaglioLibro;

public interface DettaglioLibroDao extends CrudRepository<DettaglioLibro, Integer>
{

	List<DettaglioLibro> findTop15ByOrderByAnnoEdizioneDesc();
	
	@Query(value = "SELECT l.titolo, l.stato, a.nome, a.cognome FROM Libro JOIN l.autore a ORDER BY RAND() LIMIT 6", nativeQuery = true)
    List<DettaglioLibro> findRandomSixLibri();
	

}