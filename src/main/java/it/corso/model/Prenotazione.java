package it.corso.model;

import java.time.LocalDate;

import jakarta.persistence.CascadeType;
import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.ManyToOne;
import jakarta.persistence.Table;

@Entity
@Table(name = "prenotazioni")
public class Prenotazione {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;
	@Column(name = "data_prenotazione")
	private LocalDate dataPrenotazione;
	@Column(name = "data_restituzione")
	private LocalDate dataRestituzione;
	@ManyToOne(cascade = CascadeType.REFRESH)
	@JoinColumn(name = "utente_id", referencedColumnName = "id")
	private Utente utente;
	@ManyToOne(cascade = CascadeType.REFRESH)
	@JoinColumn(name = "libro_id", referencedColumnName = "id")
	private DettaglioLibro dettaglioLibro;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public LocalDate getDataPrenotazione() {
		return dataPrenotazione;
	}
	public void setDataPrenotazione(LocalDate dataPrenotazione) {
		this.dataPrenotazione = dataPrenotazione;
	}
	public LocalDate getDataRestituzione() {
		return dataRestituzione;
	}
	public void setDataRestituzione(LocalDate dataRestituzione) {
		this.dataRestituzione = dataRestituzione;
	}
	public Utente getUtente() {
		return utente;
	}
	public void setUtente(Utente utente) {
		this.utente = utente;
	}
	public DettaglioLibro getDettaglioLibro() {
		return dettaglioLibro;
	}
	public void setDettaglioLibro(DettaglioLibro dettaglioLibro) {
		this.dettaglioLibro = dettaglioLibro;
	}
}
