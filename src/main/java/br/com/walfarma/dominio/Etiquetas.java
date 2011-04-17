package br.com.walfarma.dominio;

import org.springframework.roo.addon.entity.RooEntity;
import org.springframework.roo.addon.javabean.RooJavaBean;
import org.springframework.roo.addon.tostring.RooToString;
import javax.validation.constraints.NotNull;
import javax.persistence.Column;
import br.com.walfarma.dominio.Produto;
import javax.persistence.ManyToOne;

@RooJavaBean
@RooToString
@RooEntity
public class Etiquetas {

    @NotNull
    @Column(unique = true)
    private Long id;

    @NotNull
    @ManyToOne
    private Produto produto;

    @NotNull
    private Integer quantidade;
}
