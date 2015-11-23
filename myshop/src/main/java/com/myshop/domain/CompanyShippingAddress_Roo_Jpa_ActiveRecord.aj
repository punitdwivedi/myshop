// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.myshop.domain;

import com.myshop.domain.CompanyShippingAddress;
import java.util.List;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import org.springframework.transaction.annotation.Transactional;

privileged aspect CompanyShippingAddress_Roo_Jpa_ActiveRecord {
    
    @PersistenceContext
    transient EntityManager CompanyShippingAddress.entityManager;
    
    public static final List<String> CompanyShippingAddress.fieldNames4OrderClauseFilter = java.util.Arrays.asList("street1", "street2", "city", "stateName", "zip", "country", "contactPerson", "telephone");
    
    public static final EntityManager CompanyShippingAddress.entityManager() {
        EntityManager em = new CompanyShippingAddress().entityManager;
        if (em == null) throw new IllegalStateException("Entity manager has not been injected (is the Spring Aspects JAR configured as an AJC/AJDT aspects library?)");
        return em;
    }
    
    public static long CompanyShippingAddress.countCompanyShippingAddresses() {
        return entityManager().createQuery("SELECT COUNT(o) FROM CompanyShippingAddress o", Long.class).getSingleResult();
    }
    
    public static List<CompanyShippingAddress> CompanyShippingAddress.findAllCompanyShippingAddresses() {
        return entityManager().createQuery("SELECT o FROM CompanyShippingAddress o", CompanyShippingAddress.class).getResultList();
    }
    
    public static List<CompanyShippingAddress> CompanyShippingAddress.findAllCompanyShippingAddresses(String sortFieldName, String sortOrder) {
        String jpaQuery = "SELECT o FROM CompanyShippingAddress o";
        if (fieldNames4OrderClauseFilter.contains(sortFieldName)) {
            jpaQuery = jpaQuery + " ORDER BY " + sortFieldName;
            if ("ASC".equalsIgnoreCase(sortOrder) || "DESC".equalsIgnoreCase(sortOrder)) {
                jpaQuery = jpaQuery + " " + sortOrder;
            }
        }
        return entityManager().createQuery(jpaQuery, CompanyShippingAddress.class).getResultList();
    }
    
    public static CompanyShippingAddress CompanyShippingAddress.findCompanyShippingAddress(Long id) {
        if (id == null) return null;
        return entityManager().find(CompanyShippingAddress.class, id);
    }
    
    public static List<CompanyShippingAddress> CompanyShippingAddress.findCompanyShippingAddressEntries(int firstResult, int maxResults) {
        return entityManager().createQuery("SELECT o FROM CompanyShippingAddress o", CompanyShippingAddress.class).setFirstResult(firstResult).setMaxResults(maxResults).getResultList();
    }
    
    public static List<CompanyShippingAddress> CompanyShippingAddress.findCompanyShippingAddressEntries(int firstResult, int maxResults, String sortFieldName, String sortOrder) {
        String jpaQuery = "SELECT o FROM CompanyShippingAddress o";
        if (fieldNames4OrderClauseFilter.contains(sortFieldName)) {
            jpaQuery = jpaQuery + " ORDER BY " + sortFieldName;
            if ("ASC".equalsIgnoreCase(sortOrder) || "DESC".equalsIgnoreCase(sortOrder)) {
                jpaQuery = jpaQuery + " " + sortOrder;
            }
        }
        return entityManager().createQuery(jpaQuery, CompanyShippingAddress.class).setFirstResult(firstResult).setMaxResults(maxResults).getResultList();
    }
    
    @Transactional
    public void CompanyShippingAddress.persist() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.persist(this);
    }
    
    @Transactional
    public void CompanyShippingAddress.remove() {
        if (this.entityManager == null) this.entityManager = entityManager();
        if (this.entityManager.contains(this)) {
            this.entityManager.remove(this);
        } else {
            CompanyShippingAddress attached = CompanyShippingAddress.findCompanyShippingAddress(this.id);
            this.entityManager.remove(attached);
        }
    }
    
    @Transactional
    public void CompanyShippingAddress.flush() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.flush();
    }
    
    @Transactional
    public void CompanyShippingAddress.clear() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.clear();
    }
    
    @Transactional
    public CompanyShippingAddress CompanyShippingAddress.merge() {
        if (this.entityManager == null) this.entityManager = entityManager();
        CompanyShippingAddress merged = this.entityManager.merge(this);
        this.entityManager.flush();
        return merged;
    }
    
}
