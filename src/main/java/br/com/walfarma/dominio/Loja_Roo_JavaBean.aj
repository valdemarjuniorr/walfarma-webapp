// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package br.com.walfarma.dominio;

import java.lang.Long;
import java.lang.String;

privileged aspect Loja_Roo_JavaBean {
    
    public String Loja.getNome() {
        return this.nome;
    }
    
    public void Loja.setNome(String nome) {
        this.nome = nome;
    }
    
    public Long Loja.getId() {
        return this.id;
    }
    
    public void Loja.setId(Long id) {
        this.id = id;
    }
    
}
