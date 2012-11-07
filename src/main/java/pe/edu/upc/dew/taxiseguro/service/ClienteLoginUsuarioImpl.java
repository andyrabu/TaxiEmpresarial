
package pe.edu.upc.dew.taxiseguro.service;

import pe.edu.upc.dew.taxiseguro.model.ClienteEmpleados;
import pe.edu.upc.dew.taxiseguro.model.ClienteEmpresa;
import pe.edu.upc.dew.taxiseguro.model.EmpresaSedes;
import pe.edu.upc.dew.taxiseguro.model.Reserva;
import pe.edu.upc.dew.taxiseguro.model.Unidad;
import pe.edu.upc.dew.taxiseguro.model.Distrito;
import pe.edu.upc.dew.taxiseguro.model.UsuarioWeb;
import pe.edu.upc.dew.taxiseguro.dao.UsuarioDao;
import pe.edu.upc.dew.taxiseguro.dao.UsuarioWebDaoJdbc;

/**
 *
 * @author Administrador
 */
public class ClienteLoginUsuarioImpl implements ClienteLoginService {

   
     public ClienteEmpresa buscar(String username, String password) {


       System.out.println("ssssssssssssssssssssssssssssssssssssssa"+ username);
       ClienteEmpresa clienteEmpresa1 = new ClienteEmpresa();

       clienteEmpresa1.setNombre("MultiServicios S.A.C");
       clienteEmpresa1.setRUC("10038981175");
       clienteEmpresa1.setUsername(username);
       //clienteEmpresa1.getEmpresaSedes().add(new EmpresaSedes("SEDE OPERATIVA", "Habilitado","JAVIER PRADO 123","222"));
       //clienteEmpresa1.getEmpresaSedes().add(new EmpresaSedes("SEDE ADMINISTRATIVA","Habilitado","SAN ISIDRO","AAA"));
       clienteEmpresa1.getDistritos().add(new Distrito("a", "Lima"));
       clienteEmpresa1.getDistritos().add(new Distrito("b", "El Agustino"));
       return clienteEmpresa1;
    }

    public Reserva buscaDisponibilidad() {
        Reserva reserva = new Reserva();
       reserva.getUnidades().add(new Unidad("00001", "Fermin Valle Rebosio","ALF-05O","disponible"));
       reserva.getUnidades().add(new Unidad("00002", "Carlos Perez Martinez","WDF-47e","disponible"));
       reserva.getUnidades().add(new Unidad("00003", "Fermin Valle Rebosio","RLF-05B","disponible"));
       return reserva ;
    }

    public UsuarioWeb login(String username, String password) {

        UsuarioDao usuarioDao=  new UsuarioWebDaoJdbc();

        UsuarioWeb usuarioweb=usuarioDao.login(username, password);

        

        return usuarioweb;


    }

   

}
