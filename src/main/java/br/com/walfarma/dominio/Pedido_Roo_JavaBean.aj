// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package br.com.walfarma.dominio;

import br.com.walfarma.dominio.Produto;
import java.lang.Integer;
import java.lang.Long;
import java.lang.Short;
import java.math.BigDecimal;

privileged aspect Pedido_Roo_JavaBean {
    
    public Long Pedido.getId() {
        return this.id;
    }
    
    public void Pedido.setId(Long id) {
        this.id = id;
    }
    
    public Produto Pedido.getProduto() {
        return this.produto;
    }
    
    public void Pedido.setProduto(Produto produto) {
        this.produto = produto;
    }
    
    public BigDecimal Pedido.getSaldo() {
        return this.saldo;
    }
    
    public void Pedido.setSaldo(BigDecimal saldo) {
        this.saldo = saldo;
    }
    
    public BigDecimal Pedido.getTotalVenda() {
        return this.totalVenda;
    }
    
    public void Pedido.setTotalVenda(BigDecimal totalVenda) {
        this.totalVenda = totalVenda;
    }
    
    public BigDecimal Pedido.getMediaVenda() {
        return this.mediaVenda;
    }
    
    public void Pedido.setMediaVenda(BigDecimal mediaVenda) {
        this.mediaVenda = mediaVenda;
    }
    
    public Integer Pedido.getQuantidadePedido() {
        return this.quantidadePedido;
    }
    
    public void Pedido.setQuantidadePedido(Integer quantidadePedido) {
        this.quantidadePedido = quantidadePedido;
    }
    
    public Short Pedido.getTipoInclusao() {
        return this.tipoInclusao;
    }
    
    public void Pedido.setTipoInclusao(Short tipoInclusao) {
        this.tipoInclusao = tipoInclusao;
    }
    
}
