/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package pe.edu.upc.dew.taxiseguro.controller;

import java.util.ArrayList;
import java.util.List;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;
import pe.edu.upc.dew.taxiseguro.model.EmpresaSedes;
import pe.edu.upc.dew.taxiseguro.service.SedeEmpresaImp;
import pe.edu.upc.dew.taxiseguro.service.SedeEmpresaService;

/**
 *
 * @author Toshiba
 */
public class PortalAction extends org.apache.struts.action.Action {

    /* forward name="success" path="" */
    //  private static final String SUCCESS = "success";
    private pe.edu.upc.dew.taxiseguro.controller.PortalActionForm formularioportal;
    private SedeEmpresaService sedeempresaservice;

    public PortalAction() {

        this.sedeempresaservice = new SedeEmpresaImp();
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

        formularioportal = (pe.edu.upc.dew.taxiseguro.controller.PortalActionForm) form;


        pe.edu.upc.dew.taxiseguro.model.EmpresaSedes empresaSede = new pe.edu.upc.dew.taxiseguro.model.EmpresaSedes();

        String accion = formularioportal.getAccion();

        HttpSession session = (HttpSession) request.getSession();
        pe.edu.upc.dew.taxiseguro.model.UsuarioWeb usuarioweb = (pe.edu.upc.dew.taxiseguro.model.UsuarioWeb) session.getAttribute("usuario");
        String usuario = usuarioweb.getUSCoUsuario();

        List<EmpresaSedes> listadoempresaSedes = sedeempresaservice.getListadodeEmpresasSedes();

        System.out.println("listadoooo tiene  " + listadoempresaSedes.size());

        ActionForward retorno = new ActionForward();

        session.setAttribute("listasedes", listadoempresaSedes);


        retorno = mapping.findForward("sede");


        System.out.println("Esta es la accion a realizar " + accion);

        return retorno;
    }
}
