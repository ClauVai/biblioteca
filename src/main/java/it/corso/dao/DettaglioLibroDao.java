package it.corso.dao;
import java.util.List;

import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
//import org.springframework.data.jpa.repository.Query;//
import org.springframework.data.repository.CrudRepository;
//import org.springframework.data.repository.query.Param;
import org.springframework.transaction.annotation.Transactional;

import it.corso.model.DettaglioLibro;

public interface DettaglioLibroDao extends CrudRepository<DettaglioLibro, Integer>
{

	List<DettaglioLibro> findTop15ByOrderByAnnoEdizioneDesc();
	
	@Query(value = "SELECT * FROM libri ORDER BY RAND() LIMIT 6", nativeQuery = true)
    List<DettaglioLibro> findRandomSixLibri();

	List<DettaglioLibro> findAllByOrderByTitoloAsc();
	
    //questo metodo trova gli ultimi 8 libri aggiunti
    @Query(value = "SELECT * FROM Libri l ORDER BY l.id DESC limit 8",  nativeQuery = true)
    List<DettaglioLibro> findUltimiOttoLibri();
    
    @Transactional
    @Modifying
    @Query(value = "UPDATE Libri l SET l.stato = false",  nativeQuery = true)
	void updateStatoToZeroForAllRecords();
    
    /*@Query(value = "SELECT * FROM Prodotti p where "
    		+ " (:fkCategoria IS NOT NULL && :fkCategoria == p.fk_categoria ) "
    		+ " AND "
    		+ " (:fkMarca IS NOT NULL && :fkMarca == p.fk_marca)"
    		+ " AND"
    		+ " (:condizione is not null && :condizione == p.condizione) ", nativeQuery = true)
    List<Prodotto> getGeneric(
    		@Param("fkCategoria") int fkCategoria,
    		@Param("fkMarca") int fkMarca,
    		@Param("condizione") String condizione
    		)*/
	

}