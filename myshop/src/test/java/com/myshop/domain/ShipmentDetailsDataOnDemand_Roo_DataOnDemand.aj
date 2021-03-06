// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.myshop.domain;

import com.myshop.domain.CustomerPoDetailsDataOnDemand;
import com.myshop.domain.ShipmentDataOnDemand;
import com.myshop.domain.ShipmentDetails;
import com.myshop.domain.ShipmentDetailsDataOnDemand;
import java.security.SecureRandom;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Random;
import javax.validation.ConstraintViolation;
import javax.validation.ConstraintViolationException;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

privileged aspect ShipmentDetailsDataOnDemand_Roo_DataOnDemand {
    
    declare @type: ShipmentDetailsDataOnDemand: @Component;
    
    private Random ShipmentDetailsDataOnDemand.rnd = new SecureRandom();
    
    private List<ShipmentDetails> ShipmentDetailsDataOnDemand.data;
    
    @Autowired
    CustomerPoDetailsDataOnDemand ShipmentDetailsDataOnDemand.customerPoDetailsDataOnDemand;
    
    @Autowired
    ShipmentDataOnDemand ShipmentDetailsDataOnDemand.shipmentDataOnDemand;
    
    public ShipmentDetails ShipmentDetailsDataOnDemand.getNewTransientShipmentDetails(int index) {
        ShipmentDetails obj = new ShipmentDetails();
        setShippedQuantity(obj, index);
        return obj;
    }
    
    public void ShipmentDetailsDataOnDemand.setShippedQuantity(ShipmentDetails obj, int index) {
        Double shippedQuantity = new Integer(index).doubleValue();
        obj.setShippedQuantity(shippedQuantity);
    }
    
    public ShipmentDetails ShipmentDetailsDataOnDemand.getSpecificShipmentDetails(int index) {
        init();
        if (index < 0) {
            index = 0;
        }
        if (index > (data.size() - 1)) {
            index = data.size() - 1;
        }
        ShipmentDetails obj = data.get(index);
        Long id = obj.getId();
        return ShipmentDetails.findShipmentDetails(id);
    }
    
    public ShipmentDetails ShipmentDetailsDataOnDemand.getRandomShipmentDetails() {
        init();
        ShipmentDetails obj = data.get(rnd.nextInt(data.size()));
        Long id = obj.getId();
        return ShipmentDetails.findShipmentDetails(id);
    }
    
    public boolean ShipmentDetailsDataOnDemand.modifyShipmentDetails(ShipmentDetails obj) {
        return false;
    }
    
    public void ShipmentDetailsDataOnDemand.init() {
        int from = 0;
        int to = 10;
        data = ShipmentDetails.findShipmentDetailsEntries(from, to);
        if (data == null) {
            throw new IllegalStateException("Find entries implementation for 'ShipmentDetails' illegally returned null");
        }
        if (!data.isEmpty()) {
            return;
        }
        
        data = new ArrayList<ShipmentDetails>();
        for (int i = 0; i < 10; i++) {
            ShipmentDetails obj = getNewTransientShipmentDetails(i);
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
