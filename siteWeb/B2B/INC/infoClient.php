<?php
try {
    $bdd = new PDO("mysql:host=172.17.0.4;dbname=WT", "root", "");
}
catch(Exception $e){
    die('ERROR: ' . $e->getMessage());
}
$client = $bdd->prepare('INSERT INTO client_WT(nomClient, adresseClient) VALUES(?,?)');
$client->execute(array($_POST['entreprise'], $_POST['adresse']));
header('Location: ../index.php');

?>