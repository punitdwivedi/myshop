// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.myshop.domain;

import com.myshop.domain.CustomerPoDelivery;
import com.myshop.domain.CustomerPoDetails;
import com.myshop.domain.Shipment;
import com.myshop.domain.ShipmentDetails;
import java.util.Date;

privileged aspect CustomerPoDelivery_Roo_JavaBean {
    
    public CustomerPoDetails CustomerPoDelivery.getCustomerPoLineNo() {
        return this.customerPoLineNo;
    }
    
    public void CustomerPoDelivery.setCustomerPoLineNo(CustomerPoDetails customerPoLineNo) {
        this.customerPoLineNo = customerPoLineNo;
    }
    
    public Date CustomerPoDelivery.getShipOutDate() {
        return this.shipOutDate;
    }
    
    public void CustomerPoDelivery.setShipOutDate(Date shipOutDate) {
        this.shipOutDate = shipOutDate;
    }
    
    public Double CustomerPoDelivery.getShipOutQuantity() {
        return this.shipOutQuantity;
    }
    
    public void CustomerPoDelivery.setShipOutQuantity(Double shipOutQuantity) {
        this.shipOutQuantity = shipOutQuantity;
    }
    
    public Shipment CustomerPoDelivery.getShipmentId() {
        return this.shipmentId;
    }
    
    public void CustomerPoDelivery.setShipmentId(Shipment shipmentId) {
        this.shipmentId = shipmentId;
    }
    
    public ShipmentDetails CustomerPoDelivery.getShipmentLineNo() {
        return this.shipmentLineNo;
    }
    
    public void CustomerPoDelivery.setShipmentLineNo(ShipmentDetails shipmentLineNo) {
        this.shipmentLineNo = shipmentLineNo;
    }
    
}
