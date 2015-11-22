// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.myshop.domain;

import com.myshop.domain.CustomerContact;
import com.myshop.domain.CustomerContactDataOnDemand;
import com.myshop.domain.CustomerContactIntegrationTest;
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

privileged aspect CustomerContactIntegrationTest_Roo_IntegrationTest {
    
    declare @type: CustomerContactIntegrationTest: @RunWith(SpringJUnit4ClassRunner.class);
    
    declare @type: CustomerContactIntegrationTest: @ContextConfiguration(locations = "classpath*:/META-INF/spring/applicationContext*.xml");
    
    declare @type: CustomerContactIntegrationTest: @Transactional;
    
    @Autowired
    CustomerContactDataOnDemand CustomerContactIntegrationTest.dod;
    
    @Test
    public void CustomerContactIntegrationTest.testCountCustomerContacts() {
        Assert.assertNotNull("Data on demand for 'CustomerContact' failed to initialize correctly", dod.getRandomCustomerContact());
        long count = CustomerContact.countCustomerContacts();
        Assert.assertTrue("Counter for 'CustomerContact' incorrectly reported there were no entries", count > 0);
    }
    
    @Test
    public void CustomerContactIntegrationTest.testFindCustomerContact() {
        CustomerContact obj = dod.getRandomCustomerContact();
        Assert.assertNotNull("Data on demand for 'CustomerContact' failed to initialize correctly", obj);
        Long id = obj.getId();
        Assert.assertNotNull("Data on demand for 'CustomerContact' failed to provide an identifier", id);
        obj = CustomerContact.findCustomerContact(id);
        Assert.assertNotNull("Find method for 'CustomerContact' illegally returned null for id '" + id + "'", obj);
        Assert.assertEquals("Find method for 'CustomerContact' returned the incorrect identifier", id, obj.getId());
    }
    
    @Test
    public void CustomerContactIntegrationTest.testFindAllCustomerContacts() {
        Assert.assertNotNull("Data on demand for 'CustomerContact' failed to initialize correctly", dod.getRandomCustomerContact());
        long count = CustomerContact.countCustomerContacts();
        Assert.assertTrue("Too expensive to perform a find all test for 'CustomerContact', as there are " + count + " entries; set the findAllMaximum to exceed this value or set findAll=false on the integration test annotation to disable the test", count < 250);
        List<CustomerContact> result = CustomerContact.findAllCustomerContacts();
        Assert.assertNotNull("Find all method for 'CustomerContact' illegally returned null", result);
        Assert.assertTrue("Find all method for 'CustomerContact' failed to return any data", result.size() > 0);
    }
    
    @Test
    public void CustomerContactIntegrationTest.testFindCustomerContactEntries() {
        Assert.assertNotNull("Data on demand for 'CustomerContact' failed to initialize correctly", dod.getRandomCustomerContact());
        long count = CustomerContact.countCustomerContacts();
        if (count > 20) count = 20;
        int firstResult = 0;
        int maxResults = (int) count;
        List<CustomerContact> result = CustomerContact.findCustomerContactEntries(firstResult, maxResults);
        Assert.assertNotNull("Find entries method for 'CustomerContact' illegally returned null", result);
        Assert.assertEquals("Find entries method for 'CustomerContact' returned an incorrect number of entries", count, result.size());
    }
    
    @Test
    public void CustomerContactIntegrationTest.testFlush() {
        CustomerContact obj = dod.getRandomCustomerContact();
        Assert.assertNotNull("Data on demand for 'CustomerContact' failed to initialize correctly", obj);
        Long id = obj.getId();
        Assert.assertNotNull("Data on demand for 'CustomerContact' failed to provide an identifier", id);
        obj = CustomerContact.findCustomerContact(id);
        Assert.assertNotNull("Find method for 'CustomerContact' illegally returned null for id '" + id + "'", obj);
        boolean modified =  dod.modifyCustomerContact(obj);
        Integer currentVersion = obj.getVersion();
        obj.flush();
        Assert.assertTrue("Version for 'CustomerContact' failed to increment on flush directive", (currentVersion != null && obj.getVersion() > currentVersion) || !modified);
    }
    
    @Test
    public void CustomerContactIntegrationTest.testMergeUpdate() {
        CustomerContact obj = dod.getRandomCustomerContact();
        Assert.assertNotNull("Data on demand for 'CustomerContact' failed to initialize correctly", obj);
        Long id = obj.getId();
        Assert.assertNotNull("Data on demand for 'CustomerContact' failed to provide an identifier", id);
        obj = CustomerContact.findCustomerContact(id);
        boolean modified =  dod.modifyCustomerContact(obj);
        Integer currentVersion = obj.getVersion();
        CustomerContact merged = obj.merge();
        obj.flush();
        Assert.assertEquals("Identifier of merged object not the same as identifier of original object", merged.getId(), id);
        Assert.assertTrue("Version for 'CustomerContact' failed to increment on merge and flush directive", (currentVersion != null && obj.getVersion() > currentVersion) || !modified);
    }
    
    @Test
    public void CustomerContactIntegrationTest.testPersist() {
        Assert.assertNotNull("Data on demand for 'CustomerContact' failed to initialize correctly", dod.getRandomCustomerContact());
        CustomerContact obj = dod.getNewTransientCustomerContact(Integer.MAX_VALUE);
        Assert.assertNotNull("Data on demand for 'CustomerContact' failed to provide a new transient entity", obj);
        Assert.assertNull("Expected 'CustomerContact' identifier to be null", obj.getId());
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
        Assert.assertNotNull("Expected 'CustomerContact' identifier to no longer be null", obj.getId());
    }
    
    @Test
    public void CustomerContactIntegrationTest.testRemove() {
        CustomerContact obj = dod.getRandomCustomerContact();
        Assert.assertNotNull("Data on demand for 'CustomerContact' failed to initialize correctly", obj);
        Long id = obj.getId();
        Assert.assertNotNull("Data on demand for 'CustomerContact' failed to provide an identifier", id);
        obj = CustomerContact.findCustomerContact(id);
        obj.remove();
        obj.flush();
        Assert.assertNull("Failed to remove 'CustomerContact' with identifier '" + id + "'", CustomerContact.findCustomerContact(id));
    }
    
}
