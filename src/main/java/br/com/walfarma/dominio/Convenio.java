package br.com.walfarma.dominio;

import org.springframework.roo.addon.entity.RooEntity;
import org.springframework.roo.addon.javabean.RooJavaBean;
import org.springframework.roo.addon.tostring.RooToString;
import javax.persistence.Column;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;
import br.com.walfarma.dominio.Endereco;
import javax.persistence.ManyToOne;
import br.com.walfarma.dominio.Contato;
import java.math.BigDecimal;
import br.com.walfarma.dominio.StatusTransferencia;
import javax.persistence.Enumerated;

@RooJavaBean
@RooToString
@RooEntity(table = "convenios")
public class Convenio {

    @Column(name = "convenio_id")
    private Long id;

    @NotNull
    @Column(name = "convenio", unique = true)
    @Size(max = 256)
    private String descricao;

    @NotNull
    @Column(name = "conv_cnpj", unique = true)
    @Size(max = 14)
    private String cnpj;

    @ManyToOne
    private Endereco endereco;

    @ManyToOne
    private Contato contato;

    @Column(name = "conv_desconto")
    private BigDecimal desconto;

    @Column(name = "conv_inscrestadual")
    @Size(max = 20)
    private String inscricaoEstadual;

    private Boolean convenioEspecial;

    @Column(name = "categ_sem_desc")
    private String categoriaSemDesconto;

    @Column(name = "status_transf")
    @Enumerated
    private StatusTransferencia statusTransferencia;

    @Column(name = "conv_bloqueio")
    private Boolean bloqueado;

    @Column(name = "conv_observacao")
    private String observacao;
}
