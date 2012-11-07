/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package pe.edu.upc.dew.taxiseguro.controller;

import javax.servlet.http.HttpServletRequest;

import org.apache.struts.action.ActionErrors;
import org.apache.struts.action.ActionMapping;
import org.apache.struts.action.ActionMessage;

public class EmpleadoActionForm extends org.apache.struts.action.ActionForm {
    
    private String codigo;
    private String apPaterno;
    private String apMaterno;
    private String nombre;
    private String clave;
    private String dni;
    private String estado;

    public String getCodigo() {
        return codigo;
    }

    public void setCodigo(String codigo) {
        this.codigo = codigo;
    }

 

    public String getApMaterno() {
        return apMaterno;
    }

    public void setApMaterno(String apMaterno) {
        this.apMaterno = apMaterno;
    }

    public String getApPaterno() {
        return apPaterno;
    }

    public void setApPaterno(String apPaterno) {
        this.apPaterno = apPaterno;
    }

    public String getClave() {
        return clave;
    }

    public void setClave(String clave) {
        this.clave = clave;
    }

    public String getDni() {
        return dni;
    }

    public void setDni(String dni) {
        this.dni = dni;
    }

    public String getEstado() {
        return estado;
    }

    public void setEstado(String estado) {
        this.estado = estado;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public EmpleadoActionForm() {
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

        if (codigo.length() < 1 || codigo == null) {
            errors.add("varcodigo", new ActionMessage("errors.Empleado"));
        } 
        if (apPaterno.length() < 1 || apPaterno == null) {
            errors.add("apPaterno", new ActionMessage("errors.apPaterno"));
        }
        if (apMaterno.length() < 1 || apMaterno == null) {
            errors.add("apMaterno", new ActionMessage("errors.apMaterno"));
        }
        if (nombre.length() < 1 || nombre == null) {
            errors.add("nombre", new ActionMessage("errors.nombre"));
        }
        if (clave.length() < 1 || clave == null) {
            errors.add("clave", new ActionMessage("errors.clave"));
        }
        if (dni.length() < 1 || dni == null) {
            errors.add("dni", new ActionMessage("errors.dni"));
        }
         if (estado.length() < 1 || estado == null) {
            errors.add("estado", new ActionMessage("errors.estado"));
        }



        mapping.getInputForward();

        return errors;
    }
}
