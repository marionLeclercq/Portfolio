<?php
$stylesheet="../css/BO.css";
include "../include/_sessions.php";
include "../include/_connexion.php";
?>
<!DOCTYPE html>
<html lang="fr">
<?php
include "../include/head.php";
?>
<body>
<?php
include "verification.php";
?>
<div id="choix">
	<h1>Backoffice Portfolio</h1>

	<form method="POST" action="editable.php">
	<?php
		echo "<h3>Sélectionnez une table : <br/></h3>";
		$tables_req = $pdo->query("SHOW TABLES;");
		$lignes_tables = $tables_req->fetchAll();

		$retour_ligne = 0;
		foreach($lignes_tables as $ligne) {
				
			echo "\t<input type='submit' name='valider' value='".$ligne[0]."' style='height:100px;'>"."\n"; 
		}
	?>
	</form>
	<form method="POST" action="deconnexion.php">
		<input type='submit' name='Deco' value='Déconnexion'/>
	</form>
</div>
</body>
</html>