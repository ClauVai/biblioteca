package it.corso.dao;
import java.util.List;
import org.springframework.data.repository.CrudRepository;
import it.corso.model.Genere;

public interface GenereDao extends CrudRepository<Genere, Integer>{
	List<Genere> findAllByOrderByNomeGenereAsc();
}
