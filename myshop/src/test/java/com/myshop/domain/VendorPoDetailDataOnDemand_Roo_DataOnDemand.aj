// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.myshop.domain;

import com.myshop.domain.CustomerPoDetailsDataOnDemand;
import com.myshop.domain.ProductDataOnDemand;
import com.myshop.domain.VendorPoDetail;
import com.myshop.domain.VendorPoDetailDataOnDemand;
import com.myshop.domain.VendorPurchaseOrderDataOnDemand;
import java.security.SecureRandom;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;
import java.util.GregorianCalendar;
import java.util.Iterator;
import java.util.List;
import java.util.Random;
import javax.validation.ConstraintViolation;
import javax.validation.ConstraintViolationException;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

privileged aspect VendorPoDetailDataOnDemand_Roo_DataOnDemand {
    
    declare @type: VendorPoDetailDataOnDemand: @Component;
    
    private Random VendorPoDetailDataOnDemand.rnd = new SecureRandom();
    
    private List<VendorPoDetail> VendorPoDetailDataOnDemand.data;
    
    @Autowired
    CustomerPoDetailsDataOnDemand VendorPoDetailDataOnDemand.customerPoDetailsDataOnDemand;
    
    @Autowired
    ProductDataOnDemand VendorPoDetailDataOnDemand.productDataOnDemand;
    
    @Autowired
    VendorPurchaseOrderDataOnDemand VendorPoDetailDataOnDemand.vendorPurchaseOrderDataOnDemand;
    
    public VendorPoDetail VendorPoDetailDataOnDemand.getNewTransientVendorPoDetail(int index) {
        VendorPoDetail obj = new VendorPoDetail();
        setConfirmDate(obj, index);
        setNote(obj, index);
        setQty(obj, index);
        setRequiredDate(obj, index);
        setStatus(obj, index);
        setUnit(obj, index);
        setUnitPrice(obj, index);
        setVendorPartNo(obj, index);
        return obj;
    }
    
    public void VendorPoDetailDataOnDemand.setConfirmDate(VendorPoDetail obj, int index) {
        Date confirmDate = new GregorianCalendar(Calendar.getInstance().get(Calendar.YEAR), Calendar.getInstance().get(Calendar.MONTH), Calendar.getInstance().get(Calendar.DAY_OF_MONTH), Calendar.getInstance().get(Calendar.HOUR_OF_DAY), Calendar.getInstance().get(Calendar.MINUTE), Calendar.getInstance().get(Calendar.SECOND) + new Double(Math.random() * 1000).intValue()).getTime();
        obj.setConfirmDate(confirmDate);
    }
    
    public void VendorPoDetailDataOnDemand.setNote(VendorPoDetail obj, int index) {
        String note = "note_" + index;
        obj.setNote(note);
    }
    
    public void VendorPoDetailDataOnDemand.setQty(VendorPoDetail obj, int index) {
        Double qty = new Integer(index).doubleValue();
        obj.setQty(qty);
    }
    
    public void VendorPoDetailDataOnDemand.setRequiredDate(VendorPoDetail obj, int index) {
        Date requiredDate = new GregorianCalendar(Calendar.getInstance().get(Calendar.YEAR), Calendar.getInstance().get(Calendar.MONTH), Calendar.getInstance().get(Calendar.DAY_OF_MONTH), Calendar.getInstance().get(Calendar.HOUR_OF_DAY), Calendar.getInstance().get(Calendar.MINUTE), Calendar.getInstance().get(Calendar.SECOND) + new Double(Math.random() * 1000).intValue()).getTime();
        obj.setRequiredDate(requiredDate);
    }
    
    public void VendorPoDetailDataOnDemand.setStatus(VendorPoDetail obj, int index) {
        String status = "status_" + index;
        obj.setStatus(status);
    }
    
    public void VendorPoDetailDataOnDemand.setUnit(VendorPoDetail obj, int index) {
        String unit = "unit_" + index;
        obj.setUnit(unit);
    }
    
    public void VendorPoDetailDataOnDemand.setUnitPrice(VendorPoDetail obj, int index) {
        Double unitPrice = new Integer(index).doubleValue();
        obj.setUnitPrice(unitPrice);
    }
    
    public void VendorPoDetailDataOnDemand.setVendorPartNo(VendorPoDetail obj, int index) {
        String vendorPartNo = "vendorPartNo_" + index;
        obj.setVendorPartNo(vendorPartNo);
    }
    
    public VendorPoDetail VendorPoDetailDataOnDemand.getSpecificVendorPoDetail(int index) {
        init();
        if (index < 0) {
            index = 0;
        }
        if (index > (data.size() - 1)) {
            index = data.size() - 1;
        }
        VendorPoDetail obj = data.get(index);
        Long id = obj.getId();
        return VendorPoDetail.findVendorPoDetail(id);
    }
    
    public VendorPoDetail VendorPoDetailDataOnDemand.getRandomVendorPoDetail() {
        init();
        VendorPoDetail obj = data.get(rnd.nextInt(data.size()));
        Long id = obj.getId();
        return VendorPoDetail.findVendorPoDetail(id);
    }
    
    public boolean VendorPoDetailDataOnDemand.modifyVendorPoDetail(VendorPoDetail obj) {
        return false;
    }
    
    public void VendorPoDetailDataOnDemand.init() {
        int from = 0;
        int to = 10;
        data = VendorPoDetail.findVendorPoDetailEntries(from, to);
        if (data == null) {
            throw new IllegalStateException("Find entries implementation for 'VendorPoDetail' illegally returned null");
        }
        if (!data.isEmpty()) {
            return;
        }
        
        data = new ArrayList<VendorPoDetail>();
        for (int i = 0; i < 10; i++) {
            VendorPoDetail obj = getNewTransientVendorPoDetail(i);
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
