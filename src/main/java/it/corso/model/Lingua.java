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
@Table(name = "lingue")
public class Lingua
{
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;
	
	@Column(name = "idioma")
	private String idioma;
		
	@OneToMany(mappedBy = "lingua", cascade = CascadeType.ALL)
    private List<DettaglioLibro> dettaglioLibro;

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getIdioma() {
		return idioma;
	}

	public void setIdioma(String idioma) {
		this.idioma = idioma;
	}

	public List<DettaglioLibro> getDettaglioLibro() {
		return dettaglioLibro;
	}

	public void setDettaglioLibro(List<DettaglioLibro> dettaglioLibro) {
		this.dettaglioLibro = dettaglioLibro;
	}

	
}