// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package br.com.walfarma.dominio;

import br.com.walfarma.dominio.Caixa;
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

privileged aspect Caixa_Roo_Entity {
    
    declare @type: Caixa: @Entity;
    
    @PersistenceContext
    transient EntityManager Caixa.entityManager;
    
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name = "_id")
    private Long Caixa._id;
    
    @Version
    @Column(name = "version")
    private Integer Caixa.version;
    
    public Long Caixa.get_id() {
        return this._id;
    }
    
    public void Caixa.set_id(Long id) {
        this._id = id;
    }
    
    public Integer Caixa.getVersion() {
        return this.version;
    }
    
    public void Caixa.setVersion(Integer version) {
        this.version = version;
    }
    
    @Transactional
    public void Caixa.persist() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.persist(this);
    }
    
    @Transactional
    public void Caixa.remove() {
        if (this.entityManager == null) this.entityManager = entityManager();
        if (this.entityManager.contains(this)) {
            this.entityManager.remove(this);
        } else {
            Caixa attached = Caixa.findCaixa(this.id);
            this.entityManager.remove(attached);
        }
    }
    
    @Transactional
    public void Caixa.flush() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.flush();
    }
    
    @Transactional
    public void Caixa.clear() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.clear();
    }
    
    @Transactional
    public Caixa Caixa.merge() {
        if (this.entityManager == null) this.entityManager = entityManager();
        Caixa merged = this.entityManager.merge(this);
        this.entityManager.flush();
        return merged;
    }
    
    public static final EntityManager Caixa.entityManager() {
        EntityManager em = new Caixa().entityManager;
        if (em == null) throw new IllegalStateException("Entity manager has not been injected (is the Spring Aspects JAR configured as an AJC/AJDT aspects library?)");
        return em;
    }
    
    public static long Caixa.countCaixas() {
        return entityManager().createQuery("select count(o) from Caixa o", Long.class).getSingleResult();
    }
    
    public static List<Caixa> Caixa.findAllCaixas() {
        return entityManager().createQuery("select o from Caixa o", Caixa.class).getResultList();
    }
    
    public static Caixa Caixa.findCaixa(Long id) {
        if (id == null) return null;
        return entityManager().find(Caixa.class, id);
    }
    
    public static List<Caixa> Caixa.findCaixaEntries(int firstResult, int maxResults) {
        return entityManager().createQuery("select o from Caixa o", Caixa.class).setFirstResult(firstResult).setMaxResults(maxResults).getResultList();
    }
    
}
