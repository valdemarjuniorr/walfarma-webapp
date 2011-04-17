package br.com.walfarma.dominio;

import org.springframework.roo.addon.entity.RooEntity;
import org.springframework.roo.addon.javabean.RooJavaBean;
import org.springframework.roo.addon.tostring.RooToString;
import javax.validation.constraints.NotNull;
import javax.persistence.Column;
import br.com.walfarma.dominio.Cliente;
import javax.persistence.ManyToOne;
import javax.validation.constraints.Size;
import java.math.BigDecimal;
import br.com.walfarma.dominio.TipoPagamento;
import javax.persistence.Enumerated;
import java.util.Date;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;
import org.springframework.format.annotation.DateTimeFormat;
import br.com.walfarma.dominio.Vendedor;
import br.com.walfarma.dominio.Caixa;
import br.com.walfarma.dominio.Loja;

@RooJavaBean
@RooToString
@RooEntity
public class ContasRecebidas {

    @NotNull
    @Column(unique = true)
    private Long id;

    @NotNull
    @ManyToOne
    private Cliente cliente;

    @Size(min = 3)
    private String convenio;

    private BigDecimal totalDebito;

    private BigDecimal valorPago;

    @NotNull
    private Integer numeroRecibo;

    @Enumerated
    private TipoPagamento tipopagamento;

    @NotNull
    @Temporal(TemporalType.TIMESTAMP)
    @DateTimeFormat(style = "S-")
    private Date dataPagamento;

    @Temporal(TemporalType.TIMESTAMP)
    @DateTimeFormat(style = "S-")
    private Date dataVencimento;

    @NotNull
    @ManyToOne
    private Vendedor vendedor;

    @NotNull
    @ManyToOne
    private Caixa caixa;

    @NotNull
    private BigDecimal valorLiquido;

    private BigDecimal dinheiro;

    private BigDecimal chequePre;

    @ManyToOne
    private Loja loja;

    private BigDecimal cartao;

    private BigDecimal cheque;

    private BigDecimal valorCorrecao;

    private BigDecimal Remessa;
}
