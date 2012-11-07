
package pe.edu.upc.dew.taxiseguro.controller;


import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import org.apache.struts.action.ActionErrors;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;
import org.apache.struts.action.ActionMessage;
import pe.edu.upc.dew.taxiseguro.model.*;
import pe.edu.upc.dew.taxiseguro.service.ClienteEmpleadoImpl;
import pe.edu.upc.dew.taxiseguro.service.ClienteEmpleadoService;

public class IngresarEmpleadosAction extends org.apache.struts.action.Action {

    private pe.edu.upc.dew.taxiseguro.controller.EmpleadoActionForm formulario;

    private ClienteEmpleadoService clienteEmpleadoService;

    public IngresarEmpleadosAction() {
        this.clienteEmpleadoService = new ClienteEmpleadoImpl();
    }

    @Override
    public ActionForward execute(ActionMapping mapping, ActionForm form,

            HttpServletRequest request, HttpServletResponse response)
            throws Exception {
        //Obtengo el formulario
        formulario=(pe.edu.upc.dew.taxiseguro.controller.EmpleadoActionForm)form;
        pe.edu.upc.dew.taxiseguro.model.ClienteEmpleados clienteEmpleados = new pe.edu.upc.dew.taxiseguro.model.ClienteEmpleados();
        clienteEmpleados.setUSCoUsuario(formulario.getCodigo());
        clienteEmpleados.setUSCoClave(formulario.getClave());
        // Creamos una sesión
        HttpSession session = (HttpSession) request.getSession();
        // Insertamos los atributos obtenidos del formulario en un objeto Persona
        ActionForward retorno = new ActionForward();
        if (clienteEmpleadoService.IngresoEmpleado(clienteEmpleados.getUSCoCliente(), clienteEmpleados.getUSCoUsuario(),clienteEmpleados.getUSCoDoi(), clienteEmpleados.getUSNoPaterno(), clienteEmpleados.getUSNoMaterno(),clienteEmpleados.getUSNoNombres(), clienteEmpleados.getUSCoClave(), clienteEmpleados.getUSFlEstado()) != null) {

//            ClienteEmpleados clienteEmpleados2 = clienteEmpleadoService.IngresoEmpleado(clienteEmpleados.getUSCoCliente(), clienteEmpleados.getUSCoUsuario(),clienteEmpleados.getUSCoDoi(), clienteEmpleados.getUSNoPaterno(), clienteEmpleados.getUSNoMaterno(),clienteEmpleados.getUSNoNombres(), clienteEmpleados.getUSCoClave(), clienteEmpleados.getUSFlEstado());

                retorno = mapping.findForward("Welcome2");
        }
        else {
            //Seteo el error
            ActionErrors errors = new ActionErrors();
             errors.add("no_existe", new ActionMessage("errors.impedir"));
             //almaceno el error
             saveErrors(request, errors);
             retorno=mapping.getInputForward();
             }
        return retorno;
    }
}
