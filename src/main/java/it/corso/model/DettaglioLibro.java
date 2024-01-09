package it.corso.model;
import java.util.List;

import jakarta.persistence.CascadeType;
import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.ManyToOne;
import jakarta.persistence.OneToMany;
import jakarta.persistence.Table;

@Entity
@Table(name = "libri")
public class DettaglioLibro
{
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;
	
	@Column(name = "titolo")
	private String titolo;
	
	// per ogni libro c'è un autore che devi andare a pescare dalla tabella autore
	@ManyToOne
    @JoinColumn(name = "autore_id", referencedColumnName = "id")
    private Autore autore;
	
	@ManyToOne
	@JoinColumn(name = "genere_id", referencedColumnName = "id")
    private Genere genere;
	
	@Column(name = "ISBN")
	private String ISBN;
	
	@ManyToOne
    @JoinColumn(name = "casa_editrice_id", referencedColumnName = "id")
    private CasaEditrice casaEditrice;
	
	@Column(name = "anno_edizione")
	private int annoEdizione;
	
	@Column(name = "trama")
	private String trama;
	
	// ricorda di convertire in immagine
	@Column(name = "copertina")
	private String copertina;
	
	@ManyToOne
    @JoinColumn(name = "lingua_id", referencedColumnName = "id")
    private Lingua lingua;
	
	@OneToMany(mappedBy = "dettaglioLibro", cascade = CascadeType.ALL)
    private List<Recensione> recensioni;
	
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

	public String getISBN() {
		return ISBN;
	}

	public void setISBN(String iSBN) {
		ISBN = iSBN;
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


	public boolean isStato() {
		return stato;
	}

	public void setStato(boolean stato) {
		this.stato = stato;
	}

	public Autore getAutore() {
		return autore;
	}

	public void setAutore(Autore autore) {
		this.autore = autore;
	}

	public Genere getGenere() {
		return genere;
	}

	public void setGenere(Genere genere) {
		this.genere = genere;
	}

	public CasaEditrice getCasaEditrice() {
		return casaEditrice;
	}

	public void setCasaEditrice(CasaEditrice casaEditrice) {
		this.casaEditrice = casaEditrice;
	}

	public Lingua getLingua() {
		return lingua;
	}

	public void setLingua(Lingua lingua) {
		this.lingua = lingua;
	}
	
	
	
}