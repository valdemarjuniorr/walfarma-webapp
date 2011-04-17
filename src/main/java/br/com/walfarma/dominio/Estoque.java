package br.com.walfarma.dominio;

import org.springframework.roo.addon.entity.RooEntity;
import org.springframework.roo.addon.javabean.RooJavaBean;
import org.springframework.roo.addon.tostring.RooToString;
import javax.validation.constraints.NotNull;
import javax.persistence.Column;
import br.com.walfarma.dominio.Produto;
import javax.persistence.ManyToOne;
import br.com.walfarma.dominio.Loja;
import java.util.Date;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;
import org.springframework.format.annotation.DateTimeFormat;

@RooJavaBean
@RooToString
@RooEntity
public class Estoque {

    @NotNull
    @Column(unique = true)
    private Long id;

    @ManyToOne
    @NotNull
    private Produto produto;

    @NotNull
    @ManyToOne
    private Loja loja;

    @NotNull
    private Integer saldo;

    @Temporal(TemporalType.TIMESTAMP)
    @DateTimeFormat(style = "S-")
    private Date ultimaAtualizacao;
}
