/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package pe.edu.upc.dew.taxiseguro.service;

import pe.edu.upc.dew.taxiseguro.model.ClienteEmpleados;

/**
 *
 * @author Administrador
 */
public interface  ClienteEmpleadoService {
 public ClienteEmpleados buscarEmpleado();
 public ClienteEmpleados IngresoEmpleado(String USCoCliente,String USCoUsuario,String  USCoDoi,
         String  USNoPaterno,String  USNoMaterno,String  USNoNombres,
         String  USCoClave, String  USFlEstado);
}
