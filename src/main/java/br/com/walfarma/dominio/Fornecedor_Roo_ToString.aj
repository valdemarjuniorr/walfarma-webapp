// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package br.com.walfarma.dominio;

import java.lang.String;

privileged aspect Fornecedor_Roo_ToString {
    
    public String Fornecedor.toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("Id: ").append(getId()).append(", ");
        sb.append("Cnpj: ").append(getCnpj()).append(", ");
        sb.append("Last_update: ").append(getLast_update()).append(", ");
        sb.append("Desconto_maximo: ").append(getDesconto_maximo()).append(", ");
        sb.append("Fornecedor: ").append(getFornecedor()).append(", ");
        sb.append("Endereco: ").append(getEndereco());
        return sb.toString();
    }
    
}
