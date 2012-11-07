/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package pe.edu.upc.dew.taxiseguro.service;

import java.util.ArrayList;
import java.util.List;
import pe.edu.upc.dew.taxiseguro.dao.EmpresaSedeDAO;
import pe.edu.upc.dew.taxiseguro.dao.EmpresaSedeDAOJdbc;
import pe.edu.upc.dew.taxiseguro.model.EmpresaSedes;

/**
 *
 * @author Toshiba
 */
public class SedeEmpresaImp implements SedeEmpresaService{

   
     private ArrayList<EmpresaSedes> empresaSedes;

    public SedeEmpresaImp() {
        empresaSedes = new ArrayList<EmpresaSedes>();
    }



    public ArrayList<EmpresaSedes> getListadodeEmpresasSedes() {

         EmpresaSedeDAO empresaSedeDAO=  new EmpresaSedeDAOJdbc();

     
        empresaSedes= empresaSedeDAO.getEmpresasSedes();
     //retornando la lista de Sedes de la empresa
        return empresaSedes;
        
    }

}
