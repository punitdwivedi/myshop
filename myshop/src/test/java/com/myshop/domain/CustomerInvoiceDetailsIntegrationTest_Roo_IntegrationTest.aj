// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.myshop.domain;

import com.myshop.domain.CustomerInvoiceDetails;
import com.myshop.domain.CustomerInvoiceDetailsDataOnDemand;
import com.myshop.domain.CustomerInvoiceDetailsIntegrationTest;
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

privileged aspect CustomerInvoiceDetailsIntegrationTest_Roo_IntegrationTest {
    
    declare @type: CustomerInvoiceDetailsIntegrationTest: @RunWith(SpringJUnit4ClassRunner.class);
    
    declare @type: CustomerInvoiceDetailsIntegrationTest: @ContextConfiguration(locations = "classpath*:/META-INF/spring/applicationContext*.xml");
    
    declare @type: CustomerInvoiceDetailsIntegrationTest: @Transactional;
    
    @Autowired
    CustomerInvoiceDetailsDataOnDemand CustomerInvoiceDetailsIntegrationTest.dod;
    
    @Test
    public void CustomerInvoiceDetailsIntegrationTest.testCountCustomerInvoiceDetailses() {
        Assert.assertNotNull("Data on demand for 'CustomerInvoiceDetails' failed to initialize correctly", dod.getRandomCustomerInvoiceDetails());
        long count = CustomerInvoiceDetails.countCustomerInvoiceDetailses();
        Assert.assertTrue("Counter for 'CustomerInvoiceDetails' incorrectly reported there were no entries", count > 0);
    }
    
    @Test
    public void CustomerInvoiceDetailsIntegrationTest.testFindCustomerInvoiceDetails() {
        CustomerInvoiceDetails obj = dod.getRandomCustomerInvoiceDetails();
        Assert.assertNotNull("Data on demand for 'CustomerInvoiceDetails' failed to initialize correctly", obj);
        Long id = obj.getId();
        Assert.assertNotNull("Data on demand for 'CustomerInvoiceDetails' failed to provide an identifier", id);
        obj = CustomerInvoiceDetails.findCustomerInvoiceDetails(id);
        Assert.assertNotNull("Find method for 'CustomerInvoiceDetails' illegally returned null for id '" + id + "'", obj);
        Assert.assertEquals("Find method for 'CustomerInvoiceDetails' returned the incorrect identifier", id, obj.getId());
    }
    
    @Test
    public void CustomerInvoiceDetailsIntegrationTest.testFindAllCustomerInvoiceDetailses() {
        Assert.assertNotNull("Data on demand for 'CustomerInvoiceDetails' failed to initialize correctly", dod.getRandomCustomerInvoiceDetails());
        long count = CustomerInvoiceDetails.countCustomerInvoiceDetailses();
        Assert.assertTrue("Too expensive to perform a find all test for 'CustomerInvoiceDetails', as there are " + count + " entries; set the findAllMaximum to exceed this value or set findAll=false on the integration test annotation to disable the test", count < 250);
        List<CustomerInvoiceDetails> result = CustomerInvoiceDetails.findAllCustomerInvoiceDetailses();
        Assert.assertNotNull("Find all method for 'CustomerInvoiceDetails' illegally returned null", result);
        Assert.assertTrue("Find all method for 'CustomerInvoiceDetails' failed to return any data", result.size() > 0);
    }
    
    @Test
    public void CustomerInvoiceDetailsIntegrationTest.testFindCustomerInvoiceDetailsEntries() {
        Assert.assertNotNull("Data on demand for 'CustomerInvoiceDetails' failed to initialize correctly", dod.getRandomCustomerInvoiceDetails());
        long count = CustomerInvoiceDetails.countCustomerInvoiceDetailses();
        if (count > 20) count = 20;
        int firstResult = 0;
        int maxResults = (int) count;
        List<CustomerInvoiceDetails> result = CustomerInvoiceDetails.findCustomerInvoiceDetailsEntries(firstResult, maxResults);
        Assert.assertNotNull("Find entries method for 'CustomerInvoiceDetails' illegally returned null", result);
        Assert.assertEquals("Find entries method for 'CustomerInvoiceDetails' returned an incorrect number of entries", count, result.size());
    }
    
    @Test
    public void CustomerInvoiceDetailsIntegrationTest.testFlush() {
        CustomerInvoiceDetails obj = dod.getRandomCustomerInvoiceDetails();
        Assert.assertNotNull("Data on demand for 'CustomerInvoiceDetails' failed to initialize correctly", obj);
        Long id = obj.getId();
        Assert.assertNotNull("Data on demand for 'CustomerInvoiceDetails' failed to provide an identifier", id);
        obj = CustomerInvoiceDetails.findCustomerInvoiceDetails(id);
        Assert.assertNotNull("Find method for 'CustomerInvoiceDetails' illegally returned null for id '" + id + "'", obj);
        boolean modified =  dod.modifyCustomerInvoiceDetails(obj);
        Integer currentVersion = obj.getVersion();
        obj.flush();
        Assert.assertTrue("Version for 'CustomerInvoiceDetails' failed to increment on flush directive", (currentVersion != null && obj.getVersion() > currentVersion) || !modified);
    }
    
    @Test
    public void CustomerInvoiceDetailsIntegrationTest.testMergeUpdate() {
        CustomerInvoiceDetails obj = dod.getRandomCustomerInvoiceDetails();
        Assert.assertNotNull("Data on demand for 'CustomerInvoiceDetails' failed to initialize correctly", obj);
        Long id = obj.getId();
        Assert.assertNotNull("Data on demand for 'CustomerInvoiceDetails' failed to provide an identifier", id);
        obj = CustomerInvoiceDetails.findCustomerInvoiceDetails(id);
        boolean modified =  dod.modifyCustomerInvoiceDetails(obj);
        Integer currentVersion = obj.getVersion();
        CustomerInvoiceDetails merged = obj.merge();
        obj.flush();
        Assert.assertEquals("Identifier of merged object not the same as identifier of original object", merged.getId(), id);
        Assert.assertTrue("Version for 'CustomerInvoiceDetails' failed to increment on merge and flush directive", (currentVersion != null && obj.getVersion() > currentVersion) || !modified);
    }
    
    @Test
    public void CustomerInvoiceDetailsIntegrationTest.testPersist() {
        Assert.assertNotNull("Data on demand for 'CustomerInvoiceDetails' failed to initialize correctly", dod.getRandomCustomerInvoiceDetails());
        CustomerInvoiceDetails obj = dod.getNewTransientCustomerInvoiceDetails(Integer.MAX_VALUE);
        Assert.assertNotNull("Data on demand for 'CustomerInvoiceDetails' failed to provide a new transient entity", obj);
        Assert.assertNull("Expected 'CustomerInvoiceDetails' identifier to be null", obj.getId());
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
        Assert.assertNotNull("Expected 'CustomerInvoiceDetails' identifier to no longer be null", obj.getId());
    }
    
    @Test
    public void CustomerInvoiceDetailsIntegrationTest.testRemove() {
        CustomerInvoiceDetails obj = dod.getRandomCustomerInvoiceDetails();
        Assert.assertNotNull("Data on demand for 'CustomerInvoiceDetails' failed to initialize correctly", obj);
        Long id = obj.getId();
        Assert.assertNotNull("Data on demand for 'CustomerInvoiceDetails' failed to provide an identifier", id);
        obj = CustomerInvoiceDetails.findCustomerInvoiceDetails(id);
        obj.remove();
        obj.flush();
        Assert.assertNull("Failed to remove 'CustomerInvoiceDetails' with identifier '" + id + "'", CustomerInvoiceDetails.findCustomerInvoiceDetails(id));
    }
    
}