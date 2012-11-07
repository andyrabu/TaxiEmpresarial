
<%@page import="pe.edu.upc.dew.taxiseguro.model.ClienteEmpleados"%>
<%@page import="pe.edu.upc.dew.taxiseguro.dao.ClienteEmpresaJdbc"%>
<%@page import="pe.edu.upc.dew.taxiseguro.util.JdbcUtils"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%-- 
    Document   : ConsultaEmpleadosCliente
    Created on : 12/11/2010, 09:11:22 PM
    Author     : seco
--%>
<%@ page import="java.io.*,java.util.*,java.net.*,java.sql.*,java.sql.Statement" %>
<%@page contentType="text/html"%>
<%@page pageEncoding="UTF-8"%>

<%@ taglib uri="http://struts.apache.org/tags-bean" prefix="bean" %>
<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html" %>
<%@ taglib uri="http://struts.apache.org/tags-logic" prefix="logic" %>


<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

<html:html lang="true">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=windows-1252">
        <title>JSP Page</title>
        <link href="css/style.css" rel="stylesheet" type="text/css" />
    </head>
    <body class="iframe">
            <div id="logo">
                <div class="title"><h1>Bienvenido ${usuario.USCoUsuario} </h1><br /><br />
                <span class="style2">
                    <h8><strong> Usted se ha identificado como:${usuario.USNoNombres} </strong></h8>
                </span></div>
            </div>
                    <html:form action="validarempleado">
                        codigo:<html:text property="codigo"></html:text><br />
                        <html:errors property="varcodigo"></html:errors> <br/>
                        Paterno:<html:text property="apPaterno"></html:text><br />
                        <html:errors property="apPaterno"/><br/>
                        Materno:<html:text property="apMaterno"></html:text><br />
                        <html:errors property="apMaterno"/><br />
                         Nombre:<html:text property="nombre"></html:text><br />
                        <html:errors property="nombre"/><br />
                         Clave:<html:text property="clave"></html:text><br />
                        <html:errors property="clave"/><br />
                         DNI:<html:text property="dni"></html:text><br />
                        <html:errors property="dni"/><br />
                         Estado<html:text property="estado"></html:text><br />
                        <html:errors property="estado"/><br />

                         <html:submit value="Confirmar"></html:submit>
                     </html:form>
                        <p>&nbsp;</p>
                        <p>&nbsp;</p>
 ${empleadoEmpresa.USCoUsuario}
    <%
 Connection conn = JdbcUtils.getConnection();
Statement instruccion=null;

ResultSet tabla= null;

try{
instruccion =  conn.createStatement();
tabla =  instruccion.executeQuery("select *from usuario");
out.println("<table  border=1 > ");
out.println("<tr bgcolor=#00FF00>"
          + "<th>CLIENTE</th>"
                  + "<th>USUARIO</th>"
                  + "<th>DOCUMENTO</th>"
                  + "<th>PATERNO</th>"
                  + "<th>MATERNO</th>"
                  + "<th>NOMBRES</th>"
                  + "<th>CLAVE</th>"
                  + "<th>ESTADO</th>"
          + "</tr>");
while(tabla.next()){
out.println(
        "<tr>"
                    + "<td>" + tabla.getString(1) + "</td>"
                    + "<td>" + tabla.getString(2) + "</td>"
                    + "<td>" + tabla.getString(3) + "</td>"
                    + "<td>" + tabla.getString(4) + "</td>"
                    + "<td>" + tabla.getString(5) + "</td>"
                    + "<td>" + tabla.getString(6) + "</td>"
                    + "<td>" + tabla.getString(7) + "</td>"
                    + "<td>" + tabla.getString(8) + "</td>"
                    + "</tr>");
   }
out.println("</table>");
   }catch(Exception e){
       out.println(e);}
   %>
    </body>
</html:html>
