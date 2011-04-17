package br.com.walfarma.dominio;

import org.springframework.roo.addon.entity.RooEntity;
import org.springframework.roo.addon.javabean.RooJavaBean;
import org.springframework.roo.addon.tostring.RooToString;
import javax.validation.constraints.NotNull;
import javax.persistence.Column;
import br.com.walfarma.dominio.Produto;
import javax.persistence.ManyToOne;
import br.com.walfarma.dominio.Fichario;
import java.math.BigDecimal;
import org.springframework.beans.factory.annotation.Value;
import java.util.Date;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;
import org.springframework.format.annotation.DateTimeFormat;
import br.com.walfarma.dominio.Lote;
import br.com.walfarma.dominio.Vendedor;
import javax.validation.constraints.Size;

@RooJavaBean
@RooToString
@RooEntity
public class Venda {

    @NotNull
    @Column(unique = true)
    private Long id;

    @NotNull
    @ManyToOne
    private Produto produto;

    @ManyToOne
    private Fichario fichario;

    private Integer quantidade;

    private BigDecimal precoTabela;

    private BigDecimal precoVenda;

    private BigDecimal comissao;

    private BigDecimal desconto;

    @NotNull
    @Value("false")
    private Boolean pagarComissao;

    @Temporal(TemporalType.TIMESTAMP)
    @DateTimeFormat(style = "S-")
    private Date dataComissao;

    @ManyToOne
    private Lote lote;

    private BigDecimal saldoAnterior;

    @ManyToOne
    private Vendedor vendedor;

    private Integer conselhoCRMCRO;

    @Size(max = 15)
    private String numeroCRMCRO;

    @Size(max = 2)
    private String UfCRMCRO;

    @Size(max = 20)
    private String clientePBM;

    private BigDecimal subsidio;

    @Value("false")
    private Boolean cancelado;
}
