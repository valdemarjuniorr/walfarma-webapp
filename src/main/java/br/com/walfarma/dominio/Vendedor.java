package br.com.walfarma.dominio;

import org.springframework.roo.addon.entity.RooEntity;
import org.springframework.roo.addon.javabean.RooJavaBean;
import org.springframework.roo.addon.tostring.RooToString;
import javax.validation.constraints.NotNull;
import javax.persistence.Column;
import javax.validation.constraints.Size;
import br.com.walfarma.dominio.Status;
import javax.persistence.Enumerated;
import java.math.BigDecimal;

@RooJavaBean
@RooToString
@RooEntity
public class Vendedor {

    @NotNull
    @Column(unique = true)
    private Long id;

    @NotNull
    @Size(max = 256)
    private String nome;

    private String login;

    private String senha;

    @Enumerated
    private Status status;

    private BigDecimal fatorComissao;

    private String pathFoto;
}
