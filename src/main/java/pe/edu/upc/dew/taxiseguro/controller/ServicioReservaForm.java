package pe.edu.upc.dew.taxiseguro.controller;

import javax.servlet.http.HttpServletRequest;

import org.apache.struts.action.ActionErrors;
import org.apache.struts.action.ActionMapping;
import org.apache.struts.action.ActionMessage;

public class ServicioReservaForm extends org.apache.struts.action.ActionForm {

    private String det_conf_servicio;
    private double tarifa_tot;

    public String getDet_conf_servicio() {
        return det_conf_servicio;
    }

    public void setDet_conf_servicio(String det_conf_servicio) {
        this.det_conf_servicio = det_conf_servicio;
    }

    public double getTarifa_tot() {
        return tarifa_tot;
    }

    public void setTarifa_tot(double tarifa_tot) {
        this.tarifa_tot = tarifa_tot;
    }

    @Override
    public ActionErrors validate(ActionMapping mapping, HttpServletRequest request) {
        ActionErrors errors = new ActionErrors();

        if (det_conf_servicio.length() < 1 || det_conf_servicio == null) {
            errors.add("detalle_ser", new ActionMessage("servicio.err_det"));
        }
        if (tarifa_tot < 0) {
            errors.add("tarifa_tot", new ActionMessage("servicio.err_to"));
        }

        mapping.getInputForward();

        return errors;
    }

}