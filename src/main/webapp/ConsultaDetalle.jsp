<%-- 
    Document   : ConsultaDetalle
    Created on : 03/12/2010, 10:44:48 PM
    Author     : FSEGURA1

--%>

<%@page import="org.omg.CORBA.PUBLIC_MEMBER"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import ="java.util.*" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

<%
    String sCliente = (String) request.getSession().getAttribute("Cliente");
    SimpleDateFormat formateador = new SimpleDateFormat("dd/MM/yyyy");
    String fechaSistema = formateador.format(new Date());
    
%>  

<html>
    <head>
       <title>Cliente Web de Ondemand</title>
    </head>
    <script LANGUAGE="Javascript">
        function fCancelar(){
            window.close()
        }

        function fAceptar(){

            f = document.forma1
            f.submit()
        }

        function fRestablecer(){
            f = document.forma1
            f.clear()
        }

        function fValidar()
            { var bisiesto_ini=0;var bisiesto_fin=0;var fecha=new Date();var anyo=0;
            var diainicio=0;var mesinicio=0;var anyoinicio=0;var error=0;var campos=0
            var diafin=0;var mesfin=0;var anyofin=0;var mayor=0;var mensaje="";
            var barra1ini="";barra2ini="";var barra1fin="";barra2fin="";

            barra1fin=forma1.fechaFin.value.substr(2,1);
            barra2fin=forma1.fechaFin.value.substr(5,1);
            barra1ini=forma1.fechaInicio.value.substr(2,1);
            barra2ini=forma1.fechaInicio.value.substr(5,1);
            diainicio=forma1.fechaInicio.value.substr(0,2);
            mesinicio=forma1.fechaInicio.value.substr(3,2);
            anyoinicio=forma1.fechaInicio.value.substr(6,4);
            diafin=forma1.fechaFin.value.substr(0,2);
            mesfin=forma1.fechaFin.value.substr(3,2);
            anyofin=forma1.fechaFin.value.substr(6,4);

            bisiesto_fin=anyofin%4;bisiesto_ini=anyoinicio%4;
            anyo=fecha.getYear(); mes=fecha.getMonth()+1; dia=fecha.getDate();
            if (mes<10){mes = "0"+mes;}
            if (dia<10){dia = "0"+dia;}
            fechaHoy=dia+"/"+mes+"/"+fecha.getFullYear();

            /*control formato*/

            if (forma1.fechaInicio.length<10 || barra1ini!="/" || barra2ini!="/" )
            {alert("RELLENE LA FECHA INICIO CON EL FORMATO ESPECIFCADO");
                forma1.fechaInicio.focus();forma1.fechaInicio.value=fechaHoy;return false;}

            if (forma1.fechaFin.length<10 || barra1fin!="/" || barra2fin!="/" )
            {alert("RELLENE LA FECHA FIN CON EL FORMATO ESPECIFICADO");
                forma1.fechaFin.focus();forma1.fechaFin.value=fechaHoy;return false;}
            /*fin control formato*/

            /*control si la fecha inicial es mayor a la inicial*/
            if (anyofin<anyoinicio){mayor=1;}
            if (mesfin<mesinicio && anyofin==anyoinicio){mayor=1;}
            if (diafin<diainicio && mesfin==mesinicio && anyofin==anyoinicio){mayor=1;}
            if (mayor==1)
            {error=1;mensaje="LA FECHA FINAL NO PUEDE SER MENOR QUE LA INICIAL";}
            /*Fin control si la fecha inicial es mayor a la inicial*/

            /*control de meses que tienen 31 dias*/
            if (diainicio==31 && (mesinicio==2 || mesinicio==4 || mesinicio==6 || mesinicio==9 || mesinicio==11) )
            {error=1;campos=1;
                mensaje="MES CON MENOS DE 31 DIAS EN FECHA INICIAL";}
            /*fin control de meses que tienen 31 dias*/

            /*año bisiesto*/
            if((diainicio>28 && mesinicio==2 && bisiesto_ini!=0) || (diafin>28 && mesfin==2 && bisiesto_fin!=0))
            {mensaje="FECHA NO BISIESTA";
                if (mesinicio==2){campos=1;}
                if (mesfin==2){campos=2;}
                error=1;}
            /*fin año bisiesto*/
            /*control de meses que tienen 31 dias*/
            if (diafin==31 && (mesfin==2 || mesfin==4 || mesfin==6 || mesfin==9 || mesfin==11) || (diafin>28 && bisiesto==0))
            {error=1;campos=2;
                mensaje="MES CON MENOS DE 31 DIAS EN FECHA FINAL";}
            /*fin control de meses que tienen 31 dias*/

            /*fecha mayor a la actual*/
            if(anyoinicio>anyo || anyofin >anyo || diainicio >31 || diafin>31 || mesinicio>12 || mesinicio >12)
            {error=1;mensaje="FECHA MAYOR A LA ACTUAL";campos=0;}
            /*fin fecha mayor a la actual*/

            /*muestra errores*/
            if (error==1)
            { switch (campos){
                    case 0:
                        forma1.fechaInicio.focus();
                        forma1.fechaInicio.value=fechaHoy;
                        forma1.fechaFin.value=fechaHoy;
                        break;
                    case 1:
                        forma1.fechaInicio.focus();
                        forma1.fechaInicio.value=fechaHoy;
                        break;
                    case 2:
                        forma1.fechaFin.focus();
                        forma1.fechaFin.value=fechaHoy;
                        break;}
                    alert(mensaje);
                    return false;}
                else {return true;}
}

    </script>
  
    <body background="/images/f_bg_lineas.JPG" bgcolor="#c2c2c2" text="#0000cc" link="#0000cc" vlink="#000022" alink="#000033">
        <h1 align="center"><font color="red">Cliente Web de Ondemand</font></h1>
        <!---
        - Everything above and below the following (Marker) line
        - will appear as is with no interpretation. The output of arswww.cgi
        - will replace this line.
    ---->
        <center><h3>"<%=sCliente%>" </h3></center>
        <form ID="forma1" name="forma1"  action="ServletConsultaDetalle" method="POST">
            <table BORDER=0 CELLSPACING=3 CELLPADDING=3>
                <tr>
                    <td NOWRAP><FONT SIZE=3><b>FECHA(DD/MM/AAAA)</b></FONT></td>
                    <td NOWRAP><FONT SIZE=2><i>Entre</i></FONT></td>
                    <td NOWRAP>      
                    <table BORDER=0 CELLSPACING=0 CELLPADDING=0>
                      <tr>
                      <td NOWRAP><input type=text name="fechaInicio" value="<%=fechaSistema%>" maxlength=12 onblur="fValidar()" ></td>
                      <td NOWRAP><FONT SIZE=2><i>&nbsp;y&nbsp;</i></FONT></td>
                      <td NOWRAP><input type=text name="fechaFin" value="<%=fechaSistema%>" maxlength=12 onblur="fValidar()" ></td>
                     </tr>
                   </table>
                </tr>
            </table>
            <tr>
                <input type="button" value="Aceptar" name="btnAceptar" accesskey="A" onclick="fAceptar()" />
                <input type="button" value="Restablecer" name="btnRestablecer" accesskey="R" onclick="fRestablecer()" />
                <input type="button" value=" Salir " name="btnSalir" accesskey="S" onclick="fCancelar()"/>
            </tr>
            <hr>
        </form>
    </body>
</html>
