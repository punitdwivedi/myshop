// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.myshop.domain;

import com.myshop.domain.CustomerPoDetails;
import com.myshop.domain.Shipment;
import com.myshop.domain.ShipmentDetails;

privileged aspect ShipmentDetails_Roo_JavaBean {
    
    public Shipment ShipmentDetails.getShippingId() {
        return this.shippingId;
    }
    
    public void ShipmentDetails.setShippingId(Shipment shippingId) {
        this.shippingId = shippingId;
    }
    
    public CustomerPoDetails ShipmentDetails.getCustomerPoLineNo() {
        return this.customerPoLineNo;
    }
    
    public void ShipmentDetails.setCustomerPoLineNo(CustomerPoDetails customerPoLineNo) {
        this.customerPoLineNo = customerPoLineNo;
    }
    
    public Double ShipmentDetails.getShippedQuantity() {
        return this.shippedQuantity;
    }
    
    public void ShipmentDetails.setShippedQuantity(Double shippedQuantity) {
        this.shippedQuantity = shippedQuantity;
    }
    
}
