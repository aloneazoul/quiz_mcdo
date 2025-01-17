<!DOCTYPE html>
<html lang="fr">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>McDo - Quiz</title>
    <link href="./assets/bootstrap-5.3.3-dist/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="./css/style.css"> <!-- Ton fichier CSS -->
    <link rel="stylesheet" href="./css/icon/fontawesome-free-6.4.2-web/css/all.min.css"><!--lien pour pourvoir mettre des icons-->
    <link rel="icon" type="image/png" href="./images/Logo.png">
</head>

<body>
    <header>
        <div class="container-fluid">
            <div class="row">
                <div class="col-md-1 offset-md-2">
                    <img src="./images/Logo.png" alt="Logo mcdo">
                </div>
            </div>
        </div>
    </header>
    <main>
        <div class="container-fluid">
            <div class="row">
                <div class="col-md-auto offset-md-2">
                    <h1>Choisissez votre restaurant :</h1>
                </div>
            </div>

            <div class="row mb-4">
                <div class="col-md-8 mx-auto">
                    <div class="input-group">
                        <input type="search" class="form-control custom-search" placeholder="Ex : Saint-Just-en-Chaussée" aria-label="Recherche">
                        <button class="btn search-btn" type="button">
                            <i class="fas fa-search"></i>
                        </button>
                    </div>
                </div>
            </div>

            <div class="resto-name">
                {foreach from=$restos item=resto}
                    <div class="row mt-3">
                        <div class="col-md-7 offset-md-2">
                            <button class="custom-button white-button text-start">
                                {$resto.code_postale} {$resto.ville}, {$resto.num_rue} {$resto.rue} 
                            </button>
                        </div>
                    </div>
                {/foreach}
            </div>
        </div>
        <footer class="footer mt-5">
            <div class="container-fluid">
                <div class="row">
                    <div class="col-md-3 offset-md-2">
                        <h5>Contact</h5>
                        <ul class="list-unstyled">
                            <li><i class="fas fa-phone"></i> +33 7 83 83 90 10</li>
                            <li><i class="fas fa-envelope"></i> aloneazoul23@gmail.com</li>
                            <li><p>Créateur du site : Alone Azoulay</p></li>
                        </ul>
                    </div>
                    <div class="col-md-3">
                        <h5>Support technique</h5>
                        <ul class="list-unstyled">
                            <li><a href="/help">Assistance technique</a></li>
                            <li><a href="/contact-support">Contacter le support</a></li>
                        </ul>
                    </div>
                    <div class="col-md-3">
                        <h5>Vos suggestions</h5>
                        <ul class="list-unstyled">
                            <li><a href="/feedback">Donner votre avis</a></li>
                            <li><a href="/survey">Compléter notre enquête</a></li>
                        </ul>
                    </div>                                
                    <div class="row">
                        <div class="col text-center">
                            <p style="color: #F0E1C6;">&copy; 2025 McDonald's - Tous droits réservés</p>
                        </div>
                    </div>
                </div>
            </div>
        </footer>
    </main>
    <script>
        document.addEventListener('DOMContentLoaded', function() {
            const searchInput = document.querySelector('.custom-search');
            const buttons = document.querySelectorAll('.custom-button');

            searchInput.addEventListener('input', function() {
                const searchValue = searchInput.value.toLowerCase();

                buttons.forEach(button => {
                    const restoText = button.textContent.toLowerCase();
                    if (restoText.includes(searchValue)) {
                        button.parentElement.parentElement.style.display = '';
                    } else {
                        button.parentElement.parentElement.style.display = 'none';
                    }
                });
            });
        });
        </script>

</body>
</html>
