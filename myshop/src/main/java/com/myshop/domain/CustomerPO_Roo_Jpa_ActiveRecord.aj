// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.myshop.domain;

import com.myshop.domain.CustomerPO;
import java.util.List;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import org.springframework.transaction.annotation.Transactional;

privileged aspect CustomerPO_Roo_Jpa_ActiveRecord {
    
    @PersistenceContext
    transient EntityManager CustomerPO.entityManager;
    
    public static final List<String> CustomerPO.fieldNames4OrderClauseFilter = java.util.Arrays.asList("shippingAddressId", "orderIsOpen", "note");
    
    public static final EntityManager CustomerPO.entityManager() {
        EntityManager em = new CustomerPO().entityManager;
        if (em == null) throw new IllegalStateException("Entity manager has not been injected (is the Spring Aspects JAR configured as an AJC/AJDT aspects library?)");
        return em;
    }
    
    public static long CustomerPO.countCustoes() {
        return entityManager().createQuery("SELECT COUNT(o) FROM CustomerPO o", Long.class).getSingleResult();
    }
    
    public static List<CustomerPO> CustomerPO.findAllCustoes() {
        return entityManager().createQuery("SELECT o FROM CustomerPO o", CustomerPO.class).getResultList();
    }
    
    public static List<CustomerPO> CustomerPO.findAllCustoes(String sortFieldName, String sortOrder) {
        String jpaQuery = "SELECT o FROM CustomerPO o";
        if (fieldNames4OrderClauseFilter.contains(sortFieldName)) {
            jpaQuery = jpaQuery + " ORDER BY " + sortFieldName;
            if ("ASC".equalsIgnoreCase(sortOrder) || "DESC".equalsIgnoreCase(sortOrder)) {
                jpaQuery = jpaQuery + " " + sortOrder;
            }
        }
        return entityManager().createQuery(jpaQuery, CustomerPO.class).getResultList();
    }
    
    public static CustomerPO CustomerPO.findCustomerPO(Long id) {
        if (id == null) return null;
        return entityManager().find(CustomerPO.class, id);
    }
    
    public static List<CustomerPO> CustomerPO.findCustomerPOEntries(int firstResult, int maxResults) {
        return entityManager().createQuery("SELECT o FROM CustomerPO o", CustomerPO.class).setFirstResult(firstResult).setMaxResults(maxResults).getResultList();
    }
    
    public static List<CustomerPO> CustomerPO.findCustomerPOEntries(int firstResult, int maxResults, String sortFieldName, String sortOrder) {
        String jpaQuery = "SELECT o FROM CustomerPO o";
        if (fieldNames4OrderClauseFilter.contains(sortFieldName)) {
            jpaQuery = jpaQuery + " ORDER BY " + sortFieldName;
            if ("ASC".equalsIgnoreCase(sortOrder) || "DESC".equalsIgnoreCase(sortOrder)) {
                jpaQuery = jpaQuery + " " + sortOrder;
            }
        }
        return entityManager().createQuery(jpaQuery, CustomerPO.class).setFirstResult(firstResult).setMaxResults(maxResults).getResultList();
    }
    
    @Transactional
    public void CustomerPO.persist() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.persist(this);
    }
    
    @Transactional
    public void CustomerPO.remove() {
        if (this.entityManager == null) this.entityManager = entityManager();
        if (this.entityManager.contains(this)) {
            this.entityManager.remove(this);
        } else {
            CustomerPO attached = CustomerPO.findCustomerPO(this.id);
            this.entityManager.remove(attached);
        }
    }
    
    @Transactional
    public void CustomerPO.flush() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.flush();
    }
    
    @Transactional
    public void CustomerPO.clear() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.clear();
    }
    
    @Transactional
    public CustomerPO CustomerPO.merge() {
        if (this.entityManager == null) this.entityManager = entityManager();
        CustomerPO merged = this.entityManager.merge(this);
        this.entityManager.flush();
        return merged;
    }
    
}