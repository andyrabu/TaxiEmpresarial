/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package pe.edu.upc.dew.taxiseguro.dao;

import java.sql.*;
import java.util.ArrayList;

import pe.edu.upc.dew.taxiseguro.model.EmpresaSedes;
import pe.edu.upc.dew.taxiseguro.util.JdbcUtils;

/**
 *
 * @author Toshiba
 */
public class EmpresaSedeDAOJdbc implements EmpresaSedeDAO{

    public ArrayList<EmpresaSedes> getEmpresasSedes() {

        ArrayList<EmpresaSedes> empresasSedelst =new ArrayList<EmpresaSedes>();
        Connection conn = JdbcUtils.getConnection();

        EmpresaSedes empresasSedes = null;
        Statement st = null;

        ResultSet rs = null;
        try {


            st = conn.createStatement();
            // Statement st = conn.createStatement();
            rs = st.executeQuery("select SECoCliente, SECoSede, SETxDireccion, SETxTelefono, SECoDistrito, SEFlEstado from sede");

            while (rs.next()) {
                empresasSedes = new EmpresaSedes();
                empresasSedes.setNombreEmpresa(rs.getString("SECoCliente"));
                empresasSedes.setNombreSede(rs.getString("SECoSede"));
                empresasSedes.setDireccionSede(rs.getString("SETxTelefono"));
                empresasSedes.setTelefonoSede(rs.getString("SETxTelefono"));
                empresasSedes.setDistritoo(rs.getString("SECoDistrito"));
                empresasSedes.setEstado(rs.getString("SEFlEstado"));

                empresasSedelst.add(empresasSedes);

                
            }


        } catch (Exception e) {
            e.printStackTrace();
        } finally {

            JdbcUtils.closeResultSet(rs);
            JdbcUtils.closeStatement(st);
            JdbcUtils.closeConnection(conn);
        }

        return empresasSedelst;

    




    }

    public void RegistrarEmpresa() {
        throw new UnsupportedOperationException("Not supported yet.");
    }

    public boolean existeSede(EmpresaSedes empresasede) {
        throw new UnsupportedOperationException("Not supported yet.");
    }

}
