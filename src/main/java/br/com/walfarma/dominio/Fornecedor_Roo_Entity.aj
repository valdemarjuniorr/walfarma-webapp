// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package br.com.walfarma.dominio;

import br.com.walfarma.dominio.Fornecedor;
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
import javax.persistence.Table;
import javax.persistence.Version;
import org.springframework.transaction.annotation.Transactional;

privileged aspect Fornecedor_Roo_Entity {
    
    declare @type: Fornecedor: @Entity;
    
    declare @type: Fornecedor: @Table(name = "fornecedores");
    
    @PersistenceContext
    transient EntityManager Fornecedor.entityManager;
    
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name = "_id")
    private Long Fornecedor._id;
    
    @Version
    @Column(name = "version")
    private Integer Fornecedor.version;
    
    public Long Fornecedor.get_id() {
        return this._id;
    }
    
    public void Fornecedor.set_id(Long id) {
        this._id = id;
    }
    
    public Integer Fornecedor.getVersion() {
        return this.version;
    }
    
    public void Fornecedor.setVersion(Integer version) {
        this.version = version;
    }
    
    @Transactional
    public void Fornecedor.persist() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.persist(this);
    }
    
    @Transactional
    public void Fornecedor.remove() {
        if (this.entityManager == null) this.entityManager = entityManager();
        if (this.entityManager.contains(this)) {
            this.entityManager.remove(this);
        } else {
            Fornecedor attached = Fornecedor.findFornecedor(this.id);
            this.entityManager.remove(attached);
        }
    }
    
    @Transactional
    public void Fornecedor.flush() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.flush();
    }
    
    @Transactional
    public void Fornecedor.clear() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.clear();
    }
    
    @Transactional
    public Fornecedor Fornecedor.merge() {
        if (this.entityManager == null) this.entityManager = entityManager();
        Fornecedor merged = this.entityManager.merge(this);
        this.entityManager.flush();
        return merged;
    }
    
    public static final EntityManager Fornecedor.entityManager() {
        EntityManager em = new Fornecedor().entityManager;
        if (em == null) throw new IllegalStateException("Entity manager has not been injected (is the Spring Aspects JAR configured as an AJC/AJDT aspects library?)");
        return em;
    }
    
    public static long Fornecedor.countFornecedors() {
        return entityManager().createQuery("select count(o) from Fornecedor o", Long.class).getSingleResult();
    }
    
    public static List<Fornecedor> Fornecedor.findAllFornecedors() {
        return entityManager().createQuery("select o from Fornecedor o", Fornecedor.class).getResultList();
    }
    
    public static Fornecedor Fornecedor.findFornecedor(Long id) {
        if (id == null) return null;
        return entityManager().find(Fornecedor.class, id);
    }
    
    public static List<Fornecedor> Fornecedor.findFornecedorEntries(int firstResult, int maxResults) {
        return entityManager().createQuery("select o from Fornecedor o", Fornecedor.class).setFirstResult(firstResult).setMaxResults(maxResults).getResultList();
    }
    
}