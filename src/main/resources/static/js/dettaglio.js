//Funzione per pulire il form di recensioni 
function pulisciFormRewiev() {
	document.getElementById("commentForm").reset();
	//per pulire anche dopo l'invio quando setto il commento
	document.getElementById("commento").value = "";
}

document.addEventListener('DOMContentLoaded', function() {
	var titles = document.querySelectorAll('.titoloDett, .sinossi-content');

	titles.forEach(function(title) {
		var randomColor = getRandomColor();
		title.style.backgroundColor = randomColor;
	});

	// Funzione per ottenere un colore casuale dalla tua lista
	function getRandomColor() {
		var colors = ['#EF7E6B', '#9AD0C3', '#F8C77A', '#98D4E1'];
		var randomIndex = Math.floor(Math.random() * colors.length);
		return colors[randomIndex];
	}
});
//FUNZIONE PER LE STELLE
(function() {
        $(document).ready(function () {
         	$('#apriPopupButton').on('click', function () {
         		$('#mioPopup').modal('show');
         	});
         
         	$('#chiudiPopupButton').on('click', function () {
         		$('#mioPopup').modal('hide');
         	});
         
         	// Inizializza il rating
         	$('#star-rating .star').click(function () {
         		var rating = $(this).data('rating');
         
         		// Rimuovi la classe 'selected' da tutte le stelle
         		$('#star-rating .star').removeClass('selected');
         
         		// Aggiungi la classe 'selected' solo alle stelle selezionate
         		$('#star-rating .star:lt(' + rating + ')').addClass('selected');
         
         		if (rating == 1) {
         			$('#rating-value').text('Hai dato ' + rating + ' punto!');
         		} else {
         			$('#rating-value').text('Hai dato ' + rating + ' punti!');
         		}
         		
         		const rankedInput = document.getElementById('ranked');
        		rankedInput.value = rating;
         	});
         
         });
})();


//FUNZIONE PER LE BIMBE
(function() {
    $(document).ready(function () {
        // Array di nomi delle immagini
        var imageNames = [
            'bimba1',
            'bimba2',
            'bimba3',
            // Aggiungi altri nomi delle immagini secondo necessità
        ];

        // Ottieni un numero casuale per selezionare un nome di immagine dal array
        var randomIndex = Math.floor(Math.random() * imageNames.length);

        // Costruisci l'URL completo dell'immagine
        var imageUrl = '/img/' + imageNames[randomIndex] + '.png';

        // Crea un nuovo elemento immagine
        var imgElement = $('#bimba');
        imgElement.attr('src', imageUrl);
    });
})();

   //FUNZIONE CHE FUNZIONA ->  da verificare 
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
         		

