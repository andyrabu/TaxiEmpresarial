<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">


<%@ taglib uri="http://struts.apache.org/tags-bean"
           prefix="bean" %>
<%@ taglib uri="http://struts.apache.org/tags-html"
           prefix="html" %>

<%@page import="pe.edu.upc.dew.taxiseguro.util.JdbcUtils" %>
<%@page import="pe.edu.upc.dew.taxiseguro.util.Sql" %>
<%@page import="java.util.List" %>

<html>
    <head>
        <meta http-equiv="Content-Type"
              content="text/html; charset=UTF-8">
        <title> Confirma Servicio </title>
       </head>
        <body>
        <p>&nbsp;</p>
        <p class="titulo">Confirma Servicio</p>
<% Object[] fila=null; %>
      <html:form action="logServicio">
      <html:hidden property="accion" value="INS" />
            <table border="0">


                <tr>
                    <td>Codigo Reserva</td>
                    <td>
                        <html:select property="coReserva">
                            <%
        List list = Sql.consulta("SELECT RECoReserva, RECoCliente, RECoUsuario, RECoUnidad, REFeReserva, REFeHoReserva, RESsTarifaTot, REFlEstado FROM reserva");
        for (int fil = 1; fil < list.size(); ++fil) {
            fila = (Object[]) list.get(fil);%>
                            <html:option
                                value="<%=fila[0].toString()%>"> <%=fila[0].toString()%>
                            </html:option>
                            <%} %>
                        </html:select>
                    </td>
                </tr>
                 <tr>
                    <td>Codigo de Servicio : </td>
                    <td>
                        <html:text property="coServicio"
                        size="30" maxlength="50" value="C00008"> </html:text></>
                    </td>

                <tr>
                    <td>Codigo Cliente : </td>
                    <td>
                        <html:text property="coCliente"
                        size="30" maxlength="50" value="<%=fila[1].toString()%>"> <%=fila[1].toString()%> </html:text></>
                    </td>
                </tr>
                          <tr>
                    <td>Codigo de Usuario  : </td>
                    <td>
                        <html:text property="coUsuario"
                        size="30" maxlength="50" value ="<%=fila[2].toString()%>"> <%=fila[2].toString()%> </html:text>
                    </td>
                </tr>
                <tr>
                    <td>Codigo de Unidad : </td>
                    <td>
                        <html:text property="RECoUnidad"
                        size="30" maxlength="50" value="<%=fila[3].toString()%>"> <%=fila[3].toString()%> </html:text>
                    </td>
                </tr>

                 <tr>
                    <td>Fecha de Reserva : </td>
                    <td>
                        <html:text property="feServicio"
                        size="30" maxlength="50" value="<%=fila[4].toString()%>"> <%=fila[4].toString()%> </html:text>
                    </td>
                </tr>

                 <tr>
                    <td>Hora de Reserva  : </td>
                    <td>
                        <html:text property="REFeHoReserva"
                        size="30" maxlength="50" value="<%=fila[5].toString()%>"> <%=fila[5].toString()%> </html:text>
                    </td>
                </tr>

                 <tr>
                    <td>Tarifa : </td>
                    <td>
                        <html:text property="ssTarifa"
                        size="30" maxlength="50" value="<%=fila[6].toString()%>"> <%=fila[6].toString()%> </html:text>
                    </td>
                </tr>
                <tr>
                    <td>Estado :</td>
                    <td>
                        <html:text property="flEstado"
                        size="30" maxlength="50" value="<%=fila[7].toString()%>"> <%=fila[7].toString()%> </html:text>
                    </td>
                </tr>
                 <tr>
                    <td>Comentario : </td>
                    <td>
                        <html:text property="stComentario"
                        size="30" maxlength="50" value="">  </html:text>
                    </td>
                </tr>
                <tr>
                    <td align="center" colspan="2"><br>
                        <html:submit value="Grabar" />
                    </td>
                </tr>
            </table>
        </html:form>

        <p class="center">
            <a href="/Home.jsp">Cancelar</a>
        </p>
    </body>
</html>

