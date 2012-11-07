<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<!--

-->
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<link href="css/style.css" rel="stylesheet" type="text/css" />
<meta http-equiv="content-type" content="text/html; charset=utf-8" />
<title>Servicio Taxi Empresarial </title>
<meta name="keywords" content="" />
<meta name="description" content="" />


<script language="JavaScript">
// Array de los meses
var monthNames = new makeArray(12);
monthNames[0] = "Enero";
monthNames[1] = "Febrero";
monthNames[2] = "Marzo";
monthNames[3] = "Abril";
monthNames[4] = "Mayo";
monthNames[5] = "Junio";
monthNames[6] = "Julio";
monthNames[7] = "Agosto";
monthNames[8] = "Septiembre";
monthNames[9] = "Octubre";
monthNames[10] = "Noviembre";
monthNames[11] = "Diciembre";

// Array de los días

var dayNames = new makeArray(7);
dayNames[0] = "Domingo";
dayNames[1] = "Lunes";
dayNames[2] = "Martes";
dayNames[3] = "Mi&eacute;rcoles";
dayNames[4] = "Jueves";
dayNames[5] = "Viernes";
dayNames[6] = "S&aacute;bado";

var now = new Date();
var year = now.getYear();

if (year < 2000) year = year + 1900;

function makeArray(len)
{
for (var i = 0; i < len; i++) this[i] = null;
this.length = len;
}





function mostrar() {

div = document.getElementById('flotante');

div.style.display = '';


}



</script>


<script language="JavaScript">
function Abrir_ventana (pagina) {
var opciones="toolbar=no, location=no, directories=no, status=no, menubar=no, scrollbars=no, resizable=yes, width=508, height=365, top=85, left=140";
window.open(pagina,"",opciones);
}
</script>


<style type="text/css">
<!--
.Estilo1 {color: #0000FF}
.Estilo4 {color: #000000; font-weight: bold; }
-->
</style>
</head>
<body class="iframe">
<!-- Inicio Encabezado -->
<div id="header">
	<div id="logo">
		<h1>Servicio de Taxi Empresarial</h1>
		<p>Seguro y rapido.</p>
	</div>

</div>
<!-- Fin encabezado -->
<!-- Incio p?gina  -->
<div id="page">
	<!-- Inicio contenido -->
	<div id="content">

		<div class="title">
				<h1 align="right">CONSULTA DE DISPONIBILIDAD  - E-TAXI EMPRESARIAL </h1>
		  </div>
			<div class="entry" >

			  <p>Fecha actual:
			    <script language="JavaScript">
<!--
document.write( dayNames[now.getDay()] + " " + now.getDate() + " de " + monthNames[now.getMonth()] + " " +" de " + year);
// -->
                </script>

	          </p>
              <p>Busque y reserve los servicios según los criterios ingresados</p>

		          <form id="form1" method="post" action="">
		            <p>
		              <label></label>
	                </p>
		            <p><strong>Hora de Reserva :</strong>
		              <label>
		              <select name="cboHoraReserva" id="cboHoraReserva">
		                <option>08:00</option>
		                <option>09:00</option>
		                <option>10:00</option>
		                <option>11:00</option>
		                <option>12:00</option>
		                <option>13:00</option>
		                <option>14:00</option>
		                <option>15:00</option>
		                <option>16:00</option>
		                <option>17:00</option>
		                <option>18:00</option>
		                <option>19:00</option>
		                <option>20:00</option>
		                <option>21:00</option>
                          </select>
		              </label>
		            </p>
	                <p align="right">
                      <label >
                      <input type="button" name="btnBuscar" id="btnBuscar" value="Buscar" onclick="javascript:mostrar();"/>


                      </label>
	                </p>
	                <p align="left">   <strong>  La b&uacutesqueda encontr&oacute los siguientes   resultados</strong>:</p>
	                <table width="588" border="1">
                      <tr>
                        <td>Cod Vehiculo</td>
<td>Conductor
</td>
<td>Vehiculo</td>

                        <td colspan="3">Estado</td>
                      </tr>


                            <c:forEach var="disponible" items="${disponibilidad.unidades}">
                                <tr>
                                    <td>${disponible.codUnidad}</td>
                                    <td>${disponible.conductor}</td>
                                    <td>${disponible.vehiculo}</td>
                                    <td>${disponible.estado}</td>

                                </tr>

                            </c:forEach>



                    </table>
	                <p align="right">&nbsp;</p>

	          </form>
          </div>



<div class="btm">
				<div class="l">
					<div class="r">
						<p class="meta"><a href="#" class="more">Continuar</a> &nbsp;&nbsp;&nbsp; <a href="#" class="more">Salir</a></p>
					</div>
				</div>
			</div>
		</div>

	</div>
	<!-- fin contenido -->


<!-- end page -->
<div style="clear: both;">&nbsp;</div>
<div id="footer">
	<p> Todos los derechos reservados <a href="http://www.upc.edu.pe/"> UPC </a></p>
</div>
</body>
</html>
