/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package pe.edu.upc.dew.taxiseguro.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import org.apache.struts.action.ActionErrors;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;
import org.apache.struts.action.ActionMessage;
import pe.edu.upc.dew.taxiseguro.model.UsuarioWeb;
import pe.edu.upc.dew.taxiseguro.service.ClienteLoginService;
import pe.edu.upc.dew.taxiseguro.service.ClienteLoginUsuarioImpl;

/**
 *
 * @author win7
 */
public class LoginAction extends org.apache.struts.action.Action {

    private pe.edu.upc.dew.taxiseguro.controller.LoginActionForm formulario;
    private ClienteLoginService clienteloginservice;

    public LoginAction() {

         this.clienteloginservice = new ClienteLoginUsuarioImpl();
    }



    /* forward name="success" path="" */
   // private static final String SUCCESS = "success";
    
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
        //Obtengo el formulario
        formulario=(pe.edu.upc.dew.taxiseguro.controller.LoginActionForm)form;
        pe.edu.upc.dew.taxiseguro.model.UsuarioWeb usuarioweb = new pe.edu.upc.dew.taxiseguro.model.UsuarioWeb();
        usuarioweb.setUSCoUsuario(formulario.getUsername());
        usuarioweb.setUSCoClave(formulario.getPwd());

        // Creamos una sesión
        HttpSession session = (HttpSession) request.getSession();
        // Insertamos los atributos obtenidos del formulario en un objeto Persona

        ActionForward retorno = new ActionForward();

        if (clienteloginservice.login(usuarioweb.getUSCoUsuario(), usuarioweb.getUSCoClave()) != null) {

            UsuarioWeb usuarioWeb2 = clienteloginservice.login(usuarioweb.getUSCoUsuario(), usuarioweb.getUSCoClave());
            if (usuarioWeb2.getUSFlEstado().equals("1")) { //portalcliente
                session.setAttribute("usuario", usuarioWeb2);
                retorno = mapping.findForward("welcome");
            } else {
                retorno = mapping.findForward("welcome3");
            }

       


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
