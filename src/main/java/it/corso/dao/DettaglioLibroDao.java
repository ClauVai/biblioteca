package it.corso.dao;
import java.util.List;

//import org.springframework.data.jpa.repository.Query;//
import org.springframework.data.repository.CrudRepository;
import it.corso.model.DettaglioLibro;

public interface DettaglioLibroDao extends CrudRepository<DettaglioLibro, Integer>
{

	List<DettaglioLibro> findTop15ByOrderByAnnoEdizioneDesc();
	
	//@Query(value = "SELECT * FROM Libro ORDER BY RAND() LIMIT 5", nativeQuery = true)//
    //List<DettaglioLibro> findRandomLibri();//
	

}