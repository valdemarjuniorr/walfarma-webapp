package br.com.walfarma.dominio;

import org.springframework.roo.addon.entity.RooEntity;
import org.springframework.roo.addon.javabean.RooJavaBean;
import org.springframework.roo.addon.tostring.RooToString;
import javax.validation.constraints.NotNull;
import javax.persistence.Column;
import br.com.walfarma.dominio.Produto;
import javax.persistence.ManyToOne;
import br.com.walfarma.dominio.Fornecedor;
import br.com.walfarma.dominio.Categoria;
import br.com.walfarma.dominio.Tributacoes;
import javax.validation.constraints.Size;
import java.math.BigDecimal;
import br.com.walfarma.dominio.TipoPreco;
import javax.persistence.Enumerated;
import java.util.Date;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;
import org.springframework.format.annotation.DateTimeFormat;
import br.com.walfarma.dominio.Status;
import org.springframework.beans.factory.annotation.Value;

@RooJavaBean
@RooToString
@RooEntity
public class Perfumaria {

    @NotNull
    @Column(unique = true)
    private Long id;

    @ManyToOne
    @NotNull
    private Produto produto;

    @NotNull
    @ManyToOne
    private Fornecedor fornecedor;

    @NotNull
    @ManyToOne
    private Categoria categoria;

    @NotNull
    @ManyToOne
    private Tributacoes tributacao;

    @Size(max = 50)
    private String produo;

    @Size(max = 50)
    private String descricao;

    @Size(max = 50)
    private String apresentacao;

    @Size(max = 12)
    private String codigoBarras;

    @NotNull
    private BigDecimal precoCompra;

    @NotNull
    private BigDecimal precoVenda;

    @NotNull
    private BigDecimal precoPromocao;

    @NotNull
    private BigDecimal saldo;

    @Enumerated
    private TipoPreco tipoPreco;

    private BigDecimal margemLucro;

    @Temporal(TemporalType.TIMESTAMP)
    @DateTimeFormat(style = "S-")
    private Date vigencia;

    @Enumerated
    private Status status;

    @Value("false")
    private Boolean promocaoEspecial;
}
