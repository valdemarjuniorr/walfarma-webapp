package br.com.walfarma.dominio;

import org.springframework.roo.addon.entity.RooEntity;
import org.springframework.roo.addon.javabean.RooJavaBean;
import org.springframework.roo.addon.tostring.RooToString;
import javax.validation.constraints.NotNull;
import javax.persistence.Column;
import javax.validation.constraints.Size;

@RooJavaBean
@RooToString
@RooEntity
public class Banco {

    @NotNull
    @Column(unique = true)
    private Long id;

    @NotNull
    @Column(unique = true)
    @Size(max = 20)
    private String nome;

    @NotNull
    @Column(unique = true)
    @Size(max = 3)
    private String codigoBanco;

    @Column(unique = true)
    private String digitoBA;
}
