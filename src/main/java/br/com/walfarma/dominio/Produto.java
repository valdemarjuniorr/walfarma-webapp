package br.com.walfarma.dominio;

import org.springframework.roo.addon.entity.RooEntity;
import org.springframework.roo.addon.javabean.RooJavaBean;
import org.springframework.roo.addon.tostring.RooToString;
import javax.validation.constraints.NotNull;
import javax.persistence.Column;
import br.com.walfarma.dominio.Fornecedor;
import javax.persistence.OneToOne;
import br.com.walfarma.dominio.Categoria;
import br.com.walfarma.dominio.Tributacoes;
import javax.persistence.ManyToOne;
import javax.validation.constraints.Size;
import java.math.BigDecimal;
import br.com.walfarma.dominio.TipoPreco;
import javax.persistence.Enumerated;
import java.util.Date;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;
import org.springframework.format.annotation.DateTimeFormat;
import br.com.walfarma.dominio.TipoUnidadeMedida;

@RooJavaBean
@RooToString
@RooEntity
public class Produto {

    @NotNull
    @Column(unique = true)
    private Long id;

    @NotNull
    @OneToOne
    private Fornecedor fornecedor;

    @NotNull
    @OneToOne
    private Categoria categoria;

    @NotNull
    @ManyToOne
    private Tributacoes tributacao;

    @NotNull
    @Column(name = "apresentacao", unique = true)
    @Size(max = 256)
    private String descricao;

    @NotNull
    @Column(name = "produto", unique = true)
    @Size(max = 256)
    private String nome;

    @NotNull
    @Column(unique = true)
    @Size(max = 12)
    private String codBarras;

    @Column(name = "prod_prcompra")
    private BigDecimal precoCompra;

    @Column(name = "prod_prvenda")
    private BigDecimal precoVenda;

    @Column(name = "prod_prpromocao")
    private BigDecimal precoPromocao;

    private BigDecimal saldo;

    @Column(name = "item_reajustado")
    private BigDecimal itemReajustado;

    @Enumerated
    private TipoPreco tipoPreco;

    @Column(name = "margem_lucro")
    private BigDecimal margemLucro;

    private Boolean psicotropico;

    @Column(name = "desconto_maximo")
    private BigDecimal descontoMaximo;

    @Column(name = "uso_continuo")
    private Boolean usoContinuo;

    private Integer bonus;

    @Column(name = "old_item")
    @Size(max = 8)
    private String oldItem;

    @Temporal(TemporalType.TIMESTAMP)
    @DateTimeFormat(style = "S-")
    private Date vigencia;

    @Column(name = "prod_ativo")
    private Boolean ativo;

    private Integer hospitalar;

    @Column(name = "valor_ult_compra")
    private BigDecimal valorUltimaCompra;

    @Column(name = "atualizar_preco")
    private Boolean atualizarPreco;

    @Column(name = "promocao_especial")
    private Boolean promocaoEspecial;

    @Column(name = "prod_unidade")
    @Enumerated
    private TipoUnidadeMedida unidadeMedida;

    @Temporal(TemporalType.TIMESTAMP)
    @DateTimeFormat(style = "S-")
    private Date lastupdate;

    @Column(name = "estoque_anterior")
    private BigDecimal estoqueAnterior;

    private BigDecimal inventario;

    @Column(name = "valor_inventario")
    private BigDecimal valorInventario;

    private BigDecimal CMV;

    @Column(name = "inicio_promocao")
    @Temporal(TemporalType.TIMESTAMP)
    @DateTimeFormat(style = "S-")
    private Date inicioPromocao;

    @Column(name = "termino_promocao")
    @Temporal(TemporalType.TIMESTAMP)
    @DateTimeFormat(style = "S-")
    private Date terminoPromocao;

    @Column(name = "promocao_vista")
    private Boolean promocaoAVista;

    @Column(name = "promocao_convenio")
    private Boolean promocaoConvenio;

    @Column(name = "promocao_permanente")
    private BigDecimal promocaoPermanente;

    @Size(max = 10)
    private String NCM;

    @Size(max = 20)
    private String localizacao;
}
