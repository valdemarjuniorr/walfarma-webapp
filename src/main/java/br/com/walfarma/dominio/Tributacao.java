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
public class Tributacao {

    @NotNull
    @Column(unique = true)
    private long id;

    @NotNull
    @Column(unique = true)
    @Size(min = 3, max = 50)
    private String tributacao;

    @Size(min = 3)
    private String cod_tributacao;
}
