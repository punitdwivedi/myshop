// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.myshop.domain;

import com.myshop.domain.CompanyShippingAddressDataOnDemand;
import com.myshop.domain.VendorDataOnDemand;
import com.myshop.domain.VendorPurchaseOrder;
import com.myshop.domain.VendorPurchaseOrderDataOnDemand;
import java.security.SecureRandom;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Random;
import javax.validation.ConstraintViolation;
import javax.validation.ConstraintViolationException;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

privileged aspect VendorPurchaseOrderDataOnDemand_Roo_DataOnDemand {
    
    declare @type: VendorPurchaseOrderDataOnDemand: @Component;
    
    private Random VendorPurchaseOrderDataOnDemand.rnd = new SecureRandom();
    
    private List<VendorPurchaseOrder> VendorPurchaseOrderDataOnDemand.data;
    
    @Autowired
    VendorDataOnDemand VendorPurchaseOrderDataOnDemand.vendorDataOnDemand;
    
    @Autowired
    CompanyShippingAddressDataOnDemand VendorPurchaseOrderDataOnDemand.companyShippingAddressDataOnDemand;
    
    public VendorPurchaseOrder VendorPurchaseOrderDataOnDemand.getNewTransientVendorPurchaseOrder(int index) {
        VendorPurchaseOrder obj = new VendorPurchaseOrder();
        setIsStatusOpen(obj, index);
        setNote(obj, index);
        return obj;
    }
    
    public void VendorPurchaseOrderDataOnDemand.setIsStatusOpen(VendorPurchaseOrder obj, int index) {
        Boolean isStatusOpen = Boolean.TRUE;
        obj.setIsStatusOpen(isStatusOpen);
    }
    
    public void VendorPurchaseOrderDataOnDemand.setNote(VendorPurchaseOrder obj, int index) {
        String note = "note_" + index;
        obj.setNote(note);
    }
    
    public VendorPurchaseOrder VendorPurchaseOrderDataOnDemand.getSpecificVendorPurchaseOrder(int index) {
        init();
        if (index < 0) {
            index = 0;
        }
        if (index > (data.size() - 1)) {
            index = data.size() - 1;
        }
        VendorPurchaseOrder obj = data.get(index);
        Long id = obj.getId();
        return VendorPurchaseOrder.findVendorPurchaseOrder(id);
    }
    
    public VendorPurchaseOrder VendorPurchaseOrderDataOnDemand.getRandomVendorPurchaseOrder() {
        init();
        VendorPurchaseOrder obj = data.get(rnd.nextInt(data.size()));
        Long id = obj.getId();
        return VendorPurchaseOrder.findVendorPurchaseOrder(id);
    }
    
    public boolean VendorPurchaseOrderDataOnDemand.modifyVendorPurchaseOrder(VendorPurchaseOrder obj) {
        return false;
    }
    
    public void VendorPurchaseOrderDataOnDemand.init() {
        int from = 0;
        int to = 10;
        data = VendorPurchaseOrder.findVendorPurchaseOrderEntries(from, to);
        if (data == null) {
            throw new IllegalStateException("Find entries implementation for 'VendorPurchaseOrder' illegally returned null");
        }
        if (!data.isEmpty()) {
            return;
        }
        
        data = new ArrayList<VendorPurchaseOrder>();
        for (int i = 0; i < 10; i++) {
            VendorPurchaseOrder obj = getNewTransientVendorPurchaseOrder(i);
            try {
                obj.persist();
            } catch (final ConstraintViolationException e) {
                final StringBuilder msg = new StringBuilder();
                for (Iterator<ConstraintViolation<?>> iter = e.getConstraintViolations().iterator(); iter.hasNext();) {
                    final ConstraintViolation<?> cv = iter.next();
                    msg.append("[").append(cv.getRootBean().getClass().getName()).append(".").append(cv.getPropertyPath()).append(": ").append(cv.getMessage()).append(" (invalid value = ").append(cv.getInvalidValue()).append(")").append("]");
                }
                throw new IllegalStateException(msg.toString(), e);
            }
            obj.flush();
            data.add(obj);
        }
    }
    
}