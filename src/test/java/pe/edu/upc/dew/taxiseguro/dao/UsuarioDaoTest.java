package pe.edu.upc.dew.taxiseguro.dao;

import org.junit.Assert;
import org.junit.Test;
import pe.edu.upc.dew.taxiseguro.model.UsuarioWeb;

public class UsuarioDaoTest {

    @Test
    public void elUsuarioConUsernameAdminTieneNombreAdministrador(){
        UsuarioDao usuarioDao = new UsuarioWebDaoJdbc();
        UsuarioWeb usuario = usuarioDao.getUsuarioPorUsername("U00001");
        Assert.assertEquals("Carlos Alberto", usuario.getUSNoNombres());
    }

}
