/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package pe.edu.upc.dew.taxiseguro.controller;

import javax.servlet.http.HttpServletRequest;

import org.apache.struts.action.ActionErrors;
import org.apache.struts.action.ActionMapping;
import org.apache.struts.action.ActionMessage;

/**
 *
 * @author win7
 */
public class LoginForm extends org.apache.struts.action.ActionForm {

    private String username;
    private String pwd;

    public String getPwd() {
        return pwd;
    }

    public void setPwd(String pwd) {
        this.pwd = pwd;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    /**
     * @return
     */
    public LoginForm() {
        super();
        // TODO Auto-generated constructor stub
    }

    /**
     * This is the action called from the Struts framework.
     * @param mapping The ActionMapping used to select this instance.
     * @param request The HTTP Request we are processing.
     * @return
     */
    @Override
    public ActionErrors validate(ActionMapping mapping, HttpServletRequest request) {

          ActionErrors errors = new ActionErrors();
            if (username.length() < 1 || username == null) {
                errors.add("usu", new ActionMessage("errors.usuario"));
            } else {

                if (pwd.length() <= 0) {
                    errors.add("pwd", new ActionMessage("errors.clave"));
                }
            }

            mapping.getInputForward();

            return errors;

    }
    }
