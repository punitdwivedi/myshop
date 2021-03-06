// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.myshop.domain;

import com.myshop.domain.Customer;
import com.myshop.domain.CustomerContact;
import com.myshop.domain.CustomerContactDataOnDemand;
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

privileged aspect CustomerContactDataOnDemand_Roo_DataOnDemand {
    
    declare @type: CustomerContactDataOnDemand: @Component;
    
    private Random CustomerContactDataOnDemand.rnd = new SecureRandom();
    
    private List<CustomerContact> CustomerContactDataOnDemand.data;
    
    public CustomerContact CustomerContactDataOnDemand.getNewTransientCustomerContact(int index) {
        CustomerContact obj = new CustomerContact();
        setCustomer(obj, index);
        setDob(obj, index);
        setEmail(obj, index);
        setFirstName(obj, index);
        setLastName(obj, index);
        setMobile(obj, index);
        setNote(obj, index);
        setPhone(obj, index);
        return obj;
    }
    
    public void CustomerContactDataOnDemand.setCustomer(CustomerContact obj, int index) {
        Customer customer = null;
        obj.setCustomer(customer);
    }
    
    public void CustomerContactDataOnDemand.setDob(CustomerContact obj, int index) {
        Date dob = new GregorianCalendar(Calendar.getInstance().get(Calendar.YEAR), Calendar.getInstance().get(Calendar.MONTH), Calendar.getInstance().get(Calendar.DAY_OF_MONTH), Calendar.getInstance().get(Calendar.HOUR_OF_DAY), Calendar.getInstance().get(Calendar.MINUTE), Calendar.getInstance().get(Calendar.SECOND) + new Double(Math.random() * 1000).intValue()).getTime();
        obj.setDob(dob);
    }
    
    public void CustomerContactDataOnDemand.setEmail(CustomerContact obj, int index) {
        String email = "foo" + index + "@bar.com";
        obj.setEmail(email);
    }
    
    public void CustomerContactDataOnDemand.setFirstName(CustomerContact obj, int index) {
        String firstName = "firstName_" + index;
        obj.setFirstName(firstName);
    }
    
    public void CustomerContactDataOnDemand.setLastName(CustomerContact obj, int index) {
        String lastName = "lastName_" + index;
        obj.setLastName(lastName);
    }
    
    public void CustomerContactDataOnDemand.setMobile(CustomerContact obj, int index) {
        String mobile = "mobile_" + index;
        obj.setMobile(mobile);
    }
    
    public void CustomerContactDataOnDemand.setNote(CustomerContact obj, int index) {
        String note = "note_" + index;
        obj.setNote(note);
    }
    
    public void CustomerContactDataOnDemand.setPhone(CustomerContact obj, int index) {
        String phone = "phone_" + index;
        obj.setPhone(phone);
    }
    
    public CustomerContact CustomerContactDataOnDemand.getSpecificCustomerContact(int index) {
        init();
        if (index < 0) {
            index = 0;
        }
        if (index > (data.size() - 1)) {
            index = data.size() - 1;
        }
        CustomerContact obj = data.get(index);
        Long id = obj.getId();
        return CustomerContact.findCustomerContact(id);
    }
    
    public CustomerContact CustomerContactDataOnDemand.getRandomCustomerContact() {
        init();
        CustomerContact obj = data.get(rnd.nextInt(data.size()));
        Long id = obj.getId();
        return CustomerContact.findCustomerContact(id);
    }
    
    public boolean CustomerContactDataOnDemand.modifyCustomerContact(CustomerContact obj) {
        return false;
    }
    
    public void CustomerContactDataOnDemand.init() {
        int from = 0;
        int to = 10;
        data = CustomerContact.findCustomerContactEntries(from, to);
        if (data == null) {
            throw new IllegalStateException("Find entries implementation for 'CustomerContact' illegally returned null");
        }
        if (!data.isEmpty()) {
            return;
        }
        
        data = new ArrayList<CustomerContact>();
        for (int i = 0; i < 10; i++) {
            CustomerContact obj = getNewTransientCustomerContact(i);
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
