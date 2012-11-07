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
import pe.edu.upc.dew.taxiseguro.service.ClienteEmpresaImpl;
import pe.edu.upc.dew.taxiseguro.service.ClienteEmpresaService;

/**
 *
 * @author Administrator
 */
public class ReservaAction extends org.apache.struts.action.Action {
    
    /* forward name="success" path="" */
    private static final String SUCCESS = "success";

    private ClienteEmpresaService clienteempresaservice;

    public ReservaAction() {

         this.clienteempresaservice = new ClienteEmpresaImpl();
    }

    
    /**
     * This is the action called from the Struts framework.
     * @param mapping The ActionMapping used to select this instance.
     * @param form The optional ActionForm bean for this request.
     * @param request The HTTP Request we are processing.
     * @param response The HTTP Response we are processing.
     * @throws java.lang.Exception
     * @return
     */
    @Override
    public ActionForward execute(ActionMapping mapping, ActionForm form,
            HttpServletRequest request, HttpServletResponse response)
            throws Exception {
        pe.edu.upc.dew.taxiseguro.model.ClienteEmpresa clienteEmpresa = new pe.edu.upc.dew.taxiseguro.model.ClienteEmpresa();
        clienteEmpresa.getRUC();
        clienteEmpresa.getNombre();

         HttpSession session = (HttpSession) request.getSession();
        // Insertamos los atributos obtenidos del formulario en un objeto Persona

        ActionForward retorno =new ActionForward();

        ClienteEmpresa obj2 = new ClienteEmpresa();
        obj2 = clienteempresaservice.buscar();

        session.setAttribute("empresa", obj2);

        retorno = mapping.findForward("reserva");

        return retorno;
    }
}
