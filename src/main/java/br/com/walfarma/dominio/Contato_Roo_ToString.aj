// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package br.com.walfarma.dominio;

import java.lang.String;

privileged aspect Contato_Roo_ToString {
    
    public String Contato.toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("Id: ").append(getId()).append(", ");
        sb.append("Telefone: ").append(getTelefone()).append(", ");
        sb.append("Celular: ").append(getCelular()).append(", ");
        sb.append("Fax: ").append(getFax()).append(", ");
        sb.append("Website: ").append(getWebsite()).append(", ");
        sb.append("Email: ").append(getEmail());
        return sb.toString();
    }
    
}
