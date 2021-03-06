// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.myshop.domain;

import com.myshop.domain.ProductInventory;
import java.util.List;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import org.springframework.transaction.annotation.Transactional;

privileged aspect ProductInventory_Roo_Jpa_ActiveRecord {
    
    @PersistenceContext
    transient EntityManager ProductInventory.entityManager;
    
    public static final List<String> ProductInventory.fieldNames4OrderClauseFilter = java.util.Arrays.asList("productId", "inventoryQty", "warehouseNo", "roomNo", "shelfNo", "seatNo");
    
    public static final EntityManager ProductInventory.entityManager() {
        EntityManager em = new ProductInventory().entityManager;
        if (em == null) throw new IllegalStateException("Entity manager has not been injected (is the Spring Aspects JAR configured as an AJC/AJDT aspects library?)");
        return em;
    }
    
    public static long ProductInventory.countProductInventorys() {
        return entityManager().createQuery("SELECT COUNT(o) FROM ProductInventory o", Long.class).getSingleResult();
    }
    
    public static List<ProductInventory> ProductInventory.findAllProductInventorys() {
        return entityManager().createQuery("SELECT o FROM ProductInventory o", ProductInventory.class).getResultList();
    }
    
    public static List<ProductInventory> ProductInventory.findAllProductInventorys(String sortFieldName, String sortOrder) {
        String jpaQuery = "SELECT o FROM ProductInventory o";
        if (fieldNames4OrderClauseFilter.contains(sortFieldName)) {
            jpaQuery = jpaQuery + " ORDER BY " + sortFieldName;
            if ("ASC".equalsIgnoreCase(sortOrder) || "DESC".equalsIgnoreCase(sortOrder)) {
                jpaQuery = jpaQuery + " " + sortOrder;
            }
        }
        return entityManager().createQuery(jpaQuery, ProductInventory.class).getResultList();
    }
    
    public static ProductInventory ProductInventory.findProductInventory(Long id) {
        if (id == null) return null;
        return entityManager().find(ProductInventory.class, id);
    }
    
    public static List<ProductInventory> ProductInventory.findProductInventoryEntries(int firstResult, int maxResults) {
        return entityManager().createQuery("SELECT o FROM ProductInventory o", ProductInventory.class).setFirstResult(firstResult).setMaxResults(maxResults).getResultList();
    }
    
    public static List<ProductInventory> ProductInventory.findProductInventoryEntries(int firstResult, int maxResults, String sortFieldName, String sortOrder) {
        String jpaQuery = "SELECT o FROM ProductInventory o";
        if (fieldNames4OrderClauseFilter.contains(sortFieldName)) {
            jpaQuery = jpaQuery + " ORDER BY " + sortFieldName;
            if ("ASC".equalsIgnoreCase(sortOrder) || "DESC".equalsIgnoreCase(sortOrder)) {
                jpaQuery = jpaQuery + " " + sortOrder;
            }
        }
        return entityManager().createQuery(jpaQuery, ProductInventory.class).setFirstResult(firstResult).setMaxResults(maxResults).getResultList();
    }
    
    @Transactional
    public void ProductInventory.persist() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.persist(this);
    }
    
    @Transactional
    public void ProductInventory.remove() {
        if (this.entityManager == null) this.entityManager = entityManager();
        if (this.entityManager.contains(this)) {
            this.entityManager.remove(this);
        } else {
            ProductInventory attached = ProductInventory.findProductInventory(this.id);
            this.entityManager.remove(attached);
        }
    }
    
    @Transactional
    public void ProductInventory.flush() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.flush();
    }
    
    @Transactional
    public void ProductInventory.clear() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.clear();
    }
    
    @Transactional
    public ProductInventory ProductInventory.merge() {
        if (this.entityManager == null) this.entityManager = entityManager();
        ProductInventory merged = this.entityManager.merge(this);
        this.entityManager.flush();
        return merged;
    }
    
}
