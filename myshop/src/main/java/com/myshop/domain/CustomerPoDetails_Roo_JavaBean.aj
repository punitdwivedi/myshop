// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.myshop.domain;

import com.myshop.domain.CustomerPO;
import com.myshop.domain.CustomerPoDetails;
import com.myshop.domain.Product;
import java.util.Date;

privileged aspect CustomerPoDetails_Roo_JavaBean {
    
    public CustomerPO CustomerPoDetails.getCustomerPoId() {
        return this.customerPoId;
    }
    
    public void CustomerPoDetails.setCustomerPoId(CustomerPO customerPoId) {
        this.customerPoId = customerPoId;
    }
    
    public Product CustomerPoDetails.getProductId() {
        return this.productId;
    }
    
    public void CustomerPoDetails.setProductId(Product productId) {
        this.productId = productId;
    }
    
    public Double CustomerPoDetails.getQty() {
        return this.qty;
    }
    
    public void CustomerPoDetails.setQty(Double qty) {
        this.qty = qty;
    }
    
    public String CustomerPoDetails.getUnit() {
        return this.unit;
    }
    
    public void CustomerPoDetails.setUnit(String unit) {
        this.unit = unit;
    }
    
    public Double CustomerPoDetails.getUnitPrice() {
        return this.unitPrice;
    }
    
    public void CustomerPoDetails.setUnitPrice(Double unitPrice) {
        this.unitPrice = unitPrice;
    }
    
    public Date CustomerPoDetails.getDesiredDeliveryDate() {
        return this.desiredDeliveryDate;
    }
    
    public void CustomerPoDetails.setDesiredDeliveryDate(Date desiredDeliveryDate) {
        this.desiredDeliveryDate = desiredDeliveryDate;
    }
    
    public Date CustomerPoDetails.getConfirmedDeliveryDate() {
        return this.confirmedDeliveryDate;
    }
    
    public void CustomerPoDetails.setConfirmedDeliveryDate(Date confirmedDeliveryDate) {
        this.confirmedDeliveryDate = confirmedDeliveryDate;
    }
    
    public String CustomerPoDetails.getOrderStatus() {
        return this.orderStatus;
    }
    
    public void CustomerPoDetails.setOrderStatus(String orderStatus) {
        this.orderStatus = orderStatus;
    }
    
}