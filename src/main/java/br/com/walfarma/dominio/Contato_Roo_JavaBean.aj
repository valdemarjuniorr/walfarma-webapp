// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package br.com.walfarma.dominio;

import java.lang.Long;
import java.lang.String;

privileged aspect Contato_Roo_JavaBean {
    
    public Long Contato.getId() {
        return this.id;
    }
    
    public void Contato.setId(Long id) {
        this.id = id;
    }
    
    public String Contato.getTelefone() {
        return this.telefone;
    }
    
    public void Contato.setTelefone(String telefone) {
        this.telefone = telefone;
    }
    
    public String Contato.getCelular() {
        return this.celular;
    }
    
    public void Contato.setCelular(String celular) {
        this.celular = celular;
    }
    
    public String Contato.getFax() {
        return this.fax;
    }
    
    public void Contato.setFax(String fax) {
        this.fax = fax;
    }
    
    public String Contato.getWebsite() {
        return this.website;
    }
    
    public void Contato.setWebsite(String website) {
        this.website = website;
    }
    
    public String Contato.getEmail() {
        return this.email;
    }
    
    public void Contato.setEmail(String email) {
        this.email = email;
    }
    
}