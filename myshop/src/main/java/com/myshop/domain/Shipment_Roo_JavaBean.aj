// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.myshop.domain;

import com.myshop.domain.Shipment;
import java.util.Date;

privileged aspect Shipment_Roo_JavaBean {
    
    public Date Shipment.getShippingDate() {
        return this.shippingDate;
    }
    
    public void Shipment.setShippingDate(Date shippingDate) {
        this.shippingDate = shippingDate;
    }
    
    public Double Shipment.getShippingFee() {
        return this.shippingFee;
    }
    
    public void Shipment.setShippingFee(Double shippingFee) {
        this.shippingFee = shippingFee;
    }
    
    public String Shipment.getCarrier() {
        return this.carrier;
    }
    
    public void Shipment.setCarrier(String carrier) {
        this.carrier = carrier;
    }
    
    public String Shipment.getTrackingNumber() {
        return this.trackingNumber;
    }
    
    public void Shipment.setTrackingNumber(String trackingNumber) {
        this.trackingNumber = trackingNumber;
    }
    
    public String Shipment.getPaidBy() {
        return this.paidBy;
    }
    
    public void Shipment.setPaidBy(String paidBy) {
        this.paidBy = paidBy;
    }
    
}
