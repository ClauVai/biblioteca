package it.corso.dao;
import java.util.List;
//import org.springframework.data.jpa.repository.Modifying;
//import org.springframework.transaction.annotation.Transactional;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.data.repository.query.Param;
import it.corso.model.DettaglioLibro;

public interface DettaglioLibroDao extends CrudRepository<DettaglioLibro, Integer>
{

	//List<DettaglioLibro> findTop15ByOrderByAnnoEdizioneDesc();
	
	@Query(value = "SELECT * FROM libri ORDER BY RAND() LIMIT 6", nativeQuery = true)
    List<DettaglioLibro> findRandomSixLibri();

	List<DettaglioLibro> findAllByOrderByTitoloAsc();
	
    //questo metodo trova gli ultimi 8 libri aggiunti
    @Query(value = "SELECT * FROM Libri l ORDER BY l.id DESC limit 8",  nativeQuery = true)
    List<DettaglioLibro> findUltimiOttoLibri();
    
//    @Transactional
//    @Modifying
//    @Query(value = "UPDATE Libri l SET l.stato = false",  nativeQuery = true)
//	void updateStatoToZeroForAllRecords();

    @Query(value = "SELECT * FROM Libri l WHERE "
    		+ "        (:idGenere IS NULL OR :idGenere = l.genere_id OR (:idGenere = 0 AND l.genere_id = 0))"
    		+ "    AND (:idAutore IS NULL OR :idAutore = l.autore_id)"
    		+ "    AND (:idCasaEditrice IS NULL OR :idCasaEditrice = l.casa_editrice_id)"
    		+ "    AND (:idLingua IS NULL OR :idLingua = l.lingua_id)"
    		+ "    AND (:titolo IS NULL OR LOWER(l.titolo) LIKE LOWER(CONCAT('%', :titolo, '%')))"
    		+ "    AND (:stato IS NULL OR :stato IS NOT NULL AND :stato = l.stato)ORDER BY l.titolo", nativeQuery = true)

    List<DettaglioLibro> getLibriFilter(
    		@Param("idGenere") Integer idGenere, 
    		@Param("idAutore") Integer idAutore,
            @Param("idCasaEditrice") Integer idCasaEditrice, 
            @Param("idLingua") Integer idLingua,
            @Param("titolo") String titolo, 
            @Param("stato") Boolean stato);

}