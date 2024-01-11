package it.corso.dao;
import java.time.LocalDate;
import java.util.List;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.data.repository.query.Param;

import it.corso.model.Prenotazione;

public interface PrenotazioneDao extends CrudRepository<Prenotazione, Integer>{
	List<Prenotazione> findByUtenteIdOrderByDataPrenotazione(int id);
	@Modifying
    @Query("UPDATE Prenotazione p SET p.dataRestituzione = :dataRestituzione WHERE p.id = :id")
    void updateDataRestituzioneById(@Param("id") int prenotazioneId, @Param("dataRestituzione") LocalDate data);
}
