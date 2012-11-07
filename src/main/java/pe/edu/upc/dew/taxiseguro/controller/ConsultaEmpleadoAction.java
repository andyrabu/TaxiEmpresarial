/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package pe.edu.upc.dew.taxiseguro.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;

import pe.edu.upc.dew.taxiseguro.model.*;
import pe.edu.upc.dew.taxiseguro.service.ClienteEmpleadoImpl;
import pe.edu.upc.dew.taxiseguro.service.ClienteEmpresaImpl;
import pe.edu.upc.dew.taxiseguro.service.ClienteEmpleadoService;

/**
 *
 * @author Administrador
 */
public class ConsultaEmpleadoAction extends org.apache.struts.action.Action {

    /* forward name="success" path="" */
    private static final String SUCCESS = "success";
    private ClienteEmpleadoService clienteempleadoservice;

    public ConsultaEmpleadoAction() {
        this.clienteempleadoservice = new ClienteEmpleadoImpl();
    }

    @Override
    public ActionForward execute(ActionMapping mapping, ActionForm form,
            HttpServletRequest request, HttpServletResponse response)
            throws Exception {
        pe.edu.upc.dew.taxiseguro.model.ClienteEmpleados clienteEmpleados = new pe.edu.upc.dew.taxiseguro.model.ClienteEmpleados();
        clienteEmpleados.getUSCoClave();
        clienteEmpleados.getUSCoCliente();
        clienteEmpleados.getUSCoDoi();
        clienteEmpleados.getUSCoUsuario();
        clienteEmpleados.getUSFlEstado();
        clienteEmpleados.getUSNoMaterno();
        clienteEmpleados.getUSNoPaterno();
        clienteEmpleados.getUSNoNombres();
        HttpSession session = (HttpSession) request.getSession();
        // Insertamos los atributos obtenidos del formulario en un objeto Persona
        ActionForward retorno = new ActionForward();
        ClienteEmpleados obj3 = new ClienteEmpleados();
        obj3 = clienteempleadoservice.buscarEmpleado();
        request.getSession().setAttribute("empleadoEmpresa", obj3);
        retorno = mapping.findForward("empleadoEmpresa");
        return retorno;
    }
}
