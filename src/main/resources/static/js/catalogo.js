function pulisciForm() {
	document.getElementById('genereSelect').selectedIndex = 0;
	document.getElementById('autoreSelect').selectedIndex = 0;
	document.getElementById('casaSelect').selectedIndex = 0;
	document.getElementById('linguaSelect').selectedIndex = 0;
	document.getElementById('titolo').value = '';
	document.getElementById('statoDisp').checked = false;
	document.getElementById('statoNonDisp').checked = false;
}
function validaLunghezzaTitolo() {
	var titoloInput = document.getElementById('titolo');
	var titoloValue = titoloInput.value.trim(); // Rimuovi eventuali spazi vuoti all'inizio e alla fine

	if (titoloValue.length > 0 && titoloValue.length < 2) {
		return false; // Restituisci false se la lunghezza non è valida
	}

	return true; // Restituisci true se la lunghezza è valida
}
function gestisciRicerca() {
	// Chiamata alla funzione di validazione del titolo
	if (!validaLunghezzaTitolo()) {
		alert("Il titolo deve contenere almeno 2 caratteri.");
		return false; // Impedisci l'invio del modulo se la validazione fallisce
	}
	return true; // Consenti l'invio del modulo se tutte le validazioni sono passate
}

document.addEventListener('DOMContentLoaded', function() {
	var titles = document.querySelectorAll('.pro-title');

	titles.forEach(function(title) {
		title.addEventListener('mouseover', function() {
			var randomColor = getRandomColor();
			title.style.backgroundColor = randomColor;
		});

		title.addEventListener('mouseout', function() {
			title.style.backgroundColor = ''; // Resetta il colore di sfondo
		});
	});

	// Funzione per ottenere un colore casuale dalla tua lista
	function getRandomColor() {
		var colors = ['#EF7E6B', '#9AD0C3', '#FCDD98', '#F58247', '#98D4E1'];
		var randomIndex = Math.floor(Math.random() * colors.length);
		return colors[randomIndex];
	}
});
