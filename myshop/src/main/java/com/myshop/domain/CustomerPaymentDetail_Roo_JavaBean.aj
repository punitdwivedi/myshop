// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.myshop.domain;

import com.myshop.domain.CustomerInvoiceDetails;
import com.myshop.domain.CustomerPayment;
import com.myshop.domain.CustomerPaymentDetail;

privileged aspect CustomerPaymentDetail_Roo_JavaBean {
    
    public CustomerPayment CustomerPaymentDetail.getPaymentId() {
        return this.paymentId;
    }
    
    public void CustomerPaymentDetail.setPaymentId(CustomerPayment paymentId) {
        this.paymentId = paymentId;
    }
    
    public CustomerInvoiceDetails CustomerPaymentDetail.getInvoiceLineNo() {
        return this.invoiceLineNo;
    }
    
    public void CustomerPaymentDetail.setInvoiceLineNo(CustomerInvoiceDetails invoiceLineNo) {
        this.invoiceLineNo = invoiceLineNo;
    }
    
    public Double CustomerPaymentDetail.getAmount() {
        return this.amount;
    }
    
    public void CustomerPaymentDetail.setAmount(Double amount) {
        this.amount = amount;
    }
    
}
