/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package pe.edu.upc.dew.taxiseguro.controller;

import javax.servlet.http.HttpServletRequest;

import org.apache.struts.action.ActionErrors;
import org.apache.struts.action.ActionMapping;
import org.apache.struts.action.ActionMessage;

/**
 *
 * @author Toshiba
 */
public class SedeActionForm extends org.apache.struts.action.ActionForm {

    private String nomSede;
    private String dirSede;
    private String telSede;
    private String distritoSede;
    private String accion;

    
    public String getAccion() {
        return accion;
    }

    public void setAccion(String accion) {
        this.accion = accion;
    }


    public String getDirSede() {
        return dirSede;
    }

    public void setDirSede(String dirSede) {
        this.dirSede = dirSede;
    }

    public String getDistritoSede() {
        return distritoSede;
    }

    public void setDistritoSede(String distritoSede) {
        this.distritoSede = distritoSede;
    }

    public String getNomSede() {
        return nomSede;
    }

    public void setNomSede(String nomSede) {
        this.nomSede = nomSede;
    }

    public String getTelSede() {
        return telSede;
    }

    public void setTelSede(String telSede) {
        this.telSede = telSede;
    }

    public SedeActionForm() {
        super();
        // TODO Auto-generated constructor stub
    }

    /**
     * This is the action called from the Struts framework.
     * @param mapping The ActionMapping used to select this instance.
     * @param request The HTTP Request we are processing.
     * @return
     */
    @Override
    public ActionErrors validate(ActionMapping mapping, HttpServletRequest request) {
        ActionErrors errors = new ActionErrors();



        if (nomSede.length() < 1 || nomSede == null) {

            errors.add("sede", new ActionMessage("errors.sede"));
        }

     

        if (nomSede.length() < 1 || nomSede == null) {

            errors.add("direccion", new ActionMessage("errors.direccion"));
        }
        if (nomSede.length() < 1 || nomSede == null) {

                errors.add("telefono", new ActionMessage("errors.telefono"));
        }


        mapping.getInputForward();

        return errors;


    }
}
