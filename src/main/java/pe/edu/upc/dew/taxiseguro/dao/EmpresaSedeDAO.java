/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package pe.edu.upc.dew.taxiseguro.dao;

import java.util.ArrayList;
import pe.edu.upc.dew.taxiseguro.model.EmpresaSedes;

/**
 *
 * @author Toshiba
 */
public interface EmpresaSedeDAO {

    public ArrayList<EmpresaSedes> getEmpresasSedes();
    public boolean existeSede(EmpresaSedes empresasede);
    public void RegistrarEmpresa();



}
