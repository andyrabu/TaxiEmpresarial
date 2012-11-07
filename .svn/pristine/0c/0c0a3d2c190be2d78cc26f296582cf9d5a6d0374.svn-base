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
import pe.edu.upc.dew.taxiseguro.model.ClienteEmpresa;

import pe.edu.upc.dew.taxiseguro.service.ClienteLoginService;
import pe.edu.upc.dew.taxiseguro.service.ClienteLoginUsuarioImpl;

/**
 *
 * @author Administrador
 */
public class LoginClienteServlet extends HttpServlet {

  @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        // Recuperamos datos del view
        String username = req.getParameter("username");
        String password = req.getParameter("password");
        // Llamar al model
        ClienteLoginService clienteLoginService = new ClienteLoginUsuarioImpl();
       // ClienteEmpresa clienteEmpresa = clienteLoginService.login(username, password);
        ClienteEmpresa clienteEmpresa1 = clienteLoginService.buscar(username, password);
     //   EmpresaSedes empresaSede=clienteLoginService.administracionSedes(username, password);
        // Setear el model para el view
    //    req.setAttribute("empresasedes", empresaSede);
        // Seleccionar la siguiente vista, flujo de navegacion
        if (username.equals("hjvaldez")) {
          //  req.setAttribute("loginCliente", clienteEmpresa);
            req.getRequestDispatcher("Portal_Cliente.jsp").forward(req, resp);
        } else {
            //req.setAttribute("loginCliente", clienteEmpresa);
            req.setAttribute("sedeEmpresa", clienteEmpresa1);
            req.getRequestDispatcher("Portal.jsp").forward(req, resp);
        }
    }


    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
        PrintWriter writer = response.getWriter();
         String opcion = request.getParameter("opcion");
if (opcion.equals("1")){

     String username = request.getParameter("username");
        String password = request.getParameter("password");
        // Llamar al model
        ClienteLoginService clienteLoginService = new ClienteLoginUsuarioImpl();
//        ClienteEmpresa clienteEmpresa = clienteLoginService.login(username, password);
        ClienteEmpresa clienteEmpresa1 = clienteLoginService.buscar(username, password);

  //      request.setAttribute("loginCliente", clienteEmpresa);
        request.setAttribute("sedeEmpresa", clienteEmpresa1);
     //

    request.getRequestDispatcher("ConsultaEmpleadosCliente.jsp").forward(request, response);
}else{
    request.getRequestDispatcher("opcion2.jsp").forward(request, response);
}
    }
    @Override
    public String getServletInfo() {
        return "Short description";
    }
}
