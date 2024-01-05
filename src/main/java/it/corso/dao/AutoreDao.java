package it.corso.dao;

import java.util.List;

import org.springframework.data.repository.CrudRepository;

import it.corso.model.Autore;

public interface AutoreDao extends CrudRepository<Autore, Integer>
{

	List<Autore> findAllByOrderByCognomeAsc();

}