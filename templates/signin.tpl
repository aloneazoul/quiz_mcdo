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
        <div class="container-fluid"> <!-- container-fluid pour étendre toute la largeur -->
            <div class="row">
                <div class="col-md-1 offset-md-2"> <!-- Décale l'élément de 2 colonnes vers la droite -->
                    <img src="./images/Logo.png" alt="Logo mcdo">
                </div>
            </div>
        </div>
    </header>
    <main>
        <div class="container-fluid">
            <div class="row"> <!--Titre-->
                <div class="col-md-auto offset-md-2">
                    <h1>Qui êtes-vous ?</h1>
                </div>
            </div>

            <div class="row mb-3"> <!--Searchbar-->
                <!-- Décalage de 2 colonnes pour commencer à partir de la colonne 2 -->
                <div class="col-md-6 offset-md-2"> <!-- La barre de recherche occupe 7 colonnes avec un offset de 2 colonnes -->
                    <div class="input-group w-100">
                        <!-- Champ de recherche -->
                        <input type="search" class="form-control custom-search" placeholder="Ex : Alone Azoulay" aria-label="Recherche">
                        <!-- Bouton de recherche (icône de loupe) -->
                        <button class="btn search-btn" type="button">
                            <i class="fas fa-search"></i>
                        </button>
                    </div>
                </div>
                <div class="col-md-2 p-0"> <!-- Le bouton "ADMIN" occupe 1 colonne avec un padding à 0 -->
                    <button class="custom-button admin-button black-button" onclick="window.location.href='ADMINsignin.html';">
                        ADMIN
                    </button>
                </div>
            </div>      
            
            <div class="row mb-4">
                <div class="col-md-3 offset-md-2">
                    <button class="custom-button black-button" onclick="window.location.href='adduser.html';">
                        + Ajouter un équipier
                    </button>
                </div>
            </div>

            <div class="user-name "> <!--Bouton de tous les équipier (fonction dynamique a faire)-->
                <div class="row mt-3">
                    <div class="col-md-6-5 offset-2-2">
                        <!--Juste le premier bouton a un lien fonctioonnel, les autres servent de demo-->
                        <button class="custom-button text-start white-button">
                            Alone Azoulay
                            <i class="fa-solid fa-shirt" style="color: black;"></i>
                        </button>
                    </div>
                </div>

                <div class="row mt-3">
                    <div class="col-md-6-5 offset-md-2 offset-2-2">
                        <!--Juste le premier bouton a un lien fonctioonnel, les autres servent de demo-->
                        <button class="custom-button text-start white-button">
                            Jeremy
                            <i class="fa-solid fa-shirt" style="color: #B22222;"></i>
                        </button>
                    </div>
                </div><div class="row mt-3">
                    <div class="col-md-6-5 offset-md-2 offset-2-2">
                        <!--Juste le premier bouton a un lien fonctioonnel, les autres servent de demo-->
                        <button class="custom-button text-start white-button">
                            Dimitri
                            <i class="fa-solid fa-shirt" style="color: grey;"></i>
                        </button>
                    </div>
                </div>
            </div>
            <div class="row mt-3">
                <div class="col-md-6-5 offset-md-2 offset-2-2">
                    <!--Juste le premier bouton a un lien fonctioonnel, les autres servent de demo-->
                    <button class="custom-button text-start white-button">
                        Milou
                        <i class="fa-solid fa-shirt" style="color: grey;"></i>
                    </button>
                </div>
            </div>
            <div class="row mt-3">
                <div class="col-md-6-5 offset-md-2 offset-2-2">
                    <!--Juste le premier bouton a un lien fonctioonnel, les autres servent de demo-->
                    <button class="custom-button text-start white-button">
                        Milou
                        <i class="fa-solid fa-shirt" style="color: grey;"></i>
                    </button>
                </div>
            </div>
            <div class="row mt-3">
                <div class="col-md-6-5 offset-md-2 offset-2-2">
                    <!--Juste le premier bouton a un lien fonctioonnel, les autres servent de demo-->
                    <button class="custom-button text-start white-button">
                        Milou
                        <i class="fa-solid fa-shirt" style="color: grey;"></i>
                    </button>
                </div>
            </div>

            
        </div>
        <footer class="footer mt-5">
            <div class="container-fluid">
                <div class="row">
                    <!-- Informations de contact -->
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
</body>