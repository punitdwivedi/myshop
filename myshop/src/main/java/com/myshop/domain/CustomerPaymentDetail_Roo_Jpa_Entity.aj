// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.myshop.domain;

import com.myshop.domain.CustomerPaymentDetail;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Version;

privileged aspect CustomerPaymentDetail_Roo_Jpa_Entity {
    
    declare @type: CustomerPaymentDetail: @Entity;
    
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name = "id")
    private Long CustomerPaymentDetail.id;
    
    @Version
    @Column(name = "version")
    private Integer CustomerPaymentDetail.version;
    
    public Long CustomerPaymentDetail.getId() {
        return this.id;
    }
    
    public void CustomerPaymentDetail.setId(Long id) {
        this.id = id;
    }
    
    public Integer CustomerPaymentDetail.getVersion() {
        return this.version;
    }
    
    public void CustomerPaymentDetail.setVersion(Integer version) {
        this.version = version;
    }
    
}