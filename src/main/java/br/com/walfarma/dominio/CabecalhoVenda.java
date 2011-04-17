package br.com.walfarma.dominio;

import org.springframework.roo.addon.entity.RooEntity;
import org.springframework.roo.addon.javabean.RooJavaBean;
import org.springframework.roo.addon.tostring.RooToString;
import javax.validation.constraints.NotNull;
import javax.persistence.Column;
import br.com.walfarma.dominio.Vendedor;
import javax.persistence.ManyToOne;
import br.com.walfarma.dominio.Caixa;
import java.math.BigDecimal;
import java.util.Date;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;
import org.springframework.format.annotation.DateTimeFormat;
import br.com.walfarma.dominio.Endereco;
import javax.validation.constraints.Size;
import br.com.walfarma.dominio.Loja;
import br.com.walfarma.dominio.Cliente;

@RooJavaBean
@RooToString
@RooEntity
public class CabecalhoVenda {

    @NotNull
    @Column(unique = true)
    private Long id;

    @NotNull
    @ManyToOne
    private Vendedor vendedor;

    @NotNull
    @ManyToOne
    private Caixa caixa;

    @NotNull
    private BigDecimal vendaTotal;

    private BigDecimal vendaRecebido;

    @Temporal(TemporalType.TIMESTAMP)
    @DateTimeFormat(style = "S-")
    private Date dataHoraVenda;

    private BigDecimal dinheiro;

    private BigDecimal cheque;

    private BigDecimal chequePre;

    private BigDecimal cartao;

    private BigDecimal crediario;

    private BigDecimal parcelamento;

    @ManyToOne
    private Endereco enderecoEntrega;

    @Size(max = 4)
    private String ECF;

    private String cupom;

    private BigDecimal outros;

    private Integer cartaoATD;

    private Short cartaoFechado;

    @NotNull
    @ManyToOne
    private Loja loja;

    private Short vendaASSEFAZ;

    private BigDecimal subsidio;

    @Size(max = 6)
    private String serieD;

    @Size(max = 20)
    private String NSU;

    @Size(max = 20)
    private String PBM;

    @ManyToOne
    private Cliente cliente;

    private Boolean cancelado;

    private BigDecimal valorDevolucao;

    private Integer CCF;
}
