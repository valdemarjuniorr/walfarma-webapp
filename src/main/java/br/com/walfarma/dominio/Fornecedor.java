package br.com.walfarma.dominio;

import org.springframework.roo.addon.entity.RooEntity;
import org.springframework.roo.addon.javabean.RooJavaBean;
import org.springframework.roo.addon.tostring.RooToString;
import javax.validation.constraints.NotNull;
import javax.persistence.Column;
import javax.validation.constraints.Size;
import java.util.Date;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;
import org.springframework.format.annotation.DateTimeFormat;
import br.com.walfarma.dominio.Endereco;
import javax.persistence.OneToOne;

@RooJavaBean
@RooToString
@RooEntity(table = "fornecedores")
public class Fornecedor {

    @NotNull
    @Column(unique = true)
    private long id;

    @NotNull
    @Column(unique = true)
    @Size(min = 10, max = 50)
    private String cnpj;

    @NotNull
    @Temporal(TemporalType.TIMESTAMP)
    @DateTimeFormat(style = "S-")
    private Date last_update;

    private Integer desconto_maximo;

    @NotNull
    @Column(unique = true)
    @Size(min = 3, max = 256)
    private String fornecedor;

    @OneToOne
    private Endereco endereco;
}
