// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.myshop.domain;

import com.myshop.domain.CustomerPayment;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Version;

privileged aspect CustomerPayment_Roo_Jpa_Entity {
    
    declare @type: CustomerPayment: @Entity;
    
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name = "id")
    private Long CustomerPayment.id;
    
    @Version
    @Column(name = "version")
    private Integer CustomerPayment.version;
    
    public Long CustomerPayment.getId() {
        return this.id;
    }
    
    public void CustomerPayment.setId(Long id) {
        this.id = id;
    }
    
    public Integer CustomerPayment.getVersion() {
        return this.version;
    }
    
    public void CustomerPayment.setVersion(Integer version) {
        this.version = version;
    }
    
}
