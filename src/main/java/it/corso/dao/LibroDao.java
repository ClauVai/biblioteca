package it.corso.dao;
import java.util.List;

import org.springframework.data.repository.CrudRepository;

import it.corso.model.Libro;

public interface LibroDao extends CrudRepository<Libro, Integer>
{
	// questo metodo ti scarica tutti i libri ordinando in ordine ascendente per titolo
	List<Libro> findAllByOrderByTitoloAsc();

}