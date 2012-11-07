/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package pe.edu.upc.dew.taxiseguro.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;
import pe.edu.upc.dew.taxiseguro.service.SedeEmpresaService;

/**
 *
 * @author Toshiba
 */
public class SedeAction extends org.apache.struts.action.Action {



    private pe.edu.upc.dew.taxiseguro.controller.SedeActionForm formulario;

    

    public SedeAction() {

         
    }

    //private pe.edu.upc.dew.taxiseguro.controller.PortalActionForm formularioportal;

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

        //Listando las empresas

        //formularioportal=(pe.edu.upc.dew.taxiseguro.controller.PortalActionForm) form;



        //Obtengo el formulario
        formulario = (pe.edu.upc.dew.taxiseguro.controller.SedeActionForm) form;
        pe.edu.upc.dew.taxiseguro.model.EmpresaSedes empresaSede = new pe.edu.upc.dew.taxiseguro.model.EmpresaSedes();
        empresaSede.setNombreSede(formulario.getNomSede());
        empresaSede.setDireccionSede(formulario.getDirSede());
        empresaSede.setTelefonoSede(formulario.getTelSede());
        ActionForward retorno = new ActionForward();
        retorno = mapping.findForward("redireccion");

        return retorno;
    }
}
