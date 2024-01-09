package it.corso.dao;

import java.util.List;

import org.springframework.data.repository.CrudRepository;

import it.corso.model.Lingua;

public interface LinguaDao extends CrudRepository<Lingua, Integer> {
	List<Lingua> findAllByOrderByIdiomaAsc();
}
