// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package br.com.walfarma.dominio;

import br.com.walfarma.dominio.Contato;
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

privileged aspect Contato_Roo_Entity {
    
    declare @type: Contato: @Entity;
    
    @PersistenceContext
    transient EntityManager Contato.entityManager;
    
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name = "_id")
    private Long Contato._id;
    
    @Version
    @Column(name = "version")
    private Integer Contato.version;
    
    public Long Contato.get_id() {
        return this._id;
    }
    
    public void Contato.set_id(Long id) {
        this._id = id;
    }
    
    public Integer Contato.getVersion() {
        return this.version;
    }
    
    public void Contato.setVersion(Integer version) {
        this.version = version;
    }
    
    @Transactional
    public void Contato.persist() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.persist(this);
    }
    
    @Transactional
    public void Contato.remove() {
        if (this.entityManager == null) this.entityManager = entityManager();
        if (this.entityManager.contains(this)) {
            this.entityManager.remove(this);
        } else {
            Contato attached = Contato.findContato(this.id);
            this.entityManager.remove(attached);
        }
    }
    
    @Transactional
    public void Contato.flush() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.flush();
    }
    
    @Transactional
    public void Contato.clear() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.clear();
    }
    
    @Transactional
    public Contato Contato.merge() {
        if (this.entityManager == null) this.entityManager = entityManager();
        Contato merged = this.entityManager.merge(this);
        this.entityManager.flush();
        return merged;
    }
    
    public static final EntityManager Contato.entityManager() {
        EntityManager em = new Contato().entityManager;
        if (em == null) throw new IllegalStateException("Entity manager has not been injected (is the Spring Aspects JAR configured as an AJC/AJDT aspects library?)");
        return em;
    }
    
    public static long Contato.countContatoes() {
        return entityManager().createQuery("select count(o) from Contato o", Long.class).getSingleResult();
    }
    
    public static List<Contato> Contato.findAllContatoes() {
        return entityManager().createQuery("select o from Contato o", Contato.class).getResultList();
    }
    
    public static Contato Contato.findContato(Long id) {
        if (id == null) return null;
        return entityManager().find(Contato.class, id);
    }
    
    public static List<Contato> Contato.findContatoEntries(int firstResult, int maxResults) {
        return entityManager().createQuery("select o from Contato o", Contato.class).setFirstResult(firstResult).setMaxResults(maxResults).getResultList();
    }
    
}