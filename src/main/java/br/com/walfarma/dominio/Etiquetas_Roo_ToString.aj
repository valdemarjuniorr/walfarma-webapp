// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package br.com.walfarma.dominio;

import java.lang.String;

privileged aspect Etiquetas_Roo_ToString {
    
    public String Etiquetas.toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("Id: ").append(getId()).append(", ");
        sb.append("Produto: ").append(getProduto()).append(", ");
        sb.append("Quantidade: ").append(getQuantidade());
        return sb.toString();
    }
    
}