package pe.edu.upc.dew.taxiseguro.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import pe.edu.upc.dew.taxiseguro.model.ClienteEmpresa;
import pe.edu.upc.dew.taxiseguro.service.ClienteLoginService;
import pe.edu.upc.dew.taxiseguro.service.ClienteLoginUsuarioImpl;

public class PortalClienteservlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        String username = req.getParameter("txtUser");
        String password = req.getParameter("password");

        ClienteLoginService clienteLoginService = new ClienteLoginUsuarioImpl();
        ClienteEmpresa clienteEmpresa1 = clienteLoginService.buscar(username, password);
        req.setAttribute("sedeEmpresa", clienteEmpresa1);

        req.getRequestDispatcher("MantenimientoSedes.jsp").forward(req, resp);

    }

      @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
      
  String opciones = request.getParameter("opcion");
if (opciones.equals("1")){


    String username = request.getParameter("txtUser");
        String password = request.getParameter("password");

        ClienteLoginService clienteLoginService = new ClienteLoginUsuarioImpl();
        ClienteEmpresa clienteEmpresa1 = clienteLoginService.buscar(username, password);
        request.setAttribute("sedeEmpresa", clienteEmpresa1);

    request.getRequestDispatcher("MantenimientoSedes.jsp").forward(request, response);
}else{


    request.getRequestDispatcher("consultaDisponibilidad.jsp").forward(request, response);
}
    }
}
