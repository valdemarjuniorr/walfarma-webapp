// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package br.com.walfarma.dominio;

import br.com.walfarma.dominio.Endereco;
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

privileged aspect Endereco_Roo_Entity {
    
    declare @type: Endereco: @Entity;
    
    @PersistenceContext
    transient EntityManager Endereco.entityManager;
    
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name = "_id")
    private Long Endereco._id;
    
    @Version
    @Column(name = "version")
    private Integer Endereco.version;
    
    public Long Endereco.get_id() {
        return this._id;
    }
    
    public void Endereco.set_id(Long id) {
        this._id = id;
    }
    
    public Integer Endereco.getVersion() {
        return this.version;
    }
    
    public void Endereco.setVersion(Integer version) {
        this.version = version;
    }
    
    @Transactional
    public void Endereco.persist() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.persist(this);
    }
    
    @Transactional
    public void Endereco.remove() {
        if (this.entityManager == null) this.entityManager = entityManager();
        if (this.entityManager.contains(this)) {
            this.entityManager.remove(this);
        } else {
            Endereco attached = Endereco.findEndereco(this.id);
            this.entityManager.remove(attached);
        }
    }
    
    @Transactional
    public void Endereco.flush() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.flush();
    }
    
    @Transactional
    public void Endereco.clear() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.clear();
    }
    
    @Transactional
    public Endereco Endereco.merge() {
        if (this.entityManager == null) this.entityManager = entityManager();
        Endereco merged = this.entityManager.merge(this);
        this.entityManager.flush();
        return merged;
    }
    
    public static final EntityManager Endereco.entityManager() {
        EntityManager em = new Endereco().entityManager;
        if (em == null) throw new IllegalStateException("Entity manager has not been injected (is the Spring Aspects JAR configured as an AJC/AJDT aspects library?)");
        return em;
    }
    
    public static long Endereco.countEnderecoes() {
        return entityManager().createQuery("select count(o) from Endereco o", Long.class).getSingleResult();
    }
    
    public static List<Endereco> Endereco.findAllEnderecoes() {
        return entityManager().createQuery("select o from Endereco o", Endereco.class).getResultList();
    }
    
    public static Endereco Endereco.findEndereco(Long id) {
        if (id == null) return null;
        return entityManager().find(Endereco.class, id);
    }
    
    public static List<Endereco> Endereco.findEnderecoEntries(int firstResult, int maxResults) {
        return entityManager().createQuery("select o from Endereco o", Endereco.class).setFirstResult(firstResult).setMaxResults(maxResults).getResultList();
    }
    
}