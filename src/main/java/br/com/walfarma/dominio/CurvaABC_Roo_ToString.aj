// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package br.com.walfarma.dominio;

import java.lang.String;

privileged aspect CurvaABC_Roo_ToString {
    
    public String CurvaABC.toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("Id: ").append(getId()).append(", ");
        sb.append("Produto: ").append(getProduto()).append(", ");
        sb.append("QuantidadeVendida: ").append(getQuantidadeVendida()).append(", ");
        sb.append("TotalVenda: ").append(getTotalVenda()).append(", ");
        sb.append("Classificacao: ").append(getClassificacao()).append(", ");
        sb.append("Classe: ").append(getClasse());
        return sb.toString();
    }
    
}
