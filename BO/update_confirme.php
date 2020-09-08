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
			<?php 
				$table_selectionnee = $_POST['table'];
				$id                = $_POST['id'];
				$cle_primaire      = '';
				$set               = [];
			?>

			<?php
				switch ($_POST['action']) {
					case 'insert':
						$colonnes = [];
						$values   = [];
						$columns_req = $pdo->query("SHOW COLUMNS FROM `$table_selectionnee`");
					    $lignes_columns = $columns_req->fetchAll();
					    foreach($lignes_columns as $column) {	
							if( !estClePrimaire($column['Field']) ) {
								$colonne = $column['Field']; 
								$colonnes[] = "`$colonne`";
								$value = $_POST[ $colonne ]; 
								if( !strpos($column['Type'], 'int')) {
									$value = htmlentities($value);
									$values[] = "\"$value\"";
								}
								else {
									$values[] = $value;
								}
							}
						}
						// Exécution de la modification
						$colonnes = implode(',', $colonnes);
						$values = implode(',', $values);
						$insert_sql = $pdo->query("INSERT INTO `$table_selectionnee`($colonnes) VALUES($values)");
						echo "<h2>Ajout effectué.</h2><br />";
						break;
					case 'update':
						// Récupération du nom de la clé primaire
						$columns_req = $pdo->query("SHOW COLUMNS FROM `$table_selectionnee`");
					    $lignes_columns = $columns_req->fetchAll();
					    foreach($lignes_columns as $column) {	// Si c'est une clé primaire, on la récupère
							if( estClePrimaire($column['Field']) )
								$cle_primaire = $column['Field'];
							// Sinon, on prépare pour modifier
							else {
								$colonne = $column['Field']; // Le nom de la colonne
								$value = $_POST[ $colonne ]; // La valeur qui se trouve dans POST

								// Si la colonne n'est pas de type int...
								if( !strpos($column['Type'], 'int') ) {
									// on les prend en convertissant le texte en code HTML (&...;)
									$value = htmlentities($value);
									$set[] = "`$colonne`=\"$value\"";
								}
								else {
									// Sinon, on ne prend pas en compte les guillemets
									$set[] = "`$colonne`=$value";
								}
							}
						}
						// Exécution de la modification
						$set = implode(',', $set);
						$insert_sql = $pdo->query("UPDATE `$table_selectionnee` SET $set WHERE `$cle_primaire`=$id");
						echo "<h2>Modifications effectuées.</h2><br />";
						break;
					case 'delete':
						// Récupération de la clé primaire
						$columns_req = $pdo->query("SHOW COLUMNS FROM `$table_selectionnee`");
					    $lignes_columns = $columns_req->fetchAll();
					    foreach($lignes_columns as $column) {	// Si c'est une clé primaire, on la récupère
							if( estClePrimaire($column['Field']) )
								$cle_primaire = $column['Field'];
						}
						// Execution de la suppression
						$insert_sql = $pdo->query("DELETE FROM `$table_selectionnee` WHERE `$cle_primaire`=$id");
						echo "<h2>Suppression effectuée.</h2><br />";
						break;		
					default: break;
				}

				?>	
				<form action="editable.php" method="POST">
					<input class = "valider" type="submit" name="valider" VALUE="<?php echo  $table_selectionnee; ?>" />
				</form>

</body>
</html>