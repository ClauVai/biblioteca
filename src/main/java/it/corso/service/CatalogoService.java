package it.corso.service;
import java.util.List;

import it.corso.model.DettaglioLibro;

public interface CatalogoService
{
	public void resetStato();
	public List<DettaglioLibro> getCatalogoDettaglio();
	public List<DettaglioLibro> getByFilter(
			int autoreId,
			int genereId,
			int annoEdizione,
			int casaEditriceId,
			int linguaId) ;

	
}