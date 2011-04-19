package br.com.walfarma.dominio;

import org.springframework.roo.addon.entity.RooEntity;
import javax.validation.constraints.Size;
import org.springframework.roo.addon.javabean.RooJavaBean;
import org.springframework.roo.addon.tostring.RooToString;
import javax.validation.constraints.NotNull;
import javax.persistence.Column;

@RooJavaBean
@RooToString
@RooEntity
public class Contato {

    @NotNull
    @Column(unique = true)
    private Long id;

    @Size(max = 10)
    private String telefone;

    @Size(max = 10)
    private String celular;

    @Size(max = 10)
    private String fax;

    private String website;

    private String email;
}
