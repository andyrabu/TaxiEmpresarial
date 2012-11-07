
package pe.edu.upc.dew.taxiseguro.service;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import pe.edu.upc.dew.taxiseguro.model.ClienteEmpleados;
import pe.edu.upc.dew.taxiseguro.model.ClienteEmpresa;
import pe.edu.upc.dew.taxiseguro.model.EmpresaSedes;
import pe.edu.upc.dew.taxiseguro.model.Reserva;
import pe.edu.upc.dew.taxiseguro.model.Unidad;
import pe.edu.upc.dew.taxiseguro.model.Distrito;
import pe.edu.upc.dew.taxiseguro.model.UsuarioWeb;
import pe.edu.upc.dew.taxiseguro.dao.ClienteEmpresaDao;
import pe.edu.upc.dew.taxiseguro.dao.ClienteEmpresaJdbc;
import pe.edu.upc.dew.taxiseguro.dao.UsuarioWebDaoJdbc;
import pe.edu.upc.dew.taxiseguro.util.JdbcUtils;

/**
 *
 * @author Administrador
 */
public class ClienteEmpresaImpl implements ClienteEmpresaService {

    public ClienteEmpresa buscar() {
        ClienteEmpresaDao empresaDao = new ClienteEmpresaJdbc();

        ClienteEmpresa cliente_empresa= empresaDao.getClienteEmpresas();



        return cliente_empresa;

    }

}
