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
@Table(name = "case_editrici")
public class CasaEditrice
{
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;
	
	@Column(name = "nome_casa")
	private String nomeCasa;

	@Column(name = "sede")
	private String sede;

	@OneToMany(mappedBy = "casaEditrice", cascade = CascadeType.ALL)
    private List<DettaglioLibro> dettaglioLibro;

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getNomeCasa() {
		return nomeCasa;
	}

	public void setNomeCasa(String nomeCasa) {
		this.nomeCasa = nomeCasa;
	}

	public String getSede() {
		return sede;
	}

	public void setSede(String sede) {
		this.sede = sede;
	}

	public List<DettaglioLibro> getDettaglioLibro() {
		return dettaglioLibro;
	}

	public void setDettaglioLibro(List<DettaglioLibro> dettaglioLibro) {
		this.dettaglioLibro = dettaglioLibro;
	}
	
	
}