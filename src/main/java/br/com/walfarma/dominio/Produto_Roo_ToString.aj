// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package br.com.walfarma.dominio;

import java.lang.String;

privileged aspect Produto_Roo_ToString {
    
    public String Produto.toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("Id: ").append(getId()).append(", ");
        sb.append("Fornecedor: ").append(getFornecedor()).append(", ");
        sb.append("Categoria: ").append(getCategoria()).append(", ");
        sb.append("Tributacao: ").append(getTributacao()).append(", ");
        sb.append("Descricao: ").append(getDescricao()).append(", ");
        sb.append("Nome: ").append(getNome()).append(", ");
        sb.append("CodBarras: ").append(getCodBarras()).append(", ");
        sb.append("PrecoCompra: ").append(getPrecoCompra()).append(", ");
        sb.append("PrecoVenda: ").append(getPrecoVenda()).append(", ");
        sb.append("PrecoPromocao: ").append(getPrecoPromocao()).append(", ");
        sb.append("Saldo: ").append(getSaldo()).append(", ");
        sb.append("ItemReajustado: ").append(getItemReajustado()).append(", ");
        sb.append("TipoPreco: ").append(getTipoPreco()).append(", ");
        sb.append("MargemLucro: ").append(getMargemLucro()).append(", ");
        sb.append("Psicotropico: ").append(getPsicotropico()).append(", ");
        sb.append("DescontoMaximo: ").append(getDescontoMaximo()).append(", ");
        sb.append("UsoContinuo: ").append(getUsoContinuo()).append(", ");
        sb.append("Bonus: ").append(getBonus()).append(", ");
        sb.append("OldItem: ").append(getOldItem()).append(", ");
        sb.append("Vigencia: ").append(getVigencia()).append(", ");
        sb.append("Ativo: ").append(getAtivo()).append(", ");
        sb.append("Hospitalar: ").append(getHospitalar()).append(", ");
        sb.append("ValorUltimaCompra: ").append(getValorUltimaCompra()).append(", ");
        sb.append("AtualizarPreco: ").append(getAtualizarPreco()).append(", ");
        sb.append("PromocaoEspecial: ").append(getPromocaoEspecial()).append(", ");
        sb.append("UnidadeMedida: ").append(getUnidadeMedida()).append(", ");
        sb.append("Lastupdate: ").append(getLastupdate()).append(", ");
        sb.append("EstoqueAnterior: ").append(getEstoqueAnterior()).append(", ");
        sb.append("Inventario: ").append(getInventario()).append(", ");
        sb.append("ValorInventario: ").append(getValorInventario()).append(", ");
        sb.append("CMV: ").append(getCMV()).append(", ");
        sb.append("InicioPromocao: ").append(getInicioPromocao()).append(", ");
        sb.append("TerminoPromocao: ").append(getTerminoPromocao()).append(", ");
        sb.append("PromocaoAVista: ").append(getPromocaoAVista()).append(", ");
        sb.append("PromocaoConvenio: ").append(getPromocaoConvenio()).append(", ");
        sb.append("PromocaoPermanente: ").append(getPromocaoPermanente()).append(", ");
        sb.append("NCM: ").append(getNCM()).append(", ");
        sb.append("Localizacao: ").append(getLocalizacao());
        return sb.toString();
    }
    
}
