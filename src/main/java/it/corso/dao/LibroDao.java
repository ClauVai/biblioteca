package it.corso.dao;
import java.util.List;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.transaction.annotation.Transactional;
import it.corso.model.Libro;

public interface LibroDao extends CrudRepository<Libro, Integer>
{
	// questo metodo ti scarica tutti i libri ordinando in ordine ascendente per titolo
	List<Libro> findAllByOrderByTitoloAsc();
	
    @Transactional
    @Modifying
    @Query("UPDATE Libro l SET l.stato = false")
	void updateStatoToZeroForAllRecords();

}