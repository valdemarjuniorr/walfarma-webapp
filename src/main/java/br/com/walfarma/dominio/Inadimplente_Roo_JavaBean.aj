// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package br.com.walfarma.dominio;

import br.com.walfarma.dominio.Cliente;
import java.lang.Long;
import java.util.Date;

privileged aspect Inadimplente_Roo_JavaBean {
    
    public Long Inadimplente.getId() {
        return this.id;
    }
    
    public void Inadimplente.setId(Long id) {
        this.id = id;
    }
    
    public Cliente Inadimplente.getCliente() {
        return this.cliente;
    }
    
    public void Inadimplente.setCliente(Cliente cliente) {
        this.cliente = cliente;
    }
    
    public Date Inadimplente.getDataInadimplencia() {
        return this.dataInadimplencia;
    }
    
    public void Inadimplente.setDataInadimplencia(Date dataInadimplencia) {
        this.dataInadimplencia = dataInadimplencia;
    }
    
}
