// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package br.com.walfarma.dominio;

import java.lang.String;

privileged aspect Vendedor_Roo_ToString {
    
    public String Vendedor.toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("Id: ").append(getId()).append(", ");
        sb.append("Nome: ").append(getNome()).append(", ");
        sb.append("Login: ").append(getLogin()).append(", ");
        sb.append("Senha: ").append(getSenha()).append(", ");
        sb.append("Status: ").append(getStatus()).append(", ");
        sb.append("FatorComissao: ").append(getFatorComissao()).append(", ");
        sb.append("PathFoto: ").append(getPathFoto());
        return sb.toString();
    }
    
}
