


//funzione carosello CHE NON FUNZIONA
/*(function() {
	var swiper = new Swiper(".mySwiper", {
            slidesPerView: 1,
            spaceBetween: 10,
            pagination: {
                el: ".swiper-pagination",
                clickable: true,
            },
            navigation: {
                nextEl: ".swiper-button-next",
                prevEl: ".swiper-button-prev",
            },
            autoplay: {
                delay: 5000,
                // Tempo di attesa tra le slide in millisecondi (in questo caso, 5 secondi)
            },
            breakpoints: {
                640: {
                    slidesPerView: 2,
                    spaceBetween: 20,
                },
                960: {
                    slidesPerView: 3,
                    spaceBetween: 40,
                },
                1024: {
                    slidesPerView: 5,
                    spaceBetween: 50,
                },
            },
        });
 })();*/
    
    
    
   //FUNZIONE CHE FUNZIONA
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