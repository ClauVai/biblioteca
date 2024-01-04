package it.corso.model;
import java.util.List;
import jakarta.persistence.CascadeType;
import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.OneToMany;
import jakarta.persistence.Table;

@Entity
@Table(name = "autori")
public class Autore
{
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;
	
	@Column(name = "nome_autore")
	private String nomeAutore;
	
	@Column(name = "cognome")
	private String cognome;

	@Column(name = "biografia")
	private String biografia;
	
	@OneToMany(mappedBy = "autore", cascade = CascadeType.ALL)
    private List<DettaglioLibro> dettaglioLibro;

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getNomeAutore() {
		return nomeAutore;
	}

	public void setNomeAutore(String nomeAutore) {
		this.nomeAutore = nomeAutore;
	}

	public String getCognome() {
		return cognome;
	}

	public void setCognome(String cognome) {
		this.cognome = cognome;
	}

	public String getBiografia() {
		return biografia;
	}

	public void setBiografia(String biografia) {
		this.biografia = biografia;
	}

	public List<DettaglioLibro> getDettaglioLibro() {
		return dettaglioLibro;
	}

	public void setDettaglioLibro(List<DettaglioLibro> dettaglioLibro) {
		this.dettaglioLibro = dettaglioLibro;
	}
	
	
}