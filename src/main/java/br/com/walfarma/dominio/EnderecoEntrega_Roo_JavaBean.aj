// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package br.com.walfarma.dominio;

import br.com.walfarma.dominio.Cliente;
import br.com.walfarma.dominio.Endereco;
import java.lang.Long;
import java.util.Date;

privileged aspect EnderecoEntrega_Roo_JavaBean {
    
    public Long EnderecoEntrega.getId() {
        return this.id;
    }
    
    public void EnderecoEntrega.setId(Long id) {
        this.id = id;
    }
    
    public Cliente EnderecoEntrega.getCliente() {
        return this.cliente;
    }
    
    public void EnderecoEntrega.setCliente(Cliente cliente) {
        this.cliente = cliente;
    }
    
    public Endereco EnderecoEntrega.getEndereco() {
        return this.endereco;
    }
    
    public void EnderecoEntrega.setEndereco(Endereco endereco) {
        this.endereco = endereco;
    }
    
    public Date EnderecoEntrega.getDataHoraCadastro() {
        return this.dataHoraCadastro;
    }
    
    public void EnderecoEntrega.setDataHoraCadastro(Date dataHoraCadastro) {
        this.dataHoraCadastro = dataHoraCadastro;
    }
    
}
