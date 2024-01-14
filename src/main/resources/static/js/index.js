    		
    document.addEventListener('DOMContentLoaded', function () {
        // Array di colori disponibili
        var colors = ["#EF7E6B", "#9AD0C3", "#edaf71", "#F58247", "#98D4E1"];

        // Seleziona tutti gli elementi con la classe "card-title"
        var titleElements = document.querySelectorAll('.card-title');

        // Cicla attraverso gli elementi e imposta un colore casuale
        titleElements.forEach(function (element) {
            var randomColor = colors[Math.floor(Math.random() * colors.length)];
            element.style.color = randomColor;
        });
    });
    
    
 // Script jQuery per inizializzare i carousel -->
  document.addEventListener('DOMContentLoaded', function() {
    // PRIMO SCRIPT
		new Swiper(".mySwiper", {
        slidesPerView: 1,
        spaceBetween: 2,
        loop: true,
        loopedSlides: 20,
   /*     pagination: {
            el: ".swiper-pagination",
            clickable: true,
        },   */
        navigation: {
            nextEl: ".swiper-button-next",
            prevEl: ".swiper-button-prev",
        },
        autoplay: {
            delay: 2000,
        },
        breakpoints: {
            768: {
                slidesPerView: 2,
            },
            990: {
                slidesPerView: 3,
            },
            1400: {
                slidesPerView: 4,
            },
        },
    });
});

    
     