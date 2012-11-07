/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package pe.edu.upc.dew.taxiseguro.controller;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import pe.edu.upc.dew.taxiseguro.model.Reserva;
import pe.edu.upc.dew.taxiseguro.service.ClienteLoginService;
import pe.edu.upc.dew.taxiseguro.service.ClienteLoginUsuarioImpl;

/**
 *
 * @author Toshiba
 */
public class ConsultaDisponibilidadServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

         String opciones = request.getParameter("opcion");
if (opciones.equals("0")){

        ClienteLoginService clienteLoginService = new ClienteLoginUsuarioImpl();

        Reserva objreserva = clienteLoginService.buscaDisponibilidad();

        request.setAttribute("disponibilidad", objreserva);

        request.getRequestDispatcher("consultaDisponibilidad.jsp").forward(request, response);


}

    }
}
