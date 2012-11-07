
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%--
    Document   : newjsp
    Created on : 15-oct-2010, 12:19:25
    Author     : Administrador


--%>
<%@page contentType="text/html" pageEncoding="windows-1252"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="content-type" content="text/html; charset=utf-8" />
<title>Servicio Taxi Empresarial </title>
<meta name="keywords" content="" />
<meta name="description" content="" />
<link href="css/default.css" rel="stylesheet" type="text/css" media="screen" />
</head>
<SCRIPT>
        function fCancelar(){
            window.close()
        }
</SCRIPT>
<body class="iframe">
<!-- Inicio Encabezado -->

 
<div id="header">
	<div id="logo">
                 <h1> Mantenimiento de Sede </h1>

		<h1>Servicio de Taxi Empresarial</h1>
		<p>Seguro y rapido.</p>
	</div>
	<div id="menu">
		<ul>
			<li class="current_page_item"><a href="#">Reserva de Vale</a></li>
			<li><a href="#">Consultas</a></li>
			<li><a href="#">Reportes</a></li>
			<li><a href="#">Ayuda</a></li>
		</ul>
	</div>
</div>
<!-- Fin encabezado -->
<!-- Incio pgina  -->
<div id="page">
	<!-- Inicio contenido -->
	<div id="content">
		<div class="post greenbox">
			<div class="title">
				<h1>consulta  resumen de servicios otorgados</h1>
			</div>
			<div class="btm">
		  <div class="l">
					<div class="r">
					  <table width="650" border="0">
						  <tr>
						    <td width="79"><strong>Periodos:</strong></td>
						    <td width="68"><form name="form1" method="post" action="">					      				       
						      <input type="radio" name="periodo" value="Actual" CHECKED>Actual
						      <input type="radio" name="periodo" value="Otros">Otros				      
					       </form></td>
						    <td width="251"><form name="form2" method="post" action="">			    
						      <select name="listaOtrosPeridos">
                                <option value="04">Abril</option>
                                <option value="05">Mayo</option>
                                <option value="06">Junio</option>
						        <option value="07">Julio</option>
						        <option value="08">Agosto</option>
						        <option value="09">Setiembre </option>
					          </select>
					        </form></td>
						    <td align="center" colspan="2" width="65">
						      <input type="submit" name="btnAceptar" value="Aceptar" accesskey="A" /> &nbsp;
					          <input type="submit" name="btnCancelar" value="Cancelar" accesskey="C" 
                        onclick="fCancelar()" />
					       </td>
					      </tr>
					  </table>
					  <p>&nbsp;</p>
					  <div align="center">
					    <table width="389" height="32" border="2">
					      <tr>
					        <th width="150" scope="col">&nbsp;</th>
					        <th width="71" scope="col">Cantidad</th>
					        <th width="136" scope="col">Importe Total S/</th>
				          </tr>
					      <tr>
					        <th scope="col">Servicios</th>
					        <th scope="col">&nbsp;</th>
					        <th scope="col">&nbsp;</th>
				          </tr>
				        </table>
				      </div>
					  <p class="meta">&nbsp;</p>
            </div>
				</div>
			</div>
		</div>
		
	</div>
	<!-- fin contenido -->
	<!-- inicio sidebar -->
	<div id="sidebar">

            <ul>
                <li>
                    <h2>OPCIONES</h2>
                    <ul><form action="SEDES" method="post" name="form2" id="form2">
                            <c:forEach var="emple" items="${loginCliente.clienteEmpleadoses}">
                                <c:if test="${emple.codusername == 'hjvaldez'}"></c:if>
                            </c:forEach>
                            <div align="center">
                                <input id="inputsubmit1" type="submit" name="inputsubmit1" value="   Mantenimiento de Sedes   " />
                            </div>
                        </form>
                        <form action="portal" name="form3" method="post"  id="form3">
                            <div align="center">
                                <input id="inputsubmit2" type="submit" name="inputsubmit2" value="  Mantenimiento Empleados  " />
                            </div>
                        </form>
                        <form name="form4" method="post" action="Consulta" id="form4">
                            <div align="center">
                                <input id="inputsubmit3" type="submit" name="inputsubmit3" value="        Consulta Detalle           " />
                            </div>
                        </form>
                        <form name="form5" method="post" action="SEDES">
                            <div align="center">
                                <input id="inputsubmit4" type="submit" name="inputsubmit4" value="                 Salir                  " />
                            </div>
                        </form>
                        <p>&nbsp;</p>
                        <p>&nbsp;</p>
                        <p align="center"><img src="images/img003.gif" alt="FOTO" width="142" height="72" align="absbottom" /></p>
                        <p>&nbsp;</p>
                        <p>&nbsp;</p>
                    </ul>
		  </li>

		</ul>

	</div>
	<!-- fin sidebar -->
</div>
<!-- end page -->
<div style="clear: both;">&nbsp;</div>
<div id="footer">
	<p> Todos los derechos reservados <a href="http://www.upc.edu.pe/"> UPC </a></p>
</div>
</body>
</html>
