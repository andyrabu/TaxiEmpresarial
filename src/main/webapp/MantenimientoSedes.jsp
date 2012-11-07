<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">

<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%-- 
    Document   : MantenimientoSedes
    Created on : Oct 18, 2010, 6:52:55 AM
    Author     : Toshiba
--%>


<%@page contentType="text/html"%>
<%@page pageEncoding="UTF-8"%>

<%@ taglib uri="http://struts.apache.org/tags-bean" prefix="bean" %>
<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html" %>
<%@ taglib uri="http://struts.apache.org/tags-logic" prefix="logic" %>


<html:html lang="true">
    <head>
        <meta http-equiv="content-type" content="text/html; charset=utf-8" />
        <title>Servicio Taxi Empresarial </title>
          <link href="css/style.css" rel="stylesheet" type="text/css" />
     </head>


    <body class="iframe">

        <!-- Inicio Encabezado -->


        <div id="header">
            <div id="logo">
                <h1> Mantenimiento de Sedes </h1>

           
            </div>
            
        </div>
        <!-- Fin encabezado -->
        <!-- Incio pgina  -->
        <div id="page">
          <div id="content">
                <div class="post greenbox">
                    <div class="title" align="center">
                        <h3 class="Estilo3"><strong> Empresa : ${sedeEmpresa.nombre}</strong></h3>
                        <h3 class="Estilo4" >  Representante Legal:${usuario.USNoNombres}</h3>
                    </div>
                  <div class="entry"> <p> Actualice la informacion de sus Sedes </p>


                      <html:form action="validarsedes">
                        Nombre Sede: <html:text property="nomSede"></html:text><br />
                        <html:errors property="sede"></html:errors> <br/>
                        Direccion de Sede:<html:text property="dirSede"></html:text><br />
                         <html:errors property="direccion"/><br />
                         Telefono de Sede:<html:text property="telSede"></html:text><br />
                         <html:errors property="telefono"/><br/>
                         Distrito:
                         <select name="distrito" size="1">
                        <option>Selecciona el Distrito</option>
                            <c:forEach var="dis" items="${sedeEmpresa.distritos}">
                                <option>${dis.descripcionDistrito}</option>
                            </c:forEach>
                                  </select>

                         
                         <html:errors property="distrito"/><br/>


                         <html:submit value="Confirmar"></html:submit>
                     </html:form>









                      
                        <p>&nbsp;</p>
                        <form name="frmSede" method="post" action="">
                            <table width="613" border="1">
                                <tr>
                                    <td width="135"><strong>Nombre de Sede</strong></td>
                                    <td width="230">
                                    <strong>Direccion de Sede</strong></td>
                                    <td><strong>Telefono de Sede</strong></td>
                                    <td><strong>Distrito</strong></td>

                                </tr>
                                <c:forEach var="sede2" items="${listasedes}">
                                    <tr>

                                        <td>${sede2.nombreEmpresa}</td>
                                        <td>   ${sede2.direccionSede}</td>
                                        <td>${sede2.telefonoSede}</td>
                                         <td>${sede2.distritoo}</td>

                                    </tr>
                                </c:forEach>
                            </table>
                            <p>&nbsp;</p>
                            <table width="607" border="0">
                                <tr>
                                    <td width="162">
                                        <div align="center">
                                            <input type="button" name="btnAgregar" id="btnAgregar" value="Agregar"></div>
                                    </td>
                                    <td width="178"><div align="center">
                                            <input type="button" name="btnModificar" id="btnModificar" value="Modificar">
                                        </div></td>
                                    <td width="253"><div align="center">
                                            <input type="button" name="btnGrabar" id="btnGrabar" value="Grabar">
                                        </div></td>
                                </tr>
                            </table>
                            <p>&nbsp;</p>
                        </form>


                    </div>
                
                </div>

            </div>
            <!-- fin contenido -->
           
        </div>
        <!-- end page -->
        <div style="clear: both;">&nbsp;</div>
        <div id="footer">
            <p> Todos los derechos reservados <a href="http://www.upc.edu.pe/"> UPC </a></p>
        </div>
    </body>
</html:html>
