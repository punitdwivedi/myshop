// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.myshop.domain;

import com.myshop.domain.CustomerContact;
import java.util.List;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import org.springframework.transaction.annotation.Transactional;

privileged aspect CustomerContact_Roo_Jpa_ActiveRecord {
    
    @PersistenceContext
    transient EntityManager CustomerContact.entityManager;
    
    public static final List<String> CustomerContact.fieldNames4OrderClauseFilter = java.util.Arrays.asList("customer", "firstName", "lastName", "mobile", "phone", "email", "note", "dob");
    
    public static final EntityManager CustomerContact.entityManager() {
        EntityManager em = new CustomerContact().entityManager;
        if (em == null) throw new IllegalStateException("Entity manager has not been injected (is the Spring Aspects JAR configured as an AJC/AJDT aspects library?)");
        return em;
    }
    
    public static long CustomerContact.countCustomerContacts() {
        return entityManager().createQuery("SELECT COUNT(o) FROM CustomerContact o", Long.class).getSingleResult();
    }
    
    public static List<CustomerContact> CustomerContact.findAllCustomerContacts() {
        return entityManager().createQuery("SELECT o FROM CustomerContact o", CustomerContact.class).getResultList();
    }
    
    public static List<CustomerContact> CustomerContact.findAllCustomerContacts(String sortFieldName, String sortOrder) {
        String jpaQuery = "SELECT o FROM CustomerContact o";
        if (fieldNames4OrderClauseFilter.contains(sortFieldName)) {
            jpaQuery = jpaQuery + " ORDER BY " + sortFieldName;
            if ("ASC".equalsIgnoreCase(sortOrder) || "DESC".equalsIgnoreCase(sortOrder)) {
                jpaQuery = jpaQuery + " " + sortOrder;
            }
        }
        return entityManager().createQuery(jpaQuery, CustomerContact.class).getResultList();
    }
    
    public static CustomerContact CustomerContact.findCustomerContact(Long id) {
        if (id == null) return null;
        return entityManager().find(CustomerContact.class, id);
    }
    
    public static List<CustomerContact> CustomerContact.findCustomerContactEntries(int firstResult, int maxResults) {
        return entityManager().createQuery("SELECT o FROM CustomerContact o", CustomerContact.class).setFirstResult(firstResult).setMaxResults(maxResults).getResultList();
    }
    
    public static List<CustomerContact> CustomerContact.findCustomerContactEntries(int firstResult, int maxResults, String sortFieldName, String sortOrder) {
        String jpaQuery = "SELECT o FROM CustomerContact o";
        if (fieldNames4OrderClauseFilter.contains(sortFieldName)) {
            jpaQuery = jpaQuery + " ORDER BY " + sortFieldName;
            if ("ASC".equalsIgnoreCase(sortOrder) || "DESC".equalsIgnoreCase(sortOrder)) {
                jpaQuery = jpaQuery + " " + sortOrder;
            }
        }
        return entityManager().createQuery(jpaQuery, CustomerContact.class).setFirstResult(firstResult).setMaxResults(maxResults).getResultList();
    }
    
    @Transactional
    public void CustomerContact.persist() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.persist(this);
    }
    
    @Transactional
    public void CustomerContact.remove() {
        if (this.entityManager == null) this.entityManager = entityManager();
        if (this.entityManager.contains(this)) {
            this.entityManager.remove(this);
        } else {
            CustomerContact attached = CustomerContact.findCustomerContact(this.id);
            this.entityManager.remove(attached);
        }
    }
    
    @Transactional
    public void CustomerContact.flush() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.flush();
    }
    
    @Transactional
    public void CustomerContact.clear() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.clear();
    }
    
    @Transactional
    public CustomerContact CustomerContact.merge() {
        if (this.entityManager == null) this.entityManager = entityManager();
        CustomerContact merged = this.entityManager.merge(this);
        this.entityManager.flush();
        return merged;
    }
    
}
