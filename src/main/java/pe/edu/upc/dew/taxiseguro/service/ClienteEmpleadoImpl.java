/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package pe.edu.upc.dew.taxiseguro.service;

import pe.edu.upc.dew.taxiseguro.dao.ClienteEmpresaDao;
import pe.edu.upc.dew.taxiseguro.dao.ClienteEmpresaJdbc;
import pe.edu.upc.dew.taxiseguro.model.ClienteEmpleados;

/**
 *
 * @author Administrador
 */
public class ClienteEmpleadoImpl implements ClienteEmpleadoService {

    public ClienteEmpleados buscarEmpleado() {
        ClienteEmpresaDao empresaDao = new ClienteEmpresaJdbc();
        ClienteEmpleados ClienteEmpleado= empresaDao.getClienteEmpleados();
        return ClienteEmpleado;
}


        public ClienteEmpleados IngresoEmpleado(String USCoCliente,String USCoUsuario,String  USCoDoi,
         String  USNoPaterno,String  USNoMaterno,String  USNoNombres,
         String  USCoClave, String  USFlEstado) {

        ClienteEmpresaDao clienteEmpresaDao = new ClienteEmpresaJdbc();

        ClienteEmpleados clienteEmpleados=clienteEmpresaDao.IngresoEmpleado(USCoCliente,USCoUsuario,USCoDoi,
         USNoPaterno,USNoMaterno,USNoNombres,USCoClave,USFlEstado);
        return clienteEmpleados;
}
        }