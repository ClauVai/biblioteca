package it.corso.service;

import java.util.List;

import it.corso.model.Lingua;

public interface LinguaService {
	Lingua getLinguaById(int id);
	List<Lingua> getLingue();
}
