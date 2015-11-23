// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.myshop.domain;

import com.myshop.domain.PaymentSent;
import com.myshop.domain.PaymentSentDataOnDemand;
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
import org.springframework.stereotype.Component;

privileged aspect PaymentSentDataOnDemand_Roo_DataOnDemand {
    
    declare @type: PaymentSentDataOnDemand: @Component;
    
    private Random PaymentSentDataOnDemand.rnd = new SecureRandom();
    
    private List<PaymentSent> PaymentSentDataOnDemand.data;
    
    public PaymentSent PaymentSentDataOnDemand.getNewTransientPaymentSent(int index) {
        PaymentSent obj = new PaymentSent();
        setAmount(obj, index);
        setIsOpen(obj, index);
        setRefNo(obj, index);
        setSentDate(obj, index);
        return obj;
    }
    
    public void PaymentSentDataOnDemand.setAmount(PaymentSent obj, int index) {
        Double amount = new Integer(index).doubleValue();
        obj.setAmount(amount);
    }
    
    public void PaymentSentDataOnDemand.setIsOpen(PaymentSent obj, int index) {
        Boolean isOpen = Boolean.TRUE;
        obj.setIsOpen(isOpen);
    }
    
    public void PaymentSentDataOnDemand.setRefNo(PaymentSent obj, int index) {
        String refNo = "refNo_" + index;
        obj.setRefNo(refNo);
    }
    
    public void PaymentSentDataOnDemand.setSentDate(PaymentSent obj, int index) {
        Date sentDate = new GregorianCalendar(Calendar.getInstance().get(Calendar.YEAR), Calendar.getInstance().get(Calendar.MONTH), Calendar.getInstance().get(Calendar.DAY_OF_MONTH), Calendar.getInstance().get(Calendar.HOUR_OF_DAY), Calendar.getInstance().get(Calendar.MINUTE), Calendar.getInstance().get(Calendar.SECOND) + new Double(Math.random() * 1000).intValue()).getTime();
        obj.setSentDate(sentDate);
    }
    
    public PaymentSent PaymentSentDataOnDemand.getSpecificPaymentSent(int index) {
        init();
        if (index < 0) {
            index = 0;
        }
        if (index > (data.size() - 1)) {
            index = data.size() - 1;
        }
        PaymentSent obj = data.get(index);
        Long id = obj.getId();
        return PaymentSent.findPaymentSent(id);
    }
    
    public PaymentSent PaymentSentDataOnDemand.getRandomPaymentSent() {
        init();
        PaymentSent obj = data.get(rnd.nextInt(data.size()));
        Long id = obj.getId();
        return PaymentSent.findPaymentSent(id);
    }
    
    public boolean PaymentSentDataOnDemand.modifyPaymentSent(PaymentSent obj) {
        return false;
    }
    
    public void PaymentSentDataOnDemand.init() {
        int from = 0;
        int to = 10;
        data = PaymentSent.findPaymentSentEntries(from, to);
        if (data == null) {
            throw new IllegalStateException("Find entries implementation for 'PaymentSent' illegally returned null");
        }
        if (!data.isEmpty()) {
            return;
        }
        
        data = new ArrayList<PaymentSent>();
        for (int i = 0; i < 10; i++) {
            PaymentSent obj = getNewTransientPaymentSent(i);
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
