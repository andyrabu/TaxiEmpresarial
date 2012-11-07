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
 * @author Stuart
 */
public class ServicioActionForm extends org.apache.struts.action.ActionForm {
    
    private String coCliente;
    private String coUsuario;
    private String coServicio;
    private String coReserva;
    private String feServicio;
    private String ssTarifa;
    private String flEstado;
    private String stComentario;

    public String getCoReserva() {
        return coReserva;
    }

    public void setCoReserva(String coReserva) {
        this.coReserva = coReserva;
    }

    public String getCoServicio() {
        return coServicio;
    }

    public void setCoServicio(String coServicio) {
        this.coServicio = coServicio;
    }

    public String getCoUsuario() {
        return coUsuario;
    }

    public void setCoUsuario(String coUsuario) {
        this.coUsuario = coUsuario;
    }

    public String getFeServicio() {
        return feServicio;
    }

    public void setFeServicio(String feServicio) {
        this.feServicio = feServicio;
    }

    public String getFlEstado() {
        return flEstado;
    }

    public void setFlEstado(String flEstado) {
        this.flEstado = flEstado;
    }

    public String getSsTarifa() {
        return ssTarifa;
    }

    public void setSsTarifa(String ssTarifa) {
        this.ssTarifa = ssTarifa;
    }

    public String getCoCliente() {
        return coCliente;
    }

    public void setCoCliente(String coCliente) {
        this.coCliente = coCliente;
    }

    public String getStComentario() {
        return stComentario;
    }

    public void setStComentario(String stComentario) {
        this.stComentario = stComentario;
    }


   
    public ServicioActionForm() {
        super();
        // TODO Auto-generated constructor stub
    }

    /**
     * This is the action called from the Struts framework.
     * @param mapping The ActionMapping used to select this instance.
     * @param request The HTTP Request we are processing.
     * @return
     */
    public ActionErrors validate(ActionMapping mapping, HttpServletRequest request) {
        ActionErrors errors = new ActionErrors();
        if (getStComentario() == null || getStComentario().length() < 1) {
            errors.add("servicio", new ActionMessage("errors.servicio.comentario.requerido"));
            // TODO: add 'error.name.required' key to your resources
        }
        return errors;
    }
}
