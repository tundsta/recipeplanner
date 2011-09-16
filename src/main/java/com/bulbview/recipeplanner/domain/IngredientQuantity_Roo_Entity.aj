// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.bulbview.recipeplanner.domain;

import com.bulbview.recipeplanner.domain.IngredientQuantity;
import java.lang.Integer;
import java.lang.Long;
import java.lang.SuppressWarnings;
import java.util.List;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.EntityManager;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.PersistenceContext;
import javax.persistence.Version;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

privileged aspect IngredientQuantity_Roo_Entity {
    
    declare @type: IngredientQuantity: @Entity;
    
    @PersistenceContext
    transient EntityManager IngredientQuantity.entityManager;
    
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id")
    private Long IngredientQuantity.id;
    
    @Version
    @Column(name = "version")
    private Integer IngredientQuantity.version;
    
    public Long IngredientQuantity.getId() {
        return this.id;
    }
    
    public void IngredientQuantity.setId(Long id) {
        this.id = id;
    }
    
    public Integer IngredientQuantity.getVersion() {
        return this.version;
    }
    
    public void IngredientQuantity.setVersion(Integer version) {
        this.version = version;
    }
    
    @Transactional(propagation = Propagation.REQUIRES_NEW)
    public void IngredientQuantity.persist() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.persist(this);
    }
    
    @Transactional
    public void IngredientQuantity.remove() {
        if (this.entityManager == null) this.entityManager = entityManager();
        if (this.entityManager.contains(this)) {
            this.entityManager.remove(this);
        } else {
            IngredientQuantity attached = IngredientQuantity.findIngredientQuantity(this.id);
            this.entityManager.remove(attached);
        }
    }
    
    @Transactional
    public void IngredientQuantity.flush() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.flush();
    }
    
    @Transactional
    public void IngredientQuantity.clear() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.clear();
    }
    
    @Transactional
    public IngredientQuantity IngredientQuantity.merge() {
        if (this.entityManager == null) this.entityManager = entityManager();
        IngredientQuantity merged = this.entityManager.merge(this);
        this.entityManager.flush();
        return merged;
    }
    
    public static final EntityManager IngredientQuantity.entityManager() {
        EntityManager em = new IngredientQuantity().entityManager;
        if (em == null) throw new IllegalStateException("Entity manager has not been injected (is the Spring Aspects JAR configured as an AJC/AJDT aspects library?)");
        return em;
    }
    
    @Transactional
    public static long IngredientQuantity.countIngredientQuantitys() {
        return ((Number) entityManager().createQuery("SELECT COUNT(o) FROM IngredientQuantity o").getSingleResult()).longValue();
    }
    
    @SuppressWarnings("unchecked")
    @Transactional
    public static List<IngredientQuantity> IngredientQuantity.findAllIngredientQuantitys() {
        return entityManager().createQuery("SELECT o FROM IngredientQuantity o").getResultList();
    }
    
    @Transactional
    public static IngredientQuantity IngredientQuantity.findIngredientQuantity(Long id) {
        if (id == null) return null;
        try {
            return (IngredientQuantity) entityManager().createQuery("SELECT o FROM IngredientQuantity o WHERE o.id = :id").setParameter("id", id).getSingleResult();
        } catch (org.springframework.dao.EmptyResultDataAccessException e) {
            return null;
        } catch (javax.persistence.NoResultException e) {
            return null;
        }
    }
    
    @SuppressWarnings("unchecked")
    @Transactional
    public static List<IngredientQuantity> IngredientQuantity.findIngredientQuantityEntries(int firstResult, int maxResults) {
        return entityManager().createQuery("SELECT o FROM IngredientQuantity o").setFirstResult(firstResult).setMaxResults(maxResults).getResultList();
    }
    
}