$(function(){

    $("#menu ul#sousmenu").hide();
  
    $("#menu li.menu span").each( function () {
        var TexteSpan = $(this).text();
        $(this).replaceWith('<a href="" >' + TexteSpan + '<\/a>') ;
    } ) ;

    $("#menu li.menu > a").click( function () {
        // Si le sous-menu était déjà ouvert, on le referme :
        if ($(this).next("ul#sousmenu:visible").length != 0) {
            $(this).next("ul#sousmenu").slideUp("normal");
        }
        // Si le sous-menu est caché, on ferme les autres et on l'affiche :
        else {
            $("#menu ul#sousmenu").slideUp("normal");
            $(this).next("ul#sousmenu").slideDown("normal");
        }
    $("#sousmenu li > a").click( function(){
        $("#menu ul#sousmenu").hide();
        $("#transition1").slideDown("slow");
    })    
    return false;
    });  
} ) ;