// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package br.com.walfarma.dominio;

import br.com.walfarma.dominio.Banco;
import java.lang.Long;
import java.lang.String;

privileged aspect ContasBoletas_Roo_JavaBean {
    
    public Long ContasBoletas.getId() {
        return this.id;
    }
    
    public void ContasBoletas.setId(Long id) {
        this.id = id;
    }
    
    public Banco ContasBoletas.getBanco() {
        return this.banco;
    }
    
    public void ContasBoletas.setBanco(Banco banco) {
        this.banco = banco;
    }
    
    public String ContasBoletas.getAgencia() {
        return this.agencia;
    }
    
    public void ContasBoletas.setAgencia(String agencia) {
        this.agencia = agencia;
    }
    
    public String ContasBoletas.getDigitoAgencia() {
        return this.digitoAgencia;
    }
    
    public void ContasBoletas.setDigitoAgencia(String digitoAgencia) {
        this.digitoAgencia = digitoAgencia;
    }
    
    public String ContasBoletas.getConta() {
        return this.conta;
    }
    
    public void ContasBoletas.setConta(String conta) {
        this.conta = conta;
    }
    
    public String ContasBoletas.getDigitoCC() {
        return this.digitoCC;
    }
    
    public void ContasBoletas.setDigitoCC(String digitoCC) {
        this.digitoCC = digitoCC;
    }
    
    public String ContasBoletas.getCedente() {
        return this.cedente;
    }
    
    public void ContasBoletas.setCedente(String cedente) {
        this.cedente = cedente;
    }
    
    public String ContasBoletas.getCarteira() {
        return this.carteira;
    }
    
    public void ContasBoletas.setCarteira(String carteira) {
        this.carteira = carteira;
    }
    
}