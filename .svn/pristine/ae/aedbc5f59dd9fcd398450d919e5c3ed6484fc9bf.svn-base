/*
 custom fucntions
 */

$(document).ready(function(){
    var h;
    var m;
     //document.location.href="ReservaVale.jsp?empresa="+$(this).val();

    $('#empresa').change(function() {
       document.location.href="Reserva.do?empresa="+$(this).val();
    });



    for(h=1;h<=24;h++){
        if (h < "10"){
            h = "0"+h;
            $("#lstHora").append("<option value="+h+">"+h+"</option> ");
        }else{
            $("#lstHora").append("<option value="+h+">"+h+"</option>");
        }
    }

    for(m=0;m<=59;m++){
        if (m < "10"){
            m = "0"+m;
            $("#lstMinutos").append("<option value="+m+">"+m+"</option>");
	}else{
            $("#lstMinutos").append("<option value="+m+">"+m+"</option>");
	}
    }
})


function borderError(id,val){
    if (val == "1"){
        $(id).attr("class","error");
    }else {
        if (val == "0"){
            $(id).removeClass("error");
        }
    }
}

function Validar(){
    var msg = "<div id='message-error'><ul><li class='title-error'>Mensaje de Validacion</li>";
    var countErrors = 0;
    var btnClose;
    var d = new Date();
    var horaSeleccionada, minutoSeleccionado;
    var horaActual, minutoActual;

    var lugarInicio, lugarFin;

    horaSeleccionada =  parseInt($("#lstHora").val());
    minutoSeleccionado =  parseInt($("#lstMinutos").val());
    horaActual = parseInt(d.getHours());
    minutoActual = parseInt(d.getMinutes());

    lugarInicio = $("#lstLugarInicio").val();
    lugarFin = $("#lstLugarFin").val();

    if( lugarInicio == lugarFin ){
        msg = msg +"<li>Seleccione lugares distintos.</li>";
        borderError("#lstLugarFin", "1");
        countErrors = countErrors + 1;
    }else{
        borderError("#lstLugarFin", "0");
    }

    //alert(minutoSeleccionado);
    if(horaActual > horaSeleccionada){
        msg = msg +"<li> Por favor, seleccione una hora mayor o igual a "+ horaActual+".</li>";
        $("#lstHora").attr("class","error");
        countErrors = countErrors + 1;
    }else {
        borderError("#lstHora", "0");
    }

    if( horaActual == horaSeleccionada && minutoActual > minutoSeleccionado){
        msg = msg+ " <li>Por favor seleccione minutos mayores a "+minutoActual+".</li>";
        borderError("#lstMinutos", "1");
        countErrors = countErrors + 1;
    }else{
        borderError("#lstMinutos", "0");
    }


    btnClose =" <li class='error-footer'><div class='uiButton uiButtonLarge uiButtonConfirm' id='close'><input type='button' id='close-btn' value='Cerrar'></div></li>";

    if (countErrors > 0){
        if ($(".ya").length){

        }else{
            $("#content-wrapper").prepend(msg+btnClose+"</ul></div>");
            $("#content-wrapper").attr("class","ya");
        }
    }

    $("#close-btn").click(function() {
	$("div#message-error").remove();
        $("#content-wrapper").removeClass("ya");
    });
}
