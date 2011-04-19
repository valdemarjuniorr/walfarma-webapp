package br.com.walfarma.dominio;

import org.springframework.roo.addon.entity.RooEntity;
import org.springframework.roo.addon.javabean.RooJavaBean;
import org.springframework.roo.addon.tostring.RooToString;
import br.com.walfarma.dominio.Produto;
import javax.validation.constraints.NotNull;
import javax.persistence.ManyToOne;
import javax.validation.constraints.Size;
import java.util.Date;
import javax.persistence.Temporal;
import javax.persistence.Column;
import javax.persistence.TemporalType;
import org.springframework.format.annotation.DateTimeFormat;

@RooJavaBean
@RooToString
@RooEntity
public class Psicotropicos {

    @NotNull
    @Column(unique = true)
    private Long id;

    @NotNull
    @ManyToOne
    private Produto produto;

    @NotNull
    @Size(max = 13)
    private String registroMS;

    @Size(max = 2)
    private String lista;

    @Temporal(TemporalType.TIMESTAMP)
    @DateTimeFormat(style = "S-")
    private Date ultimaAtualizacao;
}
