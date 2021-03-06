// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.myshop.domain;

import com.myshop.domain.PaymentTerm;
import com.myshop.domain.PaymentTermDataOnDemand;
import java.security.SecureRandom;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Random;
import javax.validation.ConstraintViolation;
import javax.validation.ConstraintViolationException;
import org.springframework.stereotype.Component;

privileged aspect PaymentTermDataOnDemand_Roo_DataOnDemand {
    
    declare @type: PaymentTermDataOnDemand: @Component;
    
    private Random PaymentTermDataOnDemand.rnd = new SecureRandom();
    
    private List<PaymentTerm> PaymentTermDataOnDemand.data;
    
    public PaymentTerm PaymentTermDataOnDemand.getNewTransientPaymentTerm(int index) {
        PaymentTerm obj = new PaymentTerm();
        setTerm(obj, index);
        return obj;
    }
    
    public void PaymentTermDataOnDemand.setTerm(PaymentTerm obj, int index) {
        String term = "term_" + index;
        obj.setTerm(term);
    }
    
    public PaymentTerm PaymentTermDataOnDemand.getSpecificPaymentTerm(int index) {
        init();
        if (index < 0) {
            index = 0;
        }
        if (index > (data.size() - 1)) {
            index = data.size() - 1;
        }
        PaymentTerm obj = data.get(index);
        Long id = obj.getId();
        return PaymentTerm.findPaymentTerm(id);
    }
    
    public PaymentTerm PaymentTermDataOnDemand.getRandomPaymentTerm() {
        init();
        PaymentTerm obj = data.get(rnd.nextInt(data.size()));
        Long id = obj.getId();
        return PaymentTerm.findPaymentTerm(id);
    }
    
    public boolean PaymentTermDataOnDemand.modifyPaymentTerm(PaymentTerm obj) {
        return false;
    }
    
    public void PaymentTermDataOnDemand.init() {
        int from = 0;
        int to = 10;
        data = PaymentTerm.findPaymentTermEntries(from, to);
        if (data == null) {
            throw new IllegalStateException("Find entries implementation for 'PaymentTerm' illegally returned null");
        }
        if (!data.isEmpty()) {
            return;
        }
        
        data = new ArrayList<PaymentTerm>();
        for (int i = 0; i < 10; i++) {
            PaymentTerm obj = getNewTransientPaymentTerm(i);
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
