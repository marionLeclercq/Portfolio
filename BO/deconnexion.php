<?php
include "../include/_sessions.php";
include "../include/_connexion.php";
$stylesheet="../css/BO.css";
?>
<!DOCTYPE html>
<html lang="fr">
<?php
include "../include/head.php";
?>
<body>
<?php  
    unset($_SESSION['logged_in']);
?>
    <h2>Vous avez bien été déconnecté du Back Office.</h2>
    <a href="../BO/choixtable.php">Retour à la page d'accueil</a>
</body>
</html>