// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.myshop.domain;

import com.myshop.domain.CustomerInvoice;
import java.util.Date;

privileged aspect CustomerInvoice_Roo_JavaBean {
    
    public Date CustomerInvoice.getInvoiceDate() {
        return this.invoiceDate;
    }
    
    public void CustomerInvoice.setInvoiceDate(Date invoiceDate) {
        this.invoiceDate = invoiceDate;
    }
    
    public Date CustomerInvoice.getDueDate() {
        return this.dueDate;
    }
    
    public void CustomerInvoice.setDueDate(Date dueDate) {
        this.dueDate = dueDate;
    }
    
    public String CustomerInvoice.getStatus() {
        return this.status;
    }
    
    public void CustomerInvoice.setStatus(String status) {
        this.status = status;
    }
    
}
