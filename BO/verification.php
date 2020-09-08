<?php

	if(isset($_POST['validelogin'])) {
		if(isset($_POST['login']))
			$login = $_POST['login'];
		if(isset($_POST['mdp']))
			$mdp = $_POST['mdp'];

		$_SESSION['logged_in'] = false;
		$query = $pdo->prepare("SELECT * FROM users WHERE username=:username");
		$query->bindParam("username", $login, PDO::PARAM_STR);
		$query->execute();	
		$result = $query->fetch(PDO::FETCH_ASSOC);
		$hash_passwd = password_hash($result['passwd'],PASSWORD_BCRYPT);
	
		if (password_verify($mdp, $hash_passwd) && $login === $result['username']) {
				$_SESSION['logged_in'] = true;
				$_SESSION['user_name'] = $login;
			} else {
				echo '<h4 style="color:red; ">Combinaison fausse login-mot de passe!</h4>';
			}	
	}
	
	if(isset($_POST['Deco'])){
		unset($_SESSION['logged_in']);
	}
	
	if(!isset($_SESSION['logged_in']) || !$_SESSION['logged_in']){
  
?>
<div id="verif">
	<h1>Backoffice Portfolio</h1>
	<h3>Entrez le login et le mot de passe</h3>
	<form method='post' action='<?php echo $_SERVER['PHP_SELF'];?>'>
		Identifiant  : <input type="text" name='login'/>
		Mot de passe : <input type="password" name='mdp'/>
		<input type='submit' name='validelogin' value='Valider'>
	</form>
	<a href="../index.php">&lt;&lt; Retour Portfolio</a>
</div>	
</body>
</html>
<?php
	exit(0);
	}
?>