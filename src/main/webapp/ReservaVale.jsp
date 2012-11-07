<%--
    Document   : ReservaVale
    Created on : 07/11/2010, 07:03:38 PM
    Author     : Administrator
--%>
<%@page import="pe.edu.upc.dew.taxiseguro.dao.ClienteEmpresaJdbc"%>
<%@page import="pe.edu.upc.dew.taxiseguro.model.ClienteEmpresa"%>
<%@page import="pe.edu.upc.dew.taxiseguro.service.ClienteEmpleadoImpl"%>
<%@ page import="java.io.*,java.util.*,java.net.*,java.sql.*,java.sql.Statement" %>


<%@page contentType="text/html" pageEncoding="windows-1252"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

<html:html lang="true">

<% Connection  canal = null;
    Statement instruccion=null;
    ResultSet tabla= null;
    String conexion ="jdbc:mysql://localhost:3306/taxiempresarial?user=root&password=";
%>

    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=windows-1252">
        <link href="css/style.css" rel="stylesheet" type="text/css" />
        <script src="js/jquery.js" language="javascript" type="text/javascript"></script>
        <script src="js/custom.js" language="javascript" type="text/javascript"></script>
        <title>Reserva de Vale</title>
    </head>
    <body class="iframe">


        <div id="page">
	<!-- Inicio contenido -->
	<div id="content">
		<div class="contentt">
                    <div class="title">
                        <h1>Reserva de Vale</h1>
                    </div>
                    <form id="form1" name="form1" method="post" action="ReservaleVale.jsp">
                        <div id="content-wrapper">
                            <div id="tables">
                                <table border="0">
                             <tr>
                              <td><b>EMPRESA</b></td>
                              <td>

<%
try{
Class.forName("com.mysql.jdbc.Driver").newInstance();
canal =  DriverManager.getConnection(conexion);instruccion =  canal.createStatement();
    }catch(ClassNotFoundException e){
        out.println(e);
    }catch(SQLException e){out.println(e);}
    try{
        tabla =  instruccion.executeQuery("select *from cliente");
        out.println("<select id='empresa' name='empresa'>");
        while(tabla.next()){
            if (tabla.getString(1).equals(request.getParameter("empresa"))){
                out.println("<option SELECTED value='"+tabla.getString(1)+"'>"+tabla.getString(3)+"<option>");
            }else{
                out.println("<option value='"+tabla.getString(1)+"'>"+tabla.getString(3)+"<option>");
            }
        }
        out.println("</select>");
        tabla.close();
    }catch(Exception e){out.println(e);}
%>


                              </td>
                              <td> <b>USUARIO</b></td>
                              <td>

<%
try{
Class.forName("com.mysql.jdbc.Driver").newInstance();
canal =  DriverManager.getConnection(conexion);instruccion =  canal.createStatement();

    }catch(ClassNotFoundException e){
        out.println(e);
    }catch(SQLException e){out.println(e);}
    try{
        tabla =  instruccion.executeQuery("select *from usuario where USCoCliente='"+request.getParameter("empresa")+"'");
        out.println("<select name='empleado'>");
        while(tabla.next()){
                out.println("<option value='"+tabla.getString(2)+"'>"+tabla.getString(6)+" " +tabla.getString(4)+"<option>");
        }
        out.println("</select>");
        tabla.close();

    }catch(Exception e){out.println(e);}

%>


                              </td>

                              <td></td>
                             </tr>
                               <tr>
                                   <td><b>CHOFER</b></td>
                                   <td>

<%
try{
Class.forName("com.mysql.jdbc.Driver").newInstance();
canal =  DriverManager.getConnection(conexion);instruccion =  canal.createStatement();

    }catch(ClassNotFoundException e){
        out.println(e);
    }catch(SQLException e){out.println(e);}
    try{
        tabla =  instruccion.executeQuery("select *from unidad");
        out.println("<select name='chofer'>");
        while(tabla.next()){
                out.println("<option value='"+tabla.getString(1)+"'>"+tabla.getString(4)+"<option>");
        }
        out.println("</select>");
        tabla.close();

    }catch(Exception e){out.println(e);}

%>

                                   </td>
                                   <td><b>HORA SERVICIO</b></td>
                                   <td><select name="lstHora" id="lstHora"></select>:<select name="lstMinutos" id="lstMinutos"></select> </td>
                                   <td></td>
                                </tr>
                                <tr>
                              <td><b>LUGAR INI.</b></td>
                              <td>

<%
try{
Class.forName("com.mysql.jdbc.Driver").newInstance();
canal =  DriverManager.getConnection(conexion);instruccion =  canal.createStatement();

    }catch(ClassNotFoundException e){
        out.println(e);
    }catch(SQLException e){out.println(e);}
    try{
        tabla =  instruccion.executeQuery("select *from distrito");
        out.println("<select name='lstLugarInicio' id=lstLugarInicio' size='1'>");
        while(tabla.next()){
                    out.println("<option value='"+tabla.getString(1)+"'>"+tabla.getString(2)+"<option>");
        }
        out.println("</select>");
        tabla.close();

    }catch(Exception e){out.println(e);}

%>
</td>
                              <td> <b>LUGAR FIN</b></td>
                              <td>
<%
try{
Class.forName("com.mysql.jdbc.Driver").newInstance();
canal =  DriverManager.getConnection(conexion);instruccion =  canal.createStatement();

    }catch(ClassNotFoundException e){
        out.println(e);
    }catch(SQLException e){out.println(e);}
    try{
        tabla =  instruccion.executeQuery("select *from distrito");
        out.println("<select name='lstLugarFin' id=lstLugarFin' size='1'>");
        while(tabla.next()){
                out.println("<option value='"+tabla.getString(1)+"'>"+tabla.getString(2)+"<option>");
        }
        out.println("</select>");
        tabla.close();

    }catch(Exception e){out.println(e);}

%>
</td>
<td><a href="#" onclick="Validar();">ADD</a></td>
                             </tr>
                        </table>
                        <br/>

			<div class="entry">
                          <table border="1">
                              <tr>
                              <td><b> ID</b></td>
                              <td><b> USUARIO</b></td>
                              <td><b>CHOFER</b></td>
                              <td> <b>LUGAR INI</b></td>
                              <td> <b>LUGAR FIN</b></td>
                              <td> <b>COSTO</b></td>
                              <td> <b>ACTIVO</b></td>
                              <td>&nbsp;</td>
                              </tr>

                               <tr>
                                   <td>1</td>
                                   <td>Luis Valdez</td>
                                   <td>u2010</td>
                                   <td>local A</td>
                                   <td>Local B</td>
                                   <td>25.00</td>
                                   <td> Si</td>
                                   <td><a href="#">Cancelar</a></td>
                                </tr>
                               <tr>
                                   <td>2</td>
                                   <td>Carlos Contreras</td>
                                   <td>u2011</td>
                                   <td>local B</td>
                                   <td>Local C</td>
                                   <td>35.00</td>
                                   <td> Si</td>
                                   <td><a href="#">Cancelar</a></td>
                                </tr>
                        </table>

                            </div>

                        </div>
                        </div>
			  </form>

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
        </div>
    </body>
</html:html>
