// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package br.com.walfarma.dominio;

import br.com.walfarma.dominio.EnderecoEntrega;
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

privileged aspect EnderecoEntrega_Roo_Entity {
    
    declare @type: EnderecoEntrega: @Entity;
    
    @PersistenceContext
    transient EntityManager EnderecoEntrega.entityManager;
    
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name = "_id")
    private Long EnderecoEntrega._id;
    
    @Version
    @Column(name = "version")
    private Integer EnderecoEntrega.version;
    
    public Long EnderecoEntrega.get_id() {
        return this._id;
    }
    
    public void EnderecoEntrega.set_id(Long id) {
        this._id = id;
    }
    
    public Integer EnderecoEntrega.getVersion() {
        return this.version;
    }
    
    public void EnderecoEntrega.setVersion(Integer version) {
        this.version = version;
    }
    
    @Transactional
    public void EnderecoEntrega.persist() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.persist(this);
    }
    
    @Transactional
    public void EnderecoEntrega.remove() {
        if (this.entityManager == null) this.entityManager = entityManager();
        if (this.entityManager.contains(this)) {
            this.entityManager.remove(this);
        } else {
            EnderecoEntrega attached = EnderecoEntrega.findEnderecoEntrega(this.id);
            this.entityManager.remove(attached);
        }
    }
    
    @Transactional
    public void EnderecoEntrega.flush() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.flush();
    }
    
    @Transactional
    public void EnderecoEntrega.clear() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.clear();
    }
    
    @Transactional
    public EnderecoEntrega EnderecoEntrega.merge() {
        if (this.entityManager == null) this.entityManager = entityManager();
        EnderecoEntrega merged = this.entityManager.merge(this);
        this.entityManager.flush();
        return merged;
    }
    
    public static final EntityManager EnderecoEntrega.entityManager() {
        EntityManager em = new EnderecoEntrega().entityManager;
        if (em == null) throw new IllegalStateException("Entity manager has not been injected (is the Spring Aspects JAR configured as an AJC/AJDT aspects library?)");
        return em;
    }
    
    public static long EnderecoEntrega.countEnderecoEntregas() {
        return entityManager().createQuery("select count(o) from EnderecoEntrega o", Long.class).getSingleResult();
    }
    
    public static List<EnderecoEntrega> EnderecoEntrega.findAllEnderecoEntregas() {
        return entityManager().createQuery("select o from EnderecoEntrega o", EnderecoEntrega.class).getResultList();
    }
    
    public static EnderecoEntrega EnderecoEntrega.findEnderecoEntrega(Long id) {
        if (id == null) return null;
        return entityManager().find(EnderecoEntrega.class, id);
    }
    
    public static List<EnderecoEntrega> EnderecoEntrega.findEnderecoEntregaEntries(int firstResult, int maxResults) {
        return entityManager().createQuery("select o from EnderecoEntrega o", EnderecoEntrega.class).setFirstResult(firstResult).setMaxResults(maxResults).getResultList();
    }
    
}
