// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package br.com.walfarma.dominio;

import br.com.walfarma.dominio.Produto;
import java.lang.Integer;
import java.lang.Long;
import java.lang.Short;
import java.math.BigDecimal;

privileged aspect CruvaABC_Roo_JavaBean {
    
    public Long CruvaABC.getId() {
        return this.id;
    }
    
    public void CruvaABC.setId(Long id) {
        this.id = id;
    }
    
    public Produto CruvaABC.getProduto() {
        return this.produto;
    }
    
    public void CruvaABC.setProduto(Produto produto) {
        this.produto = produto;
    }
    
    public BigDecimal CruvaABC.getQuantidadeVendida() {
        return this.quantidadeVendida;
    }
    
    public void CruvaABC.setQuantidadeVendida(BigDecimal quantidadeVendida) {
        this.quantidadeVendida = quantidadeVendida;
    }
    
    public BigDecimal CruvaABC.getTotalVenda() {
        return this.totalVenda;
    }
    
    public void CruvaABC.setTotalVenda(BigDecimal totalVenda) {
        this.totalVenda = totalVenda;
    }
    
    public Integer CruvaABC.getClassificacao() {
        return this.classificacao;
    }
    
    public void CruvaABC.setClassificacao(Integer classificacao) {
        this.classificacao = classificacao;
    }
    
    public Short CruvaABC.getClasse() {
        return this.classe;
    }
    
    public void CruvaABC.setClasse(Short classe) {
        this.classe = classe;
    }
    
}