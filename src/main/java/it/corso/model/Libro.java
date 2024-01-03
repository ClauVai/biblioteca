package it.corso.model;
import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.Table;

@Entity
@Table(name = "libri")
public class Libro
{
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;
	
	@Column(name = "titolo")
	private String titolo;
	
	@Column(name = "autore_id")
	private int autoreId;
	
	@Column(name = "genere_id")
	private int genereId;
	
	@Column(name = "ISBN")
	private String ISBN;
	
	@Column(name = "casa_editrice_id")
	private int casaEditriceId;
	
	@Column(name = "anno_edizione")
	private int annoEdizione;
	
	@Column(name = "trama")
	private String trama;
	
	@Column(name = "copertina")
	private String copertina;
	
	@Column(name = "lingua_id")
	private int linguaId;

	@Column(name = "stato")
	private boolean stato;

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getTitolo() {
		return titolo;
	}

	public void setTitolo(String titolo) {
		this.titolo = titolo;
	}

	public int getAutoreId() {
		return autoreId;
	}

	public void setAutoreId(int autoreId) {
		this.autoreId = autoreId;
	}

	public int getGenereId() {
		return genereId;
	}

	public void setGenereId(int genereId) {
		this.genereId = genereId;
	}

	public String getISBN() {
		return ISBN;
	}

	public void setISBN(String iSBN) {
		ISBN = iSBN;
	}

	public int getCasaEditriceId() {
		return casaEditriceId;
	}

	public void setCasaEditriceId(int casaEditriceId) {
		this.casaEditriceId = casaEditriceId;
	}

	public int getAnnoEdizione() {
		return annoEdizione;
	}

	public void setAnnoEdizione(int annoEdizione) {
		this.annoEdizione = annoEdizione;
	}

	public String getTrama() {
		return trama;
	}

	public void setTrama(String trama) {
		this.trama = trama;
	}

	public String getCopertina() {
		return copertina;
	}

	public void setCopertina(String copertina) {
		this.copertina = copertina;
	}

	public int getLinguaId() {
		return linguaId;
	}

	public void setLinguaId(int linguaId) {
		this.linguaId = linguaId;
	}

	public boolean isStato() {
		return stato;
	}

	public void setStato(boolean stato) {
		this.stato = stato;
	}
	
}