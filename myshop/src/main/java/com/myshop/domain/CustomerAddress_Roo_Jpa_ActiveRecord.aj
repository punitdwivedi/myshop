// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.myshop.domain;

import com.myshop.domain.CustomerAddress;
import java.util.List;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import org.springframework.transaction.annotation.Transactional;

privileged aspect CustomerAddress_Roo_Jpa_ActiveRecord {
    
    @PersistenceContext
    transient EntityManager CustomerAddress.entityManager;
    
    public static final List<String> CustomerAddress.fieldNames4OrderClauseFilter = java.util.Arrays.asList("customer", "address");
    
    public static final EntityManager CustomerAddress.entityManager() {
        EntityManager em = new CustomerAddress().entityManager;
        if (em == null) throw new IllegalStateException("Entity manager has not been injected (is the Spring Aspects JAR configured as an AJC/AJDT aspects library?)");
        return em;
    }
    
    public static long CustomerAddress.countCustomerAddresses() {
        return entityManager().createQuery("SELECT COUNT(o) FROM CustomerAddress o", Long.class).getSingleResult();
    }
    
    public static List<CustomerAddress> CustomerAddress.findAllCustomerAddresses() {
        return entityManager().createQuery("SELECT o FROM CustomerAddress o", CustomerAddress.class).getResultList();
    }
    
    public static List<CustomerAddress> CustomerAddress.findAllCustomerAddresses(String sortFieldName, String sortOrder) {
        String jpaQuery = "SELECT o FROM CustomerAddress o";
        if (fieldNames4OrderClauseFilter.contains(sortFieldName)) {
            jpaQuery = jpaQuery + " ORDER BY " + sortFieldName;
            if ("ASC".equalsIgnoreCase(sortOrder) || "DESC".equalsIgnoreCase(sortOrder)) {
                jpaQuery = jpaQuery + " " + sortOrder;
            }
        }
        return entityManager().createQuery(jpaQuery, CustomerAddress.class).getResultList();
    }
    
    public static CustomerAddress CustomerAddress.findCustomerAddress(Long id) {
        if (id == null) return null;
        return entityManager().find(CustomerAddress.class, id);
    }
    
    public static List<CustomerAddress> CustomerAddress.findCustomerAddressEntries(int firstResult, int maxResults) {
        return entityManager().createQuery("SELECT o FROM CustomerAddress o", CustomerAddress.class).setFirstResult(firstResult).setMaxResults(maxResults).getResultList();
    }
    
    public static List<CustomerAddress> CustomerAddress.findCustomerAddressEntries(int firstResult, int maxResults, String sortFieldName, String sortOrder) {
        String jpaQuery = "SELECT o FROM CustomerAddress o";
        if (fieldNames4OrderClauseFilter.contains(sortFieldName)) {
            jpaQuery = jpaQuery + " ORDER BY " + sortFieldName;
            if ("ASC".equalsIgnoreCase(sortOrder) || "DESC".equalsIgnoreCase(sortOrder)) {
                jpaQuery = jpaQuery + " " + sortOrder;
            }
        }
        return entityManager().createQuery(jpaQuery, CustomerAddress.class).setFirstResult(firstResult).setMaxResults(maxResults).getResultList();
    }
    
    @Transactional
    public void CustomerAddress.persist() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.persist(this);
    }
    
    @Transactional
    public void CustomerAddress.remove() {
        if (this.entityManager == null) this.entityManager = entityManager();
        if (this.entityManager.contains(this)) {
            this.entityManager.remove(this);
        } else {
            CustomerAddress attached = CustomerAddress.findCustomerAddress(this.id);
            this.entityManager.remove(attached);
        }
    }
    
    @Transactional
    public void CustomerAddress.flush() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.flush();
    }
    
    @Transactional
    public void CustomerAddress.clear() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.clear();
    }
    
    @Transactional
    public CustomerAddress CustomerAddress.merge() {
        if (this.entityManager == null) this.entityManager = entityManager();
        CustomerAddress merged = this.entityManager.merge(this);
        this.entityManager.flush();
        return merged;
    }
    
}
