// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package br.com.walfarma.dominio;

import br.com.walfarma.dominio.Estoque;
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

privileged aspect Estoque_Roo_Entity {
    
    declare @type: Estoque: @Entity;
    
    @PersistenceContext
    transient EntityManager Estoque.entityManager;
    
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name = "_id")
    private Long Estoque._id;
    
    @Version
    @Column(name = "version")
    private Integer Estoque.version;
    
    public Long Estoque.get_id() {
        return this._id;
    }
    
    public void Estoque.set_id(Long id) {
        this._id = id;
    }
    
    public Integer Estoque.getVersion() {
        return this.version;
    }
    
    public void Estoque.setVersion(Integer version) {
        this.version = version;
    }
    
    @Transactional
    public void Estoque.persist() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.persist(this);
    }
    
    @Transactional
    public void Estoque.remove() {
        if (this.entityManager == null) this.entityManager = entityManager();
        if (this.entityManager.contains(this)) {
            this.entityManager.remove(this);
        } else {
            Estoque attached = Estoque.findEstoque(this.id);
            this.entityManager.remove(attached);
        }
    }
    
    @Transactional
    public void Estoque.flush() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.flush();
    }
    
    @Transactional
    public void Estoque.clear() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.clear();
    }
    
    @Transactional
    public Estoque Estoque.merge() {
        if (this.entityManager == null) this.entityManager = entityManager();
        Estoque merged = this.entityManager.merge(this);
        this.entityManager.flush();
        return merged;
    }
    
    public static final EntityManager Estoque.entityManager() {
        EntityManager em = new Estoque().entityManager;
        if (em == null) throw new IllegalStateException("Entity manager has not been injected (is the Spring Aspects JAR configured as an AJC/AJDT aspects library?)");
        return em;
    }
    
    public static long Estoque.countEstoques() {
        return entityManager().createQuery("select count(o) from Estoque o", Long.class).getSingleResult();
    }
    
    public static List<Estoque> Estoque.findAllEstoques() {
        return entityManager().createQuery("select o from Estoque o", Estoque.class).getResultList();
    }
    
    public static Estoque Estoque.findEstoque(Long id) {
        if (id == null) return null;
        return entityManager().find(Estoque.class, id);
    }
    
    public static List<Estoque> Estoque.findEstoqueEntries(int firstResult, int maxResults) {
        return entityManager().createQuery("select o from Estoque o", Estoque.class).setFirstResult(firstResult).setMaxResults(maxResults).getResultList();
    }
    
}