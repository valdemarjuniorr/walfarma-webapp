package br.com.walfarma.dominio;

import org.springframework.roo.addon.entity.RooEntity;
import org.springframework.roo.addon.javabean.RooJavaBean;
import org.springframework.roo.addon.tostring.RooToString;
import javax.validation.constraints.NotNull;
import javax.persistence.Column;
import br.com.walfarma.dominio.Fornecedor;
import javax.persistence.ManyToOne;
import javax.validation.constraints.Size;
import br.com.walfarma.dominio.TipoNotaFiscal;
import javax.persistence.Enumerated;
import java.util.Date;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;
import org.springframework.format.annotation.DateTimeFormat;
import java.math.BigDecimal;
import br.com.walfarma.dominio.TipoCancelamento;

@RooJavaBean
@RooToString
@RooEntity
public class CabecalhoNota {

    @NotNull
    @Column(unique = true)
    private Long id;

    @NotNull
    @ManyToOne
    private Fornecedor fornecedor;

    @NotNull
    @Size(max = 8)
    private String nota_fiscal;

    @NotNull
    @Size(max = 3)
    private String serie;

    @NotNull
    @Size(max = 4)
    private String CFOP;

    @Enumerated
    private TipoNotaFiscal tipoNotaFiscal;

    @NotNull
    @Temporal(TemporalType.TIMESTAMP)
    @DateTimeFormat(style = "S-")
    private Date dataEmissao;

    @NotNull
    @Temporal(TemporalType.TIMESTAMP)
    @DateTimeFormat(style = "S-")
    private Date dataRecebimento;

    @NotNull
    private BigDecimal valorTotal;

    @NotNull
    private BigDecimal baseICMS;

    @NotNull
    private BigDecimal outrosICMS;

    @NotNull
    private BigDecimal aliquotaICMS;

    private BigDecimal isentoIPI;

    private BigDecimal outrosIPI;

    private BigDecimal baseICMSST;

    private BigDecimal frete;

    @Enumerated
    private TipoCancelamento cancelamento;

    private BigDecimal seguro;

    private BigDecimal outrasDespesas;

    private BigDecimal ICMSRetidoST;

    private BigDecimal desconto;

    private BigDecimal diferencaICMS;
}
