// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package br.com.walfarma.dominio;

import java.lang.String;

privileged aspect Convenio_Roo_ToString {
    
    public String Convenio.toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("Id: ").append(getId()).append(", ");
        sb.append("Descricao: ").append(getDescricao()).append(", ");
        sb.append("Cnpj: ").append(getCnpj()).append(", ");
        sb.append("Endereco: ").append(getEndereco()).append(", ");
        sb.append("Contato: ").append(getContato()).append(", ");
        sb.append("Desconto: ").append(getDesconto()).append(", ");
        sb.append("InscricaoEstadual: ").append(getInscricaoEstadual()).append(", ");
        sb.append("ConvenioEspecial: ").append(getConvenioEspecial()).append(", ");
        sb.append("CategoriaSemDesconto: ").append(getCategoriaSemDesconto()).append(", ");
        sb.append("StatusTransferencia: ").append(getStatusTransferencia()).append(", ");
        sb.append("Bloqueado: ").append(getBloqueado()).append(", ");
        sb.append("Observacao: ").append(getObservacao());
        return sb.toString();
    }
    
}