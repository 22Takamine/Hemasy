package com.example.form;

import javax.validation.constraints.NotEmpty;


public class registerForm {
    
    @NotEmpty
    private String mail;
    
    @NotEmpty
    private String pass;

    public String getMail() {
        return mail;
    }

    public void setMail(String mail) {
        this.mail = mail;
    }
    
    public String getPass() {
        return pass;
    }

    public void setPass(String pass) {
        this.pass = pass;
    }

}