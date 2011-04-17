package br.com.walfarma.dominio;

import org.springframework.roo.addon.entity.RooEntity;
import org.springframework.roo.addon.javabean.RooJavaBean;
import org.springframework.roo.addon.tostring.RooToString;
import javax.validation.constraints.NotNull;
import javax.persistence.Column;
import br.com.walfarma.dominio.Cliente;
import javax.persistence.ManyToOne;
import br.com.walfarma.dominio.Produto;
import br.com.walfarma.dominio.FechamentoConvenio;
import br.com.walfarma.dominio.Venda;
import java.math.BigDecimal;
import br.com.walfarma.dominio.TipoSituacaoFichario;
import javax.persistence.Enumerated;
import java.util.Date;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;
import org.springframework.format.annotation.DateTimeFormat;
import br.com.walfarma.dominio.Loja;

@RooJavaBean
@RooToString
@RooEntity
public class Fichario {

    @NotNull
    @Column(unique = true)
    private Long id;

    @NotNull
    @ManyToOne
    private Cliente cliente;

    @NotNull
    @ManyToOne
    private Produto produto;

    @NotNull
    @ManyToOne
    private FechamentoConvenio fechamentoConvenio;

    @ManyToOne
    private Venda venda;

    private Integer quantidade;

    private BigDecimal valor;

    @Enumerated
    private TipoSituacaoFichario tipoSituacaoFichario;

    private String comprador;

    @Temporal(TemporalType.TIMESTAMP)
    @DateTimeFormat(style = "S-")
    private Date vencimento;

    private BigDecimal quantidadePaga;

    private BigDecimal desconto;

    @ManyToOne
    private Loja loja;
}
