package br.com.walfarma.dominio;

import org.springframework.roo.addon.entity.RooEntity;
import org.springframework.roo.addon.javabean.RooJavaBean;
import org.springframework.roo.addon.tostring.RooToString;
import javax.validation.constraints.NotNull;
import javax.persistence.Column;
import br.com.walfarma.dominio.Banco;
import javax.persistence.ManyToOne;
import javax.validation.constraints.Size;

@RooJavaBean
@RooToString
@RooEntity
public class ContasBoletas {

    @NotNull
    @Column(unique = true)
    private Long id;

    @NotNull
    @ManyToOne
    private Banco banco;

    @NotNull
    @Size(max = 6)
    private String agencia;

    @NotNull
    @Size(max = 1)
    private String digitoAgencia;

    @NotNull
    @Size(max = 10)
    private String conta;

    @NotNull
    @Size(max = 1)
    private String digitoCC;

    @Size(max = 50)
    private String cedente;

    @Size(max = 10)
    private String carteira;
}
