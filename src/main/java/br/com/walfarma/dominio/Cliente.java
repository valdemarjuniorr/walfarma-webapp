package br.com.walfarma.dominio;

import org.springframework.roo.addon.entity.RooEntity;
import org.springframework.roo.addon.javabean.RooJavaBean;
import org.springframework.roo.addon.tostring.RooToString;
import br.com.walfarma.dominio.Convenio;
import javax.persistence.ManyToOne;
import javax.validation.constraints.NotNull;
import javax.persistence.Column;
import javax.validation.constraints.Size;
import br.com.walfarma.dominio.Endereco;
import br.com.walfarma.dominio.Contato;
import br.com.walfarma.dominio.EstadoCivil;
import javax.persistence.Enumerated;
import br.com.walfarma.dominio.SEXO;
import br.com.walfarma.dominio.Status;
import java.util.Date;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;
import org.springframework.format.annotation.DateTimeFormat;
import java.util.Calendar;
import java.util.Set;
import java.util.HashSet;
import javax.persistence.OneToMany;
import javax.persistence.CascadeType;

@RooJavaBean
@RooToString
@RooEntity(table = "clientes")
public class Cliente {

    @ManyToOne
    private Convenio convenio;

    @NotNull
    @Column(name = "cliente")
    @Size(max = 256)
    private String nome;

    @NotNull
    @Column(name = "cli_cpf", unique = true)
    @Size(max = 14)
    private String cpf;

    @Column(name = "cli_rg", unique = true)
    @Size(max = 16)
    private String rg;

    @ManyToOne
    private Endereco endereco;

    @ManyToOne
    private Contato contato;

    @Enumerated
    @Column(name = "cli_estado_civil")
    private EstadoCivil estadoCivil;

    @Enumerated
    private SEXO sexo;

    @Column(name = "cli_conjuge")
    @Size(max = 256)
    private String conjuge;

    @Column(name = "cli_pai")
    @Size(max = 256)
    private String nomePai;

    @Column(name = "cli_mae")
    @Size(max = 256)
    private String nomeMae;

    @Enumerated
    private Status status;

    @Column(name = "cli_especial")
    private Boolean clienteEspecial;

    @Column(name = "cli_empresa")
    @Size(max = 50)
    private String clienteEmpresa;

    @Column(name = "cli_observacao")
    @Size(max = 256)
    private String observacao;

    @Temporal(TemporalType.TIMESTAMP)
    @DateTimeFormat(style = "S-")
    private Date dataCadastro;

    @Temporal(TemporalType.TIMESTAMP)
    @DateTimeFormat(style = "S-")
    private Calendar dataNascimento;

    @Size(max = 256)
    private String pathFoto;

    @Column(unique = true)
    @Size(max = 20)
    private String login;

    @Size(min = 5)
    private String senha;

    @OneToMany(cascade = CascadeType.ALL)
    private Set<br.com.walfarma.dominio.Cliente> dependentes = new HashSet<br.com.walfarma.dominio.Cliente>();
}
