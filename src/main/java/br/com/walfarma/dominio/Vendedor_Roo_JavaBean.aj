// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package br.com.walfarma.dominio;

import br.com.walfarma.dominio.Status;
import java.lang.Long;
import java.lang.String;
import java.math.BigDecimal;

privileged aspect Vendedor_Roo_JavaBean {
    
    public Long Vendedor.getId() {
        return this.id;
    }
    
    public void Vendedor.setId(Long id) {
        this.id = id;
    }
    
    public String Vendedor.getNome() {
        return this.nome;
    }
    
    public void Vendedor.setNome(String nome) {
        this.nome = nome;
    }
    
    public String Vendedor.getLogin() {
        return this.login;
    }
    
    public void Vendedor.setLogin(String login) {
        this.login = login;
    }
    
    public String Vendedor.getSenha() {
        return this.senha;
    }
    
    public void Vendedor.setSenha(String senha) {
        this.senha = senha;
    }
    
    public Status Vendedor.getStatus() {
        return this.status;
    }
    
    public void Vendedor.setStatus(Status status) {
        this.status = status;
    }
    
    public BigDecimal Vendedor.getFatorComissao() {
        return this.fatorComissao;
    }
    
    public void Vendedor.setFatorComissao(BigDecimal fatorComissao) {
        this.fatorComissao = fatorComissao;
    }
    
    public String Vendedor.getPathFoto() {
        return this.pathFoto;
    }
    
    public void Vendedor.setPathFoto(String pathFoto) {
        this.pathFoto = pathFoto;
    }
    
}
