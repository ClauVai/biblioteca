//funzione navbar 
    
      document.addEventListener("DOMContentLoaded", function() {
        // Nascondi tutte le viste secondarie inizialmente
        document.querySelectorAll('.navbar.secondary').forEach(function(view) {
            view.style.display = 'none';
        });

        // Funzione per gestire il cambio tra le viste
        function showView(viewId) {
            // Nascondi tutte le viste secondarie
            document.querySelectorAll('.navbar.secondary').forEach(function(view) {
                view.style.display = 'none';
            });

            // Mostra la vista corrente
            var currentView = document.querySelector('[data-subnav-id="' + viewId + '"]');
            if (currentView) {
                currentView.style.display = 'block';
            }

            // Nascondi l'elemento principale
            var mainView = document.querySelector('.navbar.main');
            if (mainView) {
                mainView.style.display = 'none';
            }
        }

        // Aggiungi l'attributo data-action ai link principali
        document.querySelectorAll('.navbar.main a[data-subnav-target-id]').forEach(function(link) {
            link.addEventListener('click', function(event) {
                var targetId = link.getAttribute('data-subnav-target-id');
                showView(targetId);

                // Impedisci il comportamento predefinito del link
                event.preventDefault();
            });
        });

        // Aggiungi l'attributo data-action ai link di ritorno
        document.querySelectorAll('.navbar.secondary a.tornaIndietro').forEach(function(link) {
            link.addEventListener('click', function(event) {
                // Nascondi tutte le viste secondarie
                document.querySelectorAll('.navbar.secondary').forEach(function(view) {
                    view.style.display = 'none';
                });

                // Mostra l'elemento principale
                var mainView = document.querySelector('.navbar.main');
                if (mainView) {
                    mainView.style.display = 'block';
                }

                // Impedisci il comportamento predefinito del link
                event.preventDefault();
            });
        });
    });
    
// FUNZIONE per cambiare il colore dello stato
function changeStatusColor(element) {
    var status = $(element).data('status');
    var color = (status === 'disponibile') ? 'green' : 'red';
    $(element).css('color', color);

    // Cambia lo stato
     var newStatus = (status === 'disponibile') ? 'non-disponibile' : 'disponibile';
     $(element).data('status', newStatus);
}
    

    