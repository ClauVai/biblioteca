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
    document.addEventListener('DOMContentLoaded', function () {
        // Array di colori disponibili
        var colors = ["#EF7E6B", "#9AD0C3", "#edaf71", "#F58247", "#98D4E1"];

        // Seleziona tutti gli elementi con la classe "card-title"
        var titleElements = document.querySelectorAll('.titolocat');

        // Cicla attraverso gli elementi e imposta un colore casuale
        titleElements.forEach(function (element) {
            var randomColor = colors[Math.floor(Math.random() * colors.length)];
            element.style.color = randomColor;
        });
    });

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

// FUNZIONE per generare un colore casuale escludendo il nero
$(document).ready(function () {
   // Funzione per generare un colore casuale escludendo il nero
   function getRandomColor() {
      const colors = ['#EF7E6B', '#9AD0C3', '#FCDD98', '#F58247', '#98D4E1'];
      const randomColor = colors[Math.floor(Math.random() * colors.length)];

      // Escludi il colore nero
      return randomColor !== '#000000' ? randomColor : getRandomColor();
   }

   // Funzione per cambiare il colore del titolo
   function changeTitleColor() {
      $('.pro-title').each(function () {
         $(this).css('color', getRandomColor());
      });
   }

   // Call the function to change the color initially and set up an interval to change it periodically
   changeTitleColor();
   setInterval(changeTitleColor, 100000); // Cambia colore ogni 5 secondi (puoi regolare l'intervallo)

   // Mantieni il colore bianco quando il titolo è selezionato
   $('.pro-title').hover(
      function () {
         $(this).data('originalColor', $(this).css('color')); // Salva il colore originale
         $(this).css('color', 'white');
      },
      function () {
         const originalColor = $(this).data('originalColor') || getRandomColor();
         $(this).css('color', originalColor);
      }
   );
});



    
