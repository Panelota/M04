<?php

setcookie("dades","",time()+3600, "/","",0);

if (isset($_COOKIE["vegetal"])) { //Si la cookie existeix en el navegador...
	//Mostrem valor de la cookie.
	echo "<p>Hola de nou! Has escollit: ".$_COOKIE["vegetal"].".</p>";
	
	//Modifiquem el valor de la cookie. El canvi no el podrem mostrar per
	//pantalla fins que no recarreguem la pàgina (tornem a enviar la petició HTTP).
	setcookie("vegetal","tomaquet",time()+3600, "/","",0);
	
	//Mostrem el nou valor
	echo "<p>Ara has escollit: ".$_COOKIE["vegetal"].".</p>";
	
	//Eliminem la cookie creada
	//setcookie("vegetal","tomaquet",time()-3600, "/","",0);
	
} else { //Si no existeix (primer cop que executem script)...
	//Mostrem missatge.
	echo "<p>Hola. Aquesta és la teva primera visita.</p>";
}
?>