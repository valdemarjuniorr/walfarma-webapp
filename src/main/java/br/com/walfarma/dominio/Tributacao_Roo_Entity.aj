// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package br.com.walfarma.dominio;

import br.com.walfarma.dominio.Tributacao;
import java.lang.Integer;
import java.lang.Long;
import java.util.List;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.EntityManager;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.PersistenceContext;
import javax.persistence.Version;
import org.springframework.transaction.annotation.Transactional;

privileged aspect Tributacao_Roo_Entity {
    
    declare @type: Tributacao: @Entity;
    
    @PersistenceContext
    transient EntityManager Tributacao.entityManager;
    
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name = "_id")
    private Long Tributacao._id;
    
    @Version
    @Column(name = "version")
    private Integer Tributacao.version;
    
    public Long Tributacao.get_id() {
        return this._id;
    }
    
    public void Tributacao.set_id(Long id) {
        this._id = id;
    }
    
    public Integer Tributacao.getVersion() {
        return this.version;
    }
    
    public void Tributacao.setVersion(Integer version) {
        this.version = version;
    }
    
    @Transactional
    public void Tributacao.persist() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.persist(this);
    }
    
    @Transactional
    public void Tributacao.remove() {
        if (this.entityManager == null) this.entityManager = entityManager();
        if (this.entityManager.contains(this)) {
            this.entityManager.remove(this);
        } else {
            Tributacao attached = Tributacao.findTributacao(this.id);
            this.entityManager.remove(attached);
        }
    }
    
    @Transactional
    public void Tributacao.flush() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.flush();
    }
    
    @Transactional
    public void Tributacao.clear() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.clear();
    }
    
    @Transactional
    public Tributacao Tributacao.merge() {
        if (this.entityManager == null) this.entityManager = entityManager();
        Tributacao merged = this.entityManager.merge(this);
        this.entityManager.flush();
        return merged;
    }
    
    public static final EntityManager Tributacao.entityManager() {
        EntityManager em = new Tributacao().entityManager;
        if (em == null) throw new IllegalStateException("Entity manager has not been injected (is the Spring Aspects JAR configured as an AJC/AJDT aspects library?)");
        return em;
    }
    
    public static long Tributacao.countTributacaos() {
        return entityManager().createQuery("select count(o) from Tributacao o", Long.class).getSingleResult();
    }
    
    public static List<Tributacao> Tributacao.findAllTributacaos() {
        return entityManager().createQuery("select o from Tributacao o", Tributacao.class).getResultList();
    }
    
    public static Tributacao Tributacao.findTributacao(Long id) {
        if (id == null) return null;
        return entityManager().find(Tributacao.class, id);
    }
    
    public static List<Tributacao> Tributacao.findTributacaoEntries(int firstResult, int maxResults) {
        return entityManager().createQuery("select o from Tributacao o", Tributacao.class).setFirstResult(firstResult).setMaxResults(maxResults).getResultList();
    }
    
}
