package br.com.walfarma.dominio;

import org.springframework.roo.addon.entity.RooEntity;
import org.springframework.roo.addon.javabean.RooJavaBean;
import org.springframework.roo.addon.tostring.RooToString;
import javax.validation.constraints.NotNull;
import javax.persistence.Column;
import br.com.walfarma.dominio.Produto;
import javax.persistence.ManyToOne;
import java.math.BigDecimal;

@RooJavaBean
@RooToString
@RooEntity
public class Pedido {

    @NotNull
    @Column(unique = true)
    private Long id;

    @ManyToOne
    private Produto produto;

    private BigDecimal saldo;

    private BigDecimal totalVenda;

    private BigDecimal mediaVenda;

    @NotNull
    private Integer quantidadePedido;

    private Short tipoInclusao;
}
