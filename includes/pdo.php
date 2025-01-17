<?php
// Définir les informations de connexion
$host = 'localhost'; // ou '127.0.0.1'
$port = '8889';  // Le port utilisé par MAMP (si tu utilises MAMP)
$dbname = 'McDo'; // Le nom de la base de données
$username = 'root'; // Ton nom d'utilisateur
$password = 'root'; // Ton mot de passe

// Essaie de te connecter à la base de données
try {
    // Connexion avec port spécifié
    $pdo = new PDO("mysql:host=$host;port=$port;dbname=$dbname;charset=utf8mb4", $username, $password);
    // Optionnel : activer le mode d'erreur de PDO pour aider au débogage
    $pdo->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
} catch (PDOException $e) {
    // Si la connexion échoue, affiche un message d'erreur
    die("Erreur de connexion à la base de données : " . $e->getMessage());
}
?>
