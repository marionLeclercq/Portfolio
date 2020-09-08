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
include "verification.php";
include "EstClePrimaire.php";
?>
<section id="edit">
	<a href="choixtable.php">&lt;&lt; Retour au choix de la table</a>

	<?php 
	// Si une table a été sélectionnée
	if( isset($_POST['valider']) ) {
		// On récupère le nom de la table concernée
		$table_selectionnee = $_POST['valider'];

		echo "\t<h1>La table sélectionnée : <strong>$table_selectionnee</strong></h1>";
		// Bouton d'ajout
		echo '<form id = "ajout" action="update.php" method="POST">
					<input type="hidden" name="table" value="'.$table_selectionnee.'" />
					<input type="hidden" name="id" value="new" />
					<input class="boutons" type="submit" name="insert" value="Ajouter une ligne" />
				</form>';
		// Construction du tableau d'affichage
		echo "\n\t<table>";
		// Récupération des en-têtes
		$columns_req = $pdo->query("SHOW COLUMNS FROM $table_selectionnee");
		$lignes_columns = $columns_req->fetchAll();
		echo "\n\t\t<tr>";
		foreach($lignes_columns as $column) {
			echo '<th class="champ">'.$column['Field'].'</th>';
		}
		echo "\n\t\t</tr>";
		// Affichage des données dans le tableau
		$values_req = $pdo->query("SELECT * FROM $table_selectionnee");
		$lignes_values = $values_req->fetchAll(PDO::FETCH_ASSOC);
		
		// Pour chaque ligne du tableau
		foreach ($lignes_values as $ligne) {
			// Pour chaque colonne
			echo "\n\t\t<tr>";
			foreach ($ligne as $champ => $value){

				echo "\n\t\t\t<td>$value</td>";
				// Si c'est la clé primaire, on sauvegarde son id pour le POST
				if(estClePrimaire($champ)) $id=$value;
			}

			echo '<td>
					<form action="update.php" method="POST">
						<input type="hidden" name="table" value="'.$table_selectionnee.'" />
						<input type="hidden" name="id" value="'.$id.'" />
						<input class="boutons" type="submit" name="update" value="Editer" />
						<input class="boutons" type="submit" name="delete" value="Supprimer" />
					</form>
					</td>';
			echo "\n\t\t</tr>";
		}
		// Fermeture du tableau d'affichage des champs
		echo "\n\t</table>";
	}
	?>
</section>	
</body>
</html>
