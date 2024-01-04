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
@Table(name = "generi")
public class Genere
{
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;
	
	@Column(name = "nome_genere")
	private String nomeGenere;

	@OneToMany(mappedBy = "genere", cascade = CascadeType.ALL)
    private List<DettaglioLibro> dettaglioLibro;

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getNomeGenere() {
		return nomeGenere;
	}

	public void setNomeGenere(String nomeGenere) {
		this.nomeGenere = nomeGenere;
	}

	public List<DettaglioLibro> getDettaglioLibro() {
		return dettaglioLibro;
	}

	public void setDettaglioLibro(List<DettaglioLibro> dettaglioLibro) {
		this.dettaglioLibro = dettaglioLibro;
	}
	
	
	
}