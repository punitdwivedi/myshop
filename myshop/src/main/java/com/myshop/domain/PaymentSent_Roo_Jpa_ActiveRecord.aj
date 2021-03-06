// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.myshop.domain;

import com.myshop.domain.PaymentSent;
import java.util.List;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import org.springframework.transaction.annotation.Transactional;

privileged aspect PaymentSent_Roo_Jpa_ActiveRecord {
    
    @PersistenceContext
    transient EntityManager PaymentSent.entityManager;
    
    public static final List<String> PaymentSent.fieldNames4OrderClauseFilter = java.util.Arrays.asList("sentDate", "amount", "refNo", "isOpen");
    
    public static final EntityManager PaymentSent.entityManager() {
        EntityManager em = new PaymentSent().entityManager;
        if (em == null) throw new IllegalStateException("Entity manager has not been injected (is the Spring Aspects JAR configured as an AJC/AJDT aspects library?)");
        return em;
    }
    
    public static long PaymentSent.countPaymentSents() {
        return entityManager().createQuery("SELECT COUNT(o) FROM PaymentSent o", Long.class).getSingleResult();
    }
    
    public static List<PaymentSent> PaymentSent.findAllPaymentSents() {
        return entityManager().createQuery("SELECT o FROM PaymentSent o", PaymentSent.class).getResultList();
    }
    
    public static List<PaymentSent> PaymentSent.findAllPaymentSents(String sortFieldName, String sortOrder) {
        String jpaQuery = "SELECT o FROM PaymentSent o";
        if (fieldNames4OrderClauseFilter.contains(sortFieldName)) {
            jpaQuery = jpaQuery + " ORDER BY " + sortFieldName;
            if ("ASC".equalsIgnoreCase(sortOrder) || "DESC".equalsIgnoreCase(sortOrder)) {
                jpaQuery = jpaQuery + " " + sortOrder;
            }
        }
        return entityManager().createQuery(jpaQuery, PaymentSent.class).getResultList();
    }
    
    public static PaymentSent PaymentSent.findPaymentSent(Long id) {
        if (id == null) return null;
        return entityManager().find(PaymentSent.class, id);
    }
    
    public static List<PaymentSent> PaymentSent.findPaymentSentEntries(int firstResult, int maxResults) {
        return entityManager().createQuery("SELECT o FROM PaymentSent o", PaymentSent.class).setFirstResult(firstResult).setMaxResults(maxResults).getResultList();
    }
    
    public static List<PaymentSent> PaymentSent.findPaymentSentEntries(int firstResult, int maxResults, String sortFieldName, String sortOrder) {
        String jpaQuery = "SELECT o FROM PaymentSent o";
        if (fieldNames4OrderClauseFilter.contains(sortFieldName)) {
            jpaQuery = jpaQuery + " ORDER BY " + sortFieldName;
            if ("ASC".equalsIgnoreCase(sortOrder) || "DESC".equalsIgnoreCase(sortOrder)) {
                jpaQuery = jpaQuery + " " + sortOrder;
            }
        }
        return entityManager().createQuery(jpaQuery, PaymentSent.class).setFirstResult(firstResult).setMaxResults(maxResults).getResultList();
    }
    
    @Transactional
    public void PaymentSent.persist() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.persist(this);
    }
    
    @Transactional
    public void PaymentSent.remove() {
        if (this.entityManager == null) this.entityManager = entityManager();
        if (this.entityManager.contains(this)) {
            this.entityManager.remove(this);
        } else {
            PaymentSent attached = PaymentSent.findPaymentSent(this.id);
            this.entityManager.remove(attached);
        }
    }
    
    @Transactional
    public void PaymentSent.flush() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.flush();
    }
    
    @Transactional
    public void PaymentSent.clear() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.clear();
    }
    
    @Transactional
    public PaymentSent PaymentSent.merge() {
        if (this.entityManager == null) this.entityManager = entityManager();
        PaymentSent merged = this.entityManager.merge(this);
        this.entityManager.flush();
        return merged;
    }
    
}
