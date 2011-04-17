package br.com.walfarma.dominio;

import org.springframework.roo.addon.entity.RooEntity;
import org.springframework.roo.addon.javabean.RooJavaBean;
import org.springframework.roo.addon.tostring.RooToString;
import javax.validation.constraints.NotNull;
import javax.persistence.Column;
import br.com.walfarma.dominio.Banco;
import javax.persistence.ManyToOne;
import br.com.walfarma.dominio.Cliente;
import javax.validation.constraints.Size;
import java.math.BigDecimal;
import java.util.Date;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;
import org.springframework.format.annotation.DateTimeFormat;
import br.com.walfarma.dominio.Venda;
import br.com.walfarma.dominio.ContasRecebidas;

@RooJavaBean
@RooToString
@RooEntity
public class Cheque {

    @NotNull
    @Column(unique = true)
    private Long id;

    @NotNull
    @ManyToOne
    private Banco banco;

    @ManyToOne
    private Cliente cliente;

    @Size(max = 11)
    private String cpf;

    @Size(max = 50)
    private String correntista;

    @NotNull
    private BigDecimal valor;

    @Temporal(TemporalType.TIMESTAMP)
    @DateTimeFormat(style = "S-")
    private Date vencimento;

    @NotNull
    @ManyToOne
    private Venda venda;

    @ManyToOne
    private ContasRecebidas contasRecebidas;

    @Temporal(TemporalType.TIMESTAMP)
    @DateTimeFormat(style = "S-")
    private Date dataHoraCadastro;
}
