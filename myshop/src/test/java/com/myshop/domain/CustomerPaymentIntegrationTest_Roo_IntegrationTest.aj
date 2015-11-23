// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.myshop.domain;

import com.myshop.domain.CustomerPayment;
import com.myshop.domain.CustomerPaymentDataOnDemand;
import com.myshop.domain.CustomerPaymentIntegrationTest;
import java.util.Iterator;
import java.util.List;
import javax.validation.ConstraintViolation;
import javax.validation.ConstraintViolationException;
import org.junit.Assert;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.springframework.transaction.annotation.Transactional;

privileged aspect CustomerPaymentIntegrationTest_Roo_IntegrationTest {
    
    declare @type: CustomerPaymentIntegrationTest: @RunWith(SpringJUnit4ClassRunner.class);
    
    declare @type: CustomerPaymentIntegrationTest: @ContextConfiguration(locations = "classpath*:/META-INF/spring/applicationContext*.xml");
    
    declare @type: CustomerPaymentIntegrationTest: @Transactional;
    
    @Autowired
    CustomerPaymentDataOnDemand CustomerPaymentIntegrationTest.dod;
    
    @Test
    public void CustomerPaymentIntegrationTest.testCountCustomerPayments() {
        Assert.assertNotNull("Data on demand for 'CustomerPayment' failed to initialize correctly", dod.getRandomCustomerPayment());
        long count = CustomerPayment.countCustomerPayments();
        Assert.assertTrue("Counter for 'CustomerPayment' incorrectly reported there were no entries", count > 0);
    }
    
    @Test
    public void CustomerPaymentIntegrationTest.testFindCustomerPayment() {
        CustomerPayment obj = dod.getRandomCustomerPayment();
        Assert.assertNotNull("Data on demand for 'CustomerPayment' failed to initialize correctly", obj);
        Long id = obj.getId();
        Assert.assertNotNull("Data on demand for 'CustomerPayment' failed to provide an identifier", id);
        obj = CustomerPayment.findCustomerPayment(id);
        Assert.assertNotNull("Find method for 'CustomerPayment' illegally returned null for id '" + id + "'", obj);
        Assert.assertEquals("Find method for 'CustomerPayment' returned the incorrect identifier", id, obj.getId());
    }
    
    @Test
    public void CustomerPaymentIntegrationTest.testFindAllCustomerPayments() {
        Assert.assertNotNull("Data on demand for 'CustomerPayment' failed to initialize correctly", dod.getRandomCustomerPayment());
        long count = CustomerPayment.countCustomerPayments();
        Assert.assertTrue("Too expensive to perform a find all test for 'CustomerPayment', as there are " + count + " entries; set the findAllMaximum to exceed this value or set findAll=false on the integration test annotation to disable the test", count < 250);
        List<CustomerPayment> result = CustomerPayment.findAllCustomerPayments();
        Assert.assertNotNull("Find all method for 'CustomerPayment' illegally returned null", result);
        Assert.assertTrue("Find all method for 'CustomerPayment' failed to return any data", result.size() > 0);
    }
    
    @Test
    public void CustomerPaymentIntegrationTest.testFindCustomerPaymentEntries() {
        Assert.assertNotNull("Data on demand for 'CustomerPayment' failed to initialize correctly", dod.getRandomCustomerPayment());
        long count = CustomerPayment.countCustomerPayments();
        if (count > 20) count = 20;
        int firstResult = 0;
        int maxResults = (int) count;
        List<CustomerPayment> result = CustomerPayment.findCustomerPaymentEntries(firstResult, maxResults);
        Assert.assertNotNull("Find entries method for 'CustomerPayment' illegally returned null", result);
        Assert.assertEquals("Find entries method for 'CustomerPayment' returned an incorrect number of entries", count, result.size());
    }
    
    @Test
    public void CustomerPaymentIntegrationTest.testFlush() {
        CustomerPayment obj = dod.getRandomCustomerPayment();
        Assert.assertNotNull("Data on demand for 'CustomerPayment' failed to initialize correctly", obj);
        Long id = obj.getId();
        Assert.assertNotNull("Data on demand for 'CustomerPayment' failed to provide an identifier", id);
        obj = CustomerPayment.findCustomerPayment(id);
        Assert.assertNotNull("Find method for 'CustomerPayment' illegally returned null for id '" + id + "'", obj);
        boolean modified =  dod.modifyCustomerPayment(obj);
        Integer currentVersion = obj.getVersion();
        obj.flush();
        Assert.assertTrue("Version for 'CustomerPayment' failed to increment on flush directive", (currentVersion != null && obj.getVersion() > currentVersion) || !modified);
    }
    
    @Test
    public void CustomerPaymentIntegrationTest.testMergeUpdate() {
        CustomerPayment obj = dod.getRandomCustomerPayment();
        Assert.assertNotNull("Data on demand for 'CustomerPayment' failed to initialize correctly", obj);
        Long id = obj.getId();
        Assert.assertNotNull("Data on demand for 'CustomerPayment' failed to provide an identifier", id);
        obj = CustomerPayment.findCustomerPayment(id);
        boolean modified =  dod.modifyCustomerPayment(obj);
        Integer currentVersion = obj.getVersion();
        CustomerPayment merged = obj.merge();
        obj.flush();
        Assert.assertEquals("Identifier of merged object not the same as identifier of original object", merged.getId(), id);
        Assert.assertTrue("Version for 'CustomerPayment' failed to increment on merge and flush directive", (currentVersion != null && obj.getVersion() > currentVersion) || !modified);
    }
    
    @Test
    public void CustomerPaymentIntegrationTest.testPersist() {
        Assert.assertNotNull("Data on demand for 'CustomerPayment' failed to initialize correctly", dod.getRandomCustomerPayment());
        CustomerPayment obj = dod.getNewTransientCustomerPayment(Integer.MAX_VALUE);
        Assert.assertNotNull("Data on demand for 'CustomerPayment' failed to provide a new transient entity", obj);
        Assert.assertNull("Expected 'CustomerPayment' identifier to be null", obj.getId());
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
        Assert.assertNotNull("Expected 'CustomerPayment' identifier to no longer be null", obj.getId());
    }
    
    @Test
    public void CustomerPaymentIntegrationTest.testRemove() {
        CustomerPayment obj = dod.getRandomCustomerPayment();
        Assert.assertNotNull("Data on demand for 'CustomerPayment' failed to initialize correctly", obj);
        Long id = obj.getId();
        Assert.assertNotNull("Data on demand for 'CustomerPayment' failed to provide an identifier", id);
        obj = CustomerPayment.findCustomerPayment(id);
        obj.remove();
        obj.flush();
        Assert.assertNull("Failed to remove 'CustomerPayment' with identifier '" + id + "'", CustomerPayment.findCustomerPayment(id));
    }
    
}