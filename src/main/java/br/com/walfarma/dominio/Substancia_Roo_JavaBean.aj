// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package br.com.walfarma.dominio;

import java.lang.Long;
import java.lang.String;
import java.util.Date;

privileged aspect Substancia_Roo_JavaBean {
    
    public Long Substancia.getId() {
        return this.id;
    }
    
    public void Substancia.setId(Long id) {
        this.id = id;
    }
    
    public String Substancia.getDescricao() {
        return this.descricao;
    }
    
    public void Substancia.setDescricao(String descricao) {
        this.descricao = descricao;
    }
    
    public Date Substancia.getUltimaAtualizacao() {
        return this.ultimaAtualizacao;
    }
    
    public void Substancia.setUltimaAtualizacao(Date ultimaAtualizacao) {
        this.ultimaAtualizacao = ultimaAtualizacao;
    }
    
}