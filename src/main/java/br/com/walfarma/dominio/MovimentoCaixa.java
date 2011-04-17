package br.com.walfarma.dominio;

import org.springframework.roo.addon.entity.RooEntity;
import org.springframework.roo.addon.javabean.RooJavaBean;
import org.springframework.roo.addon.tostring.RooToString;
import javax.validation.constraints.NotNull;
import javax.persistence.Column;
import br.com.walfarma.dominio.Caixa;
import javax.persistence.ManyToOne;
import br.com.walfarma.dominio.Vendedor;
import javax.validation.constraints.Size;
import java.math.BigDecimal;
import br.com.walfarma.dominio.TipoMovimentacao;
import javax.persistence.Enumerated;

@RooJavaBean
@RooToString
@RooEntity
public class MovimentoCaixa {

    @NotNull
    @Column(unique = true)
    private Long id;

    @NotNull
    @ManyToOne
    private Caixa caixa;

    @NotNull
    @ManyToOne
    private Vendedor vendedor;

    @NotNull
    @Size(max = 100)
    private String historico;

    @NotNull
    private BigDecimal valor;

    @NotNull
    @Enumerated
    private TipoMovimentacao tipoMovimentacao;
}
