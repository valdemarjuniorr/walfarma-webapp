// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package br.com.walfarma.dominio;

import br.com.walfarma.dominio.Funcionario;
import java.lang.Long;
import java.math.BigDecimal;
import java.util.Date;

privileged aspect Caixa_Roo_JavaBean {
    
    public Long Caixa.getId() {
        return this.id;
    }
    
    public void Caixa.setId(Long id) {
        this.id = id;
    }
    
    public Date Caixa.getAbertura() {
        return this.abertura;
    }
    
    public void Caixa.setAbertura(Date abertura) {
        this.abertura = abertura;
    }
    
    public Date Caixa.getFechamento() {
        return this.fechamento;
    }
    
    public void Caixa.setFechamento(Date fechamento) {
        this.fechamento = fechamento;
    }
    
    public BigDecimal Caixa.getValorAbertura() {
        return this.valorAbertura;
    }
    
    public void Caixa.setValorAbertura(BigDecimal valorAbertura) {
        this.valorAbertura = valorAbertura;
    }
    
    public BigDecimal Caixa.getSuprimento() {
        return this.suprimento;
    }
    
    public void Caixa.setSuprimento(BigDecimal suprimento) {
        this.suprimento = suprimento;
    }
    
    public BigDecimal Caixa.getSangria() {
        return this.sangria;
    }
    
    public void Caixa.setSangria(BigDecimal sangria) {
        this.sangria = sangria;
    }
    
    public BigDecimal Caixa.getTotalVendas() {
        return this.totalVendas;
    }
    
    public void Caixa.setTotalVendas(BigDecimal totalVendas) {
        this.totalVendas = totalVendas;
    }
    
    public BigDecimal Caixa.getTotalRecebimento() {
        return this.totalRecebimento;
    }
    
    public void Caixa.setTotalRecebimento(BigDecimal totalRecebimento) {
        this.totalRecebimento = totalRecebimento;
    }
    
    public BigDecimal Caixa.getDescontoVendas() {
        return this.descontoVendas;
    }
    
    public void Caixa.setDescontoVendas(BigDecimal descontoVendas) {
        this.descontoVendas = descontoVendas;
    }
    
    public BigDecimal Caixa.getDescontoRecebimento() {
        return this.descontoRecebimento;
    }
    
    public void Caixa.setDescontoRecebimento(BigDecimal descontoRecebimento) {
        this.descontoRecebimento = descontoRecebimento;
    }
    
    public Funcionario Caixa.getOperadorAbertura() {
        return this.operadorAbertura;
    }
    
    public void Caixa.setOperadorAbertura(Funcionario operadorAbertura) {
        this.operadorAbertura = operadorAbertura;
    }
    
    public Funcionario Caixa.getOperadorFechamento() {
        return this.operadorFechamento;
    }
    
    public void Caixa.setOperadorFechamento(Funcionario operadorFechamento) {
        this.operadorFechamento = operadorFechamento;
    }
    
    public BigDecimal Caixa.getVendasDinheiro() {
        return this.vendasDinheiro;
    }
    
    public void Caixa.setVendasDinheiro(BigDecimal vendasDinheiro) {
        this.vendasDinheiro = vendasDinheiro;
    }
    
    public BigDecimal Caixa.getVendasCheques() {
        return this.vendasCheques;
    }
    
    public void Caixa.setVendasCheques(BigDecimal vendasCheques) {
        this.vendasCheques = vendasCheques;
    }
    
    public BigDecimal Caixa.getVendasChequesPre() {
        return this.vendasChequesPre;
    }
    
    public void Caixa.setVendasChequesPre(BigDecimal vendasChequesPre) {
        this.vendasChequesPre = vendasChequesPre;
    }
    
    public BigDecimal Caixa.getVendasCartao() {
        return this.vendasCartao;
    }
    
    public void Caixa.setVendasCartao(BigDecimal vendasCartao) {
        this.vendasCartao = vendasCartao;
    }
    
    public BigDecimal Caixa.getVendasCrediario() {
        return this.vendasCrediario;
    }
    
    public void Caixa.setVendasCrediario(BigDecimal vendasCrediario) {
        this.vendasCrediario = vendasCrediario;
    }
    
    public BigDecimal Caixa.getVendasParcelamento() {
        return this.vendasParcelamento;
    }
    
    public void Caixa.setVendasParcelamento(BigDecimal vendasParcelamento) {
        this.vendasParcelamento = vendasParcelamento;
    }
    
    public BigDecimal Caixa.getRecebimentoDinheiro() {
        return this.recebimentoDinheiro;
    }
    
    public void Caixa.setRecebimentoDinheiro(BigDecimal recebimentoDinheiro) {
        this.recebimentoDinheiro = recebimentoDinheiro;
    }
    
    public BigDecimal Caixa.getRecebimentoCheque() {
        return this.recebimentoCheque;
    }
    
    public void Caixa.setRecebimentoCheque(BigDecimal recebimentoCheque) {
        this.recebimentoCheque = recebimentoCheque;
    }
    
    public BigDecimal Caixa.getRecebimentoChequePre() {
        return this.recebimentoChequePre;
    }
    
    public void Caixa.setRecebimentoChequePre(BigDecimal recebimentoChequePre) {
        this.recebimentoChequePre = recebimentoChequePre;
    }
    
    public BigDecimal Caixa.getOutros() {
        return this.outros;
    }
    
    public void Caixa.setOutros(BigDecimal outros) {
        this.outros = outros;
    }
    
    public BigDecimal Caixa.getRecebimentoCartao() {
        return this.recebimentoCartao;
    }
    
    public void Caixa.setRecebimentoCartao(BigDecimal recebimentoCartao) {
        this.recebimentoCartao = recebimentoCartao;
    }
    
    public BigDecimal Caixa.getOutrasLojas() {
        return this.outrasLojas;
    }
    
    public void Caixa.setOutrasLojas(BigDecimal outrasLojas) {
        this.outrasLojas = outrasLojas;
    }
    
    public BigDecimal Caixa.getVendasSubsidio() {
        return this.vendasSubsidio;
    }
    
    public void Caixa.setVendasSubsidio(BigDecimal vendasSubsidio) {
        this.vendasSubsidio = vendasSubsidio;
    }
    
    public BigDecimal Caixa.getDevolucoes() {
        return this.devolucoes;
    }
    
    public void Caixa.setDevolucoes(BigDecimal devolucoes) {
        this.devolucoes = devolucoes;
    }
    
    public BigDecimal Caixa.getDevolucoesAVista() {
        return this.devolucoesAVista;
    }
    
    public void Caixa.setDevolucoesAVista(BigDecimal devolucoesAVista) {
        this.devolucoesAVista = devolucoesAVista;
    }
    
}