package it.corso.service;
import java.util.List;
import it.corso.model.Genere;

public interface GenereService {
	public List<Genere> getGeneri();
	public Genere getGenereById(int genereId);
}
