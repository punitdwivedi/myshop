// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.myshop.domain;

import com.myshop.domain.SalesChannel;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Version;

privileged aspect SalesChannel_Roo_Jpa_Entity {
    
    declare @type: SalesChannel: @Entity;
    
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name = "id")
    private Long SalesChannel.id;
    
    @Version
    @Column(name = "version")
    private Integer SalesChannel.version;
    
    public Long SalesChannel.getId() {
        return this.id;
    }
    
    public void SalesChannel.setId(Long id) {
        this.id = id;
    }
    
    public Integer SalesChannel.getVersion() {
        return this.version;
    }
    
    public void SalesChannel.setVersion(Integer version) {
        this.version = version;
    }
    
}
