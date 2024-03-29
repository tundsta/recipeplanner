// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.bulbview.recipeplanner.domain;

import com.bulbview.recipeplanner.domain.Schedule;
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

privileged aspect Schedule_Roo_Entity {
    
    declare @type: Schedule: @Entity;
    
    @PersistenceContext
    transient EntityManager Schedule.entityManager;
    
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id")
    private Long Schedule.id;
    
    @Version
    @Column(name = "version")
    private Integer Schedule.version;
    
    public Long Schedule.getId() {
        return this.id;
    }
    
    public void Schedule.setId(Long id) {
        this.id = id;
    }
    
    public Integer Schedule.getVersion() {
        return this.version;
    }
    
    public void Schedule.setVersion(Integer version) {
        this.version = version;
    }
    
    @Transactional(propagation = Propagation.REQUIRES_NEW)
    public void Schedule.persist() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.persist(this);
    }
    
    @Transactional
    public void Schedule.remove() {
        if (this.entityManager == null) this.entityManager = entityManager();
        if (this.entityManager.contains(this)) {
            this.entityManager.remove(this);
        } else {
            Schedule attached = Schedule.findSchedule(this.id);
            this.entityManager.remove(attached);
        }
    }
    
    @Transactional
    public void Schedule.flush() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.flush();
    }
    
    @Transactional
    public void Schedule.clear() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.clear();
    }
    
    @Transactional
    public Schedule Schedule.merge() {
        if (this.entityManager == null) this.entityManager = entityManager();
        Schedule merged = this.entityManager.merge(this);
        this.entityManager.flush();
        return merged;
    }
    
    public static final EntityManager Schedule.entityManager() {
        EntityManager em = new Schedule().entityManager;
        if (em == null) throw new IllegalStateException("Entity manager has not been injected (is the Spring Aspects JAR configured as an AJC/AJDT aspects library?)");
        return em;
    }
    
    @Transactional
    public static long Schedule.countSchedules() {
        return ((Number) entityManager().createQuery("SELECT COUNT(o) FROM Schedule o").getSingleResult()).longValue();
    }
    
    @SuppressWarnings("unchecked")
    @Transactional
    public static List<Schedule> Schedule.findAllSchedules() {
        return entityManager().createQuery("SELECT o FROM Schedule o").getResultList();
    }
    
    @Transactional
    public static Schedule Schedule.findSchedule(Long id) {
        if (id == null) return null;
        try {
            return (Schedule) entityManager().createQuery("SELECT o FROM Schedule o WHERE o.id = :id").setParameter("id", id).getSingleResult();
        } catch (org.springframework.dao.EmptyResultDataAccessException e) {
            return null;
        } catch (javax.persistence.NoResultException e) {
            return null;
        }
    }
    
    @SuppressWarnings("unchecked")
    @Transactional
    public static List<Schedule> Schedule.findScheduleEntries(int firstResult, int maxResults) {
        return entityManager().createQuery("SELECT o FROM Schedule o").setFirstResult(firstResult).setMaxResults(maxResults).getResultList();
    }
    
}
