package br.com.walfarma.dominio;

import org.springframework.roo.addon.entity.RooEntity;
import org.springframework.roo.addon.javabean.RooJavaBean;
import org.springframework.roo.addon.tostring.RooToString;
import javax.validation.constraints.NotNull;
import javax.persistence.Column;
import java.util.Date;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;
import org.springframework.format.annotation.DateTimeFormat;
import java.math.BigDecimal;
import br.com.walfarma.dominio.Funcionario;
import javax.persistence.ManyToOne;

@RooJavaBean
@RooToString
@RooEntity
public class Caixa {

    @NotNull
    @Column(unique = true)
    private Long id;

    @NotNull
    @Temporal(TemporalType.TIMESTAMP)
    @DateTimeFormat(style = "S-")
    private Date abertura;

    @NotNull
    @Temporal(TemporalType.TIMESTAMP)
    @DateTimeFormat(style = "S-")
    private Date fechamento;

    @NotNull
    private BigDecimal valorAbertura;

    @NotNull
    private BigDecimal suprimento;

    @NotNull
    private BigDecimal sangria;

    @NotNull
    private BigDecimal totalVendas;

    @NotNull
    private BigDecimal totalRecebimento;

    private BigDecimal descontoVendas;

    private BigDecimal descontoRecebimento;

    @NotNull
    @ManyToOne
    private Funcionario operadorAbertura;

    @ManyToOne
    private Funcionario operadorFechamento;

    private BigDecimal vendasDinheiro;

    private BigDecimal vendasCheques;

    private BigDecimal vendasChequesPre;

    private BigDecimal vendasCartao;

    private BigDecimal vendasCrediario;

    private BigDecimal vendasParcelamento;

    private BigDecimal recebimentoDinheiro;

    private BigDecimal recebimentoCheque;

    private BigDecimal recebimentoChequePre;

    private BigDecimal outros;

    private BigDecimal recebimentoCartao;

    private BigDecimal outrasLojas;

    private BigDecimal vendasSubsidio;

    private BigDecimal devolucoes;

    private BigDecimal devolucoesAVista;
}
