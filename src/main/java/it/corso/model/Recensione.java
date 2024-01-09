package it.corso.model;
import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.ManyToOne;
import jakarta.persistence.Table;

@Entity
@Table(name = "recensioni")
public class Recensione
{
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;
	
	@Column(name = "username")
	private String username;
	
	@Column(name = "ranked")
	private int ranked;

	@Column(name = "commento")
	private String commento;
	
	//sta roba miserabile l'ha fatta il server perchè sennò mi riconosce libro_id duplicato 
	// @Column(name = "libro_id", insertable = false, updatable = false)
	// private int libroId;
	
	@ManyToOne
    @JoinColumn(name = "libro_id", referencedColumnName = "id")
    private DettaglioLibro dettaglioLibro;
	
	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public int getRanked() {
		return ranked;
	}

	public void setRanked(int ranked) {
		this.ranked = ranked;
	}

	public String getCommento() {
		return commento;
	}

	public void setCommento(String commento) {
		this.commento = commento;
	}
	
//	public int getLibroId() {
//		return libroId;
//	}
//
//	public void setLibroId(int libroId) {
//		this.libroId = libroId;
//	}

	public DettaglioLibro getDettaglioLibro() {
		return dettaglioLibro;
	}

	public void setDettaglioLibro(DettaglioLibro dettaglioLibro) {
		this.dettaglioLibro = dettaglioLibro;
	}
	
	
	
}