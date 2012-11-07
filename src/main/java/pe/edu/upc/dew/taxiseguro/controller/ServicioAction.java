package pe.edu.upc.dew.taxiseguro.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;

/**
 * @author Stuart
 */
public class ServicioAction extends org.apache.struts.action.Action {
    
    /* forward name="success" path="" */
    //private static final String SUCCESS = "success";
    @Override
    public ActionForward execute(ActionMapping mapping, ActionForm form,
            HttpServletRequest request, HttpServletResponse response)
            throws Exception {

        String accion = request.getParameter("accion");
        String msg = null;

        if (accion == null){
        msg = "Campos requeridos, verificar!";
        } else if (accion.compareTo("INS")==0){
        msg = DaoServicio.insertServicio((ServicioActionForm) form);
        }
        if(msg == null){
        msg = "Actualización correcta";
        }
        request.getSession().setAttribute("msg", msg);
        return mapping.findForward("mensaje");
    }
}
