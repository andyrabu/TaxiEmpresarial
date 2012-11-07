package pe.edu.upc.dew.taxiseguro.dao;


import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.logging.Level;
import java.util.logging.Logger;
import pe.edu.upc.dew.taxiseguro.model.*;
import pe.edu.upc.dew.taxiseguro.util.JdbcUtils;

public class ClienteEmpresaJdbc implements ClienteEmpresaDao {

    public ClienteEmpresa getClienteEmpresas() {
        Connection conn = JdbcUtils.getConnection();
        try {
            Statement st = conn.createStatement();
            ResultSet rs = st.executeQuery("select CLCoCliente,CLNoRazSocial from cliente");

            if (rs.next()) {
                ClienteEmpresa empresa = new ClienteEmpresa();
                empresa.setRUC(rs.getString("CLCoCliente"));
                empresa.setNombre(rs.getString("CLNoRazSocial"));
                return empresa;
            }
        } catch (SQLException ex) {
            Logger.getLogger(UsuarioWebDaoJdbc.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;
    }

    public ClienteEmpleados getClienteEmpleados() {
        Connection conn = JdbcUtils.getConnection();
        try {
            Statement st = conn.createStatement();
            ResultSet rs = st.executeQuery("select USCoCliente,USCoUsuario,USCoDoi,USNoPaterno,USNoMaterno,USNoNombres,USCoClave,USFlEstado from usuario");

            while (rs.next()) {
                ClienteEmpleados empleados = new ClienteEmpleados();
                empleados.setUSCoCliente(rs.getString("USCoCliente"));
                empleados.setUSCoUsuario(rs.getString("USCoUsuario"));
                empleados.setUSCoDoi(rs.getString("USCoDoi"));
                empleados.setUSNoPaterno(rs.getString("USNoPaterno"));
                empleados.setUSNoMaterno(rs.getString("USNoMaterno"));
                empleados.setUSNoNombres(rs.getString("USNoNombres"));
                empleados.setUSFlEstado(rs.getString("USFlEstado"));
                return empleados;
            }
        } catch (SQLException ex) {
            Logger.getLogger(UsuarioWebDaoJdbc.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;
    }

    public ClienteEmpleados IngresoEmpleado(String USCoCliente, String USCoUsuario, String USCoDoi,
            String USNoPaterno, String USNoMaterno, String USNoNombres,
            String USCoClave, String USFlEstado) {
        Connection conn = JdbcUtils.getConnection();
        ClienteEmpleados clienteEmpleados = null;
        Statement st = null;
        try {
            st = conn.createStatement();
            // Statement st = conn.createStatement();
            st.execute("INSERT INTO usuario VALUES('" + USCoCliente + "', '" + USCoUsuario + "', '" + USCoDoi + "',"
                    + " '" + USNoPaterno + "', '" + USNoMaterno + "', '" + USNoNombres + "',  '" + USCoClave + "',  '" + USFlEstado + "' )");
        System.out.println("ssssssssssssssssssssssssssssssssssssssa"+ st);
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            JdbcUtils.closeStatement(st);
            JdbcUtils.closeConnection(conn);
        }
        return clienteEmpleados;
    }
}
