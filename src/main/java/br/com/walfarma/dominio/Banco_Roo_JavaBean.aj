// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package br.com.walfarma.dominio;

import java.lang.Long;
import java.lang.String;

privileged aspect Banco_Roo_JavaBean {
    
    public Long Banco.getId() {
        return this.id;
    }
    
    public void Banco.setId(Long id) {
        this.id = id;
    }
    
    public String Banco.getNome() {
        return this.nome;
    }
    
    public void Banco.setNome(String nome) {
        this.nome = nome;
    }
    
    public String Banco.getCodigoBanco() {
        return this.codigoBanco;
    }
    
    public void Banco.setCodigoBanco(String codigoBanco) {
        this.codigoBanco = codigoBanco;
    }
    
    public String Banco.getDigitoBA() {
        return this.digitoBA;
    }
    
    public void Banco.setDigitoBA(String digitoBA) {
        this.digitoBA = digitoBA;
    }
    
}
