<?php 
	function EstClePrimaire($nom_champ) 
	{
		return strpos($nom_champ, "id")===0;
	}
?>