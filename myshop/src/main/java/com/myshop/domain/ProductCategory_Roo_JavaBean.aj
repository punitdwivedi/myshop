// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.myshop.domain;

import com.myshop.domain.ProductCategory;
import java.util.Date;

privileged aspect ProductCategory_Roo_JavaBean {
    
    public String ProductCategory.getName() {
        return this.name;
    }
    
    public void ProductCategory.setName(String name) {
        this.name = name;
    }
    
    public Date ProductCategory.getLastModifiedDate() {
        return this.lastModifiedDate;
    }
    
    public void ProductCategory.setLastModifiedDate(Date lastModifiedDate) {
        this.lastModifiedDate = lastModifiedDate;
    }
    
}
