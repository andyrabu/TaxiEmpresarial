/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package pe.edu.upc.dew.taxiseguro.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.apache.struts.action.ActionErrors;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;
import org.apache.struts.action.ActionMessage;

/**
 *
 * @author Administrador
 */
public class EmpleadoAction extends org.apache.struts.action.Action {
    private pe.edu.upc.dew.taxiseguro.controller.EmpleadoActionForm formulario;
    

    @Override
    public ActionForward execute(ActionMapping mapping, ActionForm form,
            HttpServletRequest request, HttpServletResponse response)
            throws Exception {
        
        //Obtengo el formulario
        formulario=(pe.edu.upc.dew.taxiseguro.controller.EmpleadoActionForm)form;
        pe.edu.upc.dew.taxiseguro.model.ClienteEmpresa clienteempresa = new pe.edu.upc.dew.taxiseguro.model.ClienteEmpresa();
        clienteempresa.setUsername(formulario.getApMaterno());
        clienteempresa.setPassword(formulario.getApPaterno());
        ActionForward retorno =new ActionForward();
//        if(clienteempresa.getUsername().equals("admin")&& clienteempresa.getPassword().equals("root"))
            retorno=mapping.findForward("welcome2");

        return retorno;


    }
}
