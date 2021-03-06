// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.myshop.domain;

import com.myshop.domain.VendorPoDetail;
import java.util.List;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import org.springframework.transaction.annotation.Transactional;

privileged aspect VendorPoDetail_Roo_Jpa_ActiveRecord {
    
    @PersistenceContext
    transient EntityManager VendorPoDetail.entityManager;
    
    public static final List<String> VendorPoDetail.fieldNames4OrderClauseFilter = java.util.Arrays.asList("vendorPo", "product", "CustomerPoLine", "vendorPartNo", "qty", "requiredDate", "confirmDate", "unit", "unitPrice", "status", "note");
    
    public static final EntityManager VendorPoDetail.entityManager() {
        EntityManager em = new VendorPoDetail().entityManager;
        if (em == null) throw new IllegalStateException("Entity manager has not been injected (is the Spring Aspects JAR configured as an AJC/AJDT aspects library?)");
        return em;
    }
    
    public static long VendorPoDetail.countVendorPoDetails() {
        return entityManager().createQuery("SELECT COUNT(o) FROM VendorPoDetail o", Long.class).getSingleResult();
    }
    
    public static List<VendorPoDetail> VendorPoDetail.findAllVendorPoDetails() {
        return entityManager().createQuery("SELECT o FROM VendorPoDetail o", VendorPoDetail.class).getResultList();
    }
    
    public static List<VendorPoDetail> VendorPoDetail.findAllVendorPoDetails(String sortFieldName, String sortOrder) {
        String jpaQuery = "SELECT o FROM VendorPoDetail o";
        if (fieldNames4OrderClauseFilter.contains(sortFieldName)) {
            jpaQuery = jpaQuery + " ORDER BY " + sortFieldName;
            if ("ASC".equalsIgnoreCase(sortOrder) || "DESC".equalsIgnoreCase(sortOrder)) {
                jpaQuery = jpaQuery + " " + sortOrder;
            }
        }
        return entityManager().createQuery(jpaQuery, VendorPoDetail.class).getResultList();
    }
    
    public static VendorPoDetail VendorPoDetail.findVendorPoDetail(Long id) {
        if (id == null) return null;
        return entityManager().find(VendorPoDetail.class, id);
    }
    
    public static List<VendorPoDetail> VendorPoDetail.findVendorPoDetailEntries(int firstResult, int maxResults) {
        return entityManager().createQuery("SELECT o FROM VendorPoDetail o", VendorPoDetail.class).setFirstResult(firstResult).setMaxResults(maxResults).getResultList();
    }
    
    public static List<VendorPoDetail> VendorPoDetail.findVendorPoDetailEntries(int firstResult, int maxResults, String sortFieldName, String sortOrder) {
        String jpaQuery = "SELECT o FROM VendorPoDetail o";
        if (fieldNames4OrderClauseFilter.contains(sortFieldName)) {
            jpaQuery = jpaQuery + " ORDER BY " + sortFieldName;
            if ("ASC".equalsIgnoreCase(sortOrder) || "DESC".equalsIgnoreCase(sortOrder)) {
                jpaQuery = jpaQuery + " " + sortOrder;
            }
        }
        return entityManager().createQuery(jpaQuery, VendorPoDetail.class).setFirstResult(firstResult).setMaxResults(maxResults).getResultList();
    }
    
    @Transactional
    public void VendorPoDetail.persist() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.persist(this);
    }
    
    @Transactional
    public void VendorPoDetail.remove() {
        if (this.entityManager == null) this.entityManager = entityManager();
        if (this.entityManager.contains(this)) {
            this.entityManager.remove(this);
        } else {
            VendorPoDetail attached = VendorPoDetail.findVendorPoDetail(this.id);
            this.entityManager.remove(attached);
        }
    }
    
    @Transactional
    public void VendorPoDetail.flush() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.flush();
    }
    
    @Transactional
    public void VendorPoDetail.clear() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.clear();
    }
    
    @Transactional
    public VendorPoDetail VendorPoDetail.merge() {
        if (this.entityManager == null) this.entityManager = entityManager();
        VendorPoDetail merged = this.entityManager.merge(this);
        this.entityManager.flush();
        return merged;
    }
    
}
