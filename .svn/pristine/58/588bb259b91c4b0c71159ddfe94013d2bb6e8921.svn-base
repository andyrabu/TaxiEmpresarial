/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package pe.edu.upc.dew.taxiseguro.controller;

import pe.edu.upc.dew.taxiseguro.util.Sql;

/**
 *
 * @author Stuart
 */
public class DaoServicio {
    
    public static String insertServicio(ServicioActionForm servicio) {
        String sql = "INSERT INTO servicio(SECoCliente,SECoUsuario," +
                     "SECoServicio,SECoReserva,SEFeServicio,SESsTarifaTot," +
                     "SEFlEstado,SEComentario) VALUES('" + servicio.getCoCliente() +"','" +
                     servicio.getCoUsuario() + "','" + servicio.getCoServicio() + "','" +
                     servicio.getCoReserva() + "','" + servicio.getFeServicio() + "'," +
                     servicio.getSsTarifa() + ",'" + servicio.getFlEstado() + "','" +
                     servicio.getStComentario() + "')";
        return Sql.ejecuta(sql);
    }

}
