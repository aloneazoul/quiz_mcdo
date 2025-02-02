<?php
//
//inclure Flight avec le bon chemin
//
require 'includes/core-master/flight/Flight.php';
//
//inclure Smarty avec le bon chemin
//
require 'includes/smarty-4.5.2/libs/Smarty.class.php';
//require '';
// Inclure le fichier PDO.php pour la connexion à la base de données
require 'includes/pdo.php'; 

// Enregistrer l'instance PDO dans Flight pour pouvoir l'utiliser dans les routes
Flight::set('pdo', $pdo);
//
// Inclure le fichier de routes
//
require 'routes.php';
//
//copier le code de configuration de Flight/Smarty
//
Flight::register('view', 'Smarty', array(), function($smarty){
    $smarty->template_dir = './templates/';
    $smarty->compile_dir = './templates_c/';
    $smarty->config_dir = './config/';
    $smarty->cache_dir = './cache/';
    });

//ajoute une méthode render à Flight qui affiche un template
//en lui transmettant un tableau de données
Flight::map('render', function($template, $data){
    Flight::view()->assign($data);
    Flight::view()->display($template);
});
//
//copier le code de la fonction render
//


//
//exercice PDO : enregistrer la variable pdo avec Flight::set
//


//
//démarrer Flight (traite les requêtes et appelle la bonne fonction)
//
Flight::start();