// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.myshop.domain;

import com.myshop.domain.VendorPayment;
import com.myshop.domain.VendorPaymentDetail;
import com.myshop.domain.VendorPoDetail;

privileged aspect VendorPaymentDetail_Roo_JavaBean {
    
    public VendorPayment VendorPaymentDetail.getVendorPaymentId() {
        return this.vendorPaymentId;
    }
    
    public void VendorPaymentDetail.setVendorPaymentId(VendorPayment vendorPaymentId) {
        this.vendorPaymentId = vendorPaymentId;
    }
    
    public VendorPoDetail VendorPaymentDetail.getVendorPoLineNo() {
        return this.vendorPoLineNo;
    }
    
    public void VendorPaymentDetail.setVendorPoLineNo(VendorPoDetail vendorPoLineNo) {
        this.vendorPoLineNo = vendorPoLineNo;
    }
    
    public Double VendorPaymentDetail.getUnitPrice() {
        return this.unitPrice;
    }
    
    public void VendorPaymentDetail.setUnitPrice(Double unitPrice) {
        this.unitPrice = unitPrice;
    }
    
    public Double VendorPaymentDetail.getQty() {
        return this.qty;
    }
    
    public void VendorPaymentDetail.setQty(Double qty) {
        this.qty = qty;
    }
    
}