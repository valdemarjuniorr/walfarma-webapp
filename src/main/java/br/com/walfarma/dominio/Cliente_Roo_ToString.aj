// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package br.com.walfarma.dominio;

import java.lang.String;

privileged aspect Cliente_Roo_ToString {
    
    public String Cliente.toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("Convenio: ").append(getConvenio()).append(", ");
        sb.append("Nome: ").append(getNome()).append(", ");
        sb.append("Cpf: ").append(getCpf()).append(", ");
        sb.append("Rg: ").append(getRg()).append(", ");
        sb.append("Endereco: ").append(getEndereco()).append(", ");
        sb.append("Contato: ").append(getContato()).append(", ");
        sb.append("EstadoCivil: ").append(getEstadoCivil()).append(", ");
        sb.append("Sexo: ").append(getSexo()).append(", ");
        sb.append("Conjuge: ").append(getConjuge()).append(", ");
        sb.append("NomePai: ").append(getNomePai()).append(", ");
        sb.append("NomeMae: ").append(getNomeMae()).append(", ");
        sb.append("Status: ").append(getStatus()).append(", ");
        sb.append("ClienteEspecial: ").append(getClienteEspecial()).append(", ");
        sb.append("ClienteEmpresa: ").append(getClienteEmpresa()).append(", ");
        sb.append("Observacao: ").append(getObservacao()).append(", ");
        sb.append("DataCadastro: ").append(getDataCadastro()).append(", ");
        sb.append("DataNascimento: ").append(getDataNascimento() == null ? "null" : getDataNascimento().getTime()).append(", ");
        sb.append("PathFoto: ").append(getPathFoto()).append(", ");
        sb.append("Login: ").append(getLogin()).append(", ");
        sb.append("Senha: ").append(getSenha()).append(", ");
        sb.append("Dependentes: ").append(getDependentes() == null ? "null" : getDependentes().size());
        return sb.toString();
    }
    
}
