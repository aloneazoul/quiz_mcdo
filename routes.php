<?php

// Déclaration des routes
Flight::route('/', function() {
    // Redirige vers /index.html
    Flight::redirect('/index.html');
});

// Déclare la route pour /index.html
Flight::route('/index.html', function() {
    // Récupérer l'instance PDO depuis Flight
    $pdo = Flight::get('pdo');

    // Exécuter la requête pour récupérer les restaurants
    $query = 'SELECT * FROM resto';  // Assure-toi que la table et les colonnes sont correctes
    $stmt = $pdo->prepare($query);
    $stmt->execute();

    // Récupérer les résultats sous forme de tableau associatif
    $restos = $stmt->fetchAll(PDO::FETCH_ASSOC);

    // Préparer les données à passer à la vue
    $data = [
        'restos' => $restos  // On passe les restaurants récupérés à la vue
    ];

    // Passe les données à la vue et affiche le template index.tpl
    Flight::render('templates/index.tpl', $data);
});

// Personnaliser la page 404
Flight::map('notFound', function(){
    echo "<p>404. la route spécifiée n'existe pas</p>";
 });
 
?>