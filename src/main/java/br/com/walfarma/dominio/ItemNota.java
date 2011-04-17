package br.com.walfarma.dominio;

import org.springframework.roo.addon.entity.RooEntity;
import org.springframework.roo.addon.javabean.RooJavaBean;
import org.springframework.roo.addon.tostring.RooToString;
import javax.validation.constraints.NotNull;
import javax.persistence.Column;
import br.com.walfarma.dominio.CabecalhoNota;
import javax.persistence.ManyToOne;
import br.com.walfarma.dominio.Produto;
import javax.validation.constraints.Size;
import java.math.BigDecimal;

@RooJavaBean
@RooToString
@RooEntity
public class ItemNota {

    @NotNull
    @Column(unique = true)
    private Long id;

    @NotNull
    @ManyToOne
    private CabecalhoNota cabecalhoNota;

    @NotNull
    @ManyToOne
    private Produto produto;

    private String CFOP;

    @Size(max = 3)
    private String CST;

    private Integer quantidade;

    private BigDecimal precoCompra;

    private BigDecimal desconto;

    private BigDecimal ICMS;

    private BigDecimal IPI;

    private BigDecimal valorICMS;

    private BigDecimal valorIPI;

    private BigDecimal saldoAnterior;

    private BigDecimal baseICMS;

    private BigDecimal baseICMS_ST;

    private BigDecimal isentoICMS;

    private Integer notasEmbalagem;

    private BigDecimal rateio;

    private BigDecimal PMC;

    private BigDecimal reducaoICMS;

    private BigDecimal PIS;

    private BigDecimal CONFINS;
}
