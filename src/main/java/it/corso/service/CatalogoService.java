package it.corso.service;
import java.util.List;

import it.corso.model.DettaglioLibro;

public interface CatalogoService
{
//	void resetStato();
	List<DettaglioLibro> getCatalogoDettaglio();
	List<DettaglioLibro> getByFilter(
			int autoreId,
			int genereId,
			int annoEdizione,
			int casaEditriceId,
			int linguaId) ;
    
    List<DettaglioLibro> getLibriFiltro(Integer idGenere, Integer idAutore, Integer idCasaEditrice, Integer idLingua, String titolo, Boolean stato);
}