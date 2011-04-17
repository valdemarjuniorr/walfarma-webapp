package br.com.walfarma.dominio;

import org.springframework.roo.addon.entity.RooEntity;
import org.springframework.roo.addon.javabean.RooJavaBean;
import org.springframework.roo.addon.tostring.RooToString;
import javax.validation.constraints.NotNull;
import javax.persistence.Column;
import br.com.walfarma.dominio.FechamentoConvenio;
import javax.persistence.ManyToOne;
import br.com.walfarma.dominio.Cliente;
import br.com.walfarma.dominio.Loja;
import br.com.walfarma.dominio.Venda;
import java.math.BigDecimal;
import java.util.Date;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;
import org.springframework.format.annotation.DateTimeFormat;
import javax.validation.constraints.Size;

@RooJavaBean
@RooToString
@RooEntity
public class Crediario {

    @NotNull
    @Column(unique = true)
    private Long id;

    @NotNull
    @ManyToOne
    private FechamentoConvenio fechamentoConvenio;

    @ManyToOne
    private Cliente cliente;

    @ManyToOne
    private Loja loja;

    @ManyToOne
    private Venda venda;

    @NotNull
    private Integer parcela;

    @NotNull
    private BigDecimal valor;

    @Temporal(TemporalType.TIMESTAMP)
    @DateTimeFormat(style = "S-")
    private Date vencimento;

    private BigDecimal credito;

    @NotNull
    private String comprador;

    @Size(max = 24)
    private String boleta;

    private Boolean emitirBoleta;
}
