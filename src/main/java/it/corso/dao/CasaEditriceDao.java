package it.corso.dao;
import java.util.List;
import org.springframework.data.repository.CrudRepository;
import it.corso.model.CasaEditrice;

public interface CasaEditriceDao extends CrudRepository<CasaEditrice, Integer>{
	List<CasaEditrice> findAllByOrderByNomeCasaAsc();
}
