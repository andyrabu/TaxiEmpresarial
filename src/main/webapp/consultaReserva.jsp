<%-- 
    Document   : consultaReserva
    Created on : 09/12/2010, 01:28:10 PM
    Author     : Stuart
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

<%@ taglib uri="http://struts.apache.org/tags-bean"
           prefix="bean" %>
<%@ taglib uri="http://struts.apache.org/tags-html"
           prefix="html" %>

<%@page import="pe.edu.upc.dew.taxiseguro.util.Sql" %>
<%@page import="java.util.List" %>
<%@page import="java.util.ArrayList" %>
<%@page import="java.util.Arrays"%>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title> Confirma Servicio </title>
        <%
        String RECoReserva = request.getParameter("CoReserva");
        String SECoReserva = request.getParameter("CoReserva");
        %>
    </head>


<body class="iframe">
        <p class="titulo">Confirma Servicio</p>

        <%
        out.println("<form action='confirmaServicio.jsp' method='post'>");
        out.println("<table border='0'>");
        // Categorías
        out.println("<tr>");
        out.println("<td>Codigo Reserva</td>");
        out.println("<td>");
        out.println("<select name='CoReserva' onchange='javascript:document.forms[0].submit()'>");
        List rsCat = Sql.consulta("select RECoReserva from reserva");

        for (int fil = 1; fil < rsCat.size(); ++fil) {
            Object[] fila = (Object[]) rsCat.get(fil);

            if (RECoReserva != null) {
                if (RECoReserva.compareTo(fila[0].toString()) == 0) {
                    out.println("<option value='" + fila[0] + "' selected>" + fila[0] + "</option>");
                    RECoReserva = fila[0].toString();
                } else {
                    out.println("<option value='" + fila[0] + "'>" + fila[0] + "</option>");
                }
            } else {
                out.println("<option value='" + fila[0] + "'>" + fila[0] + "</option>");
                if (fil == 1) {
                    RECoReserva = fila[0].toString();
                }
            }
        }
        //RECoReserva = SECoReserva;
        out.println("</select></td></tr></table></form>");

        // Los temas
        List rsTem = Sql.consulta("SELECT SECoCliente,SECoUsuario,SECoServicio,SECoReserva,SEFeServicio,SESsTarifaTot,SEFlEstado,SEComentario FROM servicio WHERE SECoReserva='" + RECoReserva +"'");

        out.println("<table border='2' width='90%'>");
        int fil = 0;
        for (; fil < rsTem.size(); ++fil) {
             Object[] fila = (Object[]) rsTem.get(fil);

               for (int col = 0; col < fila.length; ++col) {
                   if (fil == 0) {	// los títulos
                      if (col == (fila.length - 1)) {
                          out.println("<th>" + fila[col] + "</th>");
                         } else {
                           out.println("<th>" + fila[col] + "</th>");
                         }
                   } else {    // data

                   Object str = fila[col];
                    if (str == null) {
                        str = "";
                    }
                    if (col == (fila.length - 1)) {
                        out.println("<td align='right'>" + (str.toString().length() != 0 ? str.toString()
                                : "&nbsp;") + "</td>");
                    } else {
                        out.println("<td align='right'>" + (str.toString().length() != 0 ? str.toString()
                                : "&nbsp;") + "</td>");
                    }
                }
            }
            out.println("</tr>");
         }
          out.println("<tr bgcolor=" + ((fil % 2) == 1 ? "LightGreen" : "Cyan") + ">");
           out.println("</tr>");
        out.println("</table>");


       List rsRutas = Sql.consulta("SELECT SETxDireccion as 'Direccion', RSSsTarifa from reservasede INNER JOIN reserva ON reserva.RECoReserva=reservasede.RSCoReserva INNER JOIN sede ON reservasede.RSCoSede=sede.SECoSede where RSCoReserva ='" + RECoReserva + "'group by SECoSede");

        out.println("<table border='2' width='90%'>");
        int fill = 0;
        for (; fill < rsRutas.size(); ++fill) {
                  Object[] filaR = (Object[]) rsRutas.get(fill);

                       for (int col = 0; col < filaR.length; ++col) {
                if (fill == 0) {	// los títulos
                    if (col == (filaR.length - 1)) {
                        out.println("<th>" + filaR[col] + "</th>");
                    } else {
                        out.println("<th>" + filaR[col] + "</th>");
                    }
                } else {    // data
                    Object strR = filaR[col];
                    if (strR == null) {
                        strR = "";
                    }
                    if (col == (filaR.length - 1)) {
                        out.println("<td align='right'>" + (strR.toString().length() != 0 ? strR.toString()
                                : "&nbsp;") + "</td>");
                    } else {
                        out.println("<td>" + (strR.toString().length() != 0 ? strR : "&nbsp;") + "</td>");
                    }
                }
            }
            out.println("</tr>");
        }
        out.println("<tr bgcolor=" + ((fil % 2) == 1 ? "LightGreen" : "Cyan") + ">");
        out.println("</tr>");
        out.println("</table>");

        %>


        <p class="center">
            <a href="/home.jsp"> Página Principal</a>
        </p>

</body>

</html>