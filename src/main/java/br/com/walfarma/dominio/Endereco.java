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
public class Endereco {

    @NotNull
    @Column(unique = true)
    private Long id;

    @Size(max = 256)
    private String endereco;
	
	@Size(max = 256)
    private String complemento;

    @Size(max = 256)
    private String bairro;

    @Size(max = 256)
    private String cidade;

    @Size(max = 10)
    private String cep;

	@Size(max = 2)
    private String uf;
}
