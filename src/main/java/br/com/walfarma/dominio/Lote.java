package br.com.walfarma.dominio;

import org.springframework.roo.addon.entity.RooEntity;
import org.springframework.roo.addon.javabean.RooJavaBean;
import org.springframework.roo.addon.tostring.RooToString;
import javax.validation.constraints.NotNull;
import javax.persistence.Column;
import br.com.walfarma.dominio.Produto;
import javax.persistence.ManyToOne;
import java.util.Date;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;
import org.springframework.format.annotation.DateTimeFormat;
import javax.validation.constraints.Size;
import java.math.BigDecimal;
import br.com.walfarma.dominio.ItemNota;

@RooJavaBean
@RooToString
@RooEntity
public class Lote {

    @NotNull
    @Column(unique = true)
    private Long id;

    @ManyToOne
    private Produto produto;

    private Integer quantidade;

    @Temporal(TemporalType.TIMESTAMP)
    @DateTimeFormat(style = "S-")
    private Date vencimento;

    @Temporal(TemporalType.TIMESTAMP)
    @DateTimeFormat(style = "S-")
    private Date fabricacao;

    @Size(max = 10)
    private String numeroLote;

    private BigDecimal comissao;

    @ManyToOne
	@NotNull
    private ItemNota itemNota;

    @NotNull
    private Integer quantidadeCompra;
}
