function verifier() {
	var nomElt = document.querySelector( "#name" );
	var nom = nomElt.value.trim();
	if ( nom.length == 0 ) {
		nomElt.value = "";
		nomElt.focus();
		nomElt.placeholder = "Tapez votre nom";
		nomElt.style.border ="1px solid red";
		return false;
	}
	
	var messageElt = document.querySelector( "#msg" );
	var message = messageElt.value.trim();
	if ( message.length == 0 ) {
		messageElt.value = "";
		messageElt.focus();
		messageElt.placeholder = "Tapez votre message";
		messageElt.style.border ="1px solid red";
		return false;
	}
	var emailElt = document.querySelector( "#mail" );
	var email = emailElt.value.trim();
	if ( email.length == 0 || emailInvalide( email ) ) {
		emailElt.value = email;
		emailElt.focus();
		emailElt.style.border ="1px solid red";
		return false;
	}
	return true;
}

function emailInvalide( email ) {
	var i = email.indexOf( "@" );
	    if ( i < 1 )
	    	return true;
	    if ( i != email.lastIndexOf( "@" ) )
	    	return true;
	    var droite = email.split( "@" )[1];
	    i = droite.lastIndexOf( "." );
	    if ( i == -1 )
	    	return true;
	    droite = droite.substring(i);
	    if ( droite.length < 3 )
	    	return true;
	    return false;  	
    }