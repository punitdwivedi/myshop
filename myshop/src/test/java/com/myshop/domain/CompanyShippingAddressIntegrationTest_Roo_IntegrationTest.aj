// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.myshop.domain;

import com.myshop.domain.CompanyShippingAddress;
import com.myshop.domain.CompanyShippingAddressDataOnDemand;
import com.myshop.domain.CompanyShippingAddressIntegrationTest;
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

privileged aspect CompanyShippingAddressIntegrationTest_Roo_IntegrationTest {
    
    declare @type: CompanyShippingAddressIntegrationTest: @RunWith(SpringJUnit4ClassRunner.class);
    
    declare @type: CompanyShippingAddressIntegrationTest: @ContextConfiguration(locations = "classpath*:/META-INF/spring/applicationContext*.xml");
    
    declare @type: CompanyShippingAddressIntegrationTest: @Transactional;
    
    @Autowired
    CompanyShippingAddressDataOnDemand CompanyShippingAddressIntegrationTest.dod;
    
    @Test
    public void CompanyShippingAddressIntegrationTest.testCountCompanyShippingAddresses() {
        Assert.assertNotNull("Data on demand for 'CompanyShippingAddress' failed to initialize correctly", dod.getRandomCompanyShippingAddress());
        long count = CompanyShippingAddress.countCompanyShippingAddresses();
        Assert.assertTrue("Counter for 'CompanyShippingAddress' incorrectly reported there were no entries", count > 0);
    }
    
    @Test
    public void CompanyShippingAddressIntegrationTest.testFindCompanyShippingAddress() {
        CompanyShippingAddress obj = dod.getRandomCompanyShippingAddress();
        Assert.assertNotNull("Data on demand for 'CompanyShippingAddress' failed to initialize correctly", obj);
        Long id = obj.getId();
        Assert.assertNotNull("Data on demand for 'CompanyShippingAddress' failed to provide an identifier", id);
        obj = CompanyShippingAddress.findCompanyShippingAddress(id);
        Assert.assertNotNull("Find method for 'CompanyShippingAddress' illegally returned null for id '" + id + "'", obj);
        Assert.assertEquals("Find method for 'CompanyShippingAddress' returned the incorrect identifier", id, obj.getId());
    }
    
    @Test
    public void CompanyShippingAddressIntegrationTest.testFindAllCompanyShippingAddresses() {
        Assert.assertNotNull("Data on demand for 'CompanyShippingAddress' failed to initialize correctly", dod.getRandomCompanyShippingAddress());
        long count = CompanyShippingAddress.countCompanyShippingAddresses();
        Assert.assertTrue("Too expensive to perform a find all test for 'CompanyShippingAddress', as there are " + count + " entries; set the findAllMaximum to exceed this value or set findAll=false on the integration test annotation to disable the test", count < 250);
        List<CompanyShippingAddress> result = CompanyShippingAddress.findAllCompanyShippingAddresses();
        Assert.assertNotNull("Find all method for 'CompanyShippingAddress' illegally returned null", result);
        Assert.assertTrue("Find all method for 'CompanyShippingAddress' failed to return any data", result.size() > 0);
    }
    
    @Test
    public void CompanyShippingAddressIntegrationTest.testFindCompanyShippingAddressEntries() {
        Assert.assertNotNull("Data on demand for 'CompanyShippingAddress' failed to initialize correctly", dod.getRandomCompanyShippingAddress());
        long count = CompanyShippingAddress.countCompanyShippingAddresses();
        if (count > 20) count = 20;
        int firstResult = 0;
        int maxResults = (int) count;
        List<CompanyShippingAddress> result = CompanyShippingAddress.findCompanyShippingAddressEntries(firstResult, maxResults);
        Assert.assertNotNull("Find entries method for 'CompanyShippingAddress' illegally returned null", result);
        Assert.assertEquals("Find entries method for 'CompanyShippingAddress' returned an incorrect number of entries", count, result.size());
    }
    
    @Test
    public void CompanyShippingAddressIntegrationTest.testFlush() {
        CompanyShippingAddress obj = dod.getRandomCompanyShippingAddress();
        Assert.assertNotNull("Data on demand for 'CompanyShippingAddress' failed to initialize correctly", obj);
        Long id = obj.getId();
        Assert.assertNotNull("Data on demand for 'CompanyShippingAddress' failed to provide an identifier", id);
        obj = CompanyShippingAddress.findCompanyShippingAddress(id);
        Assert.assertNotNull("Find method for 'CompanyShippingAddress' illegally returned null for id '" + id + "'", obj);
        boolean modified =  dod.modifyCompanyShippingAddress(obj);
        Integer currentVersion = obj.getVersion();
        obj.flush();
        Assert.assertTrue("Version for 'CompanyShippingAddress' failed to increment on flush directive", (currentVersion != null && obj.getVersion() > currentVersion) || !modified);
    }
    
    @Test
    public void CompanyShippingAddressIntegrationTest.testMergeUpdate() {
        CompanyShippingAddress obj = dod.getRandomCompanyShippingAddress();
        Assert.assertNotNull("Data on demand for 'CompanyShippingAddress' failed to initialize correctly", obj);
        Long id = obj.getId();
        Assert.assertNotNull("Data on demand for 'CompanyShippingAddress' failed to provide an identifier", id);
        obj = CompanyShippingAddress.findCompanyShippingAddress(id);
        boolean modified =  dod.modifyCompanyShippingAddress(obj);
        Integer currentVersion = obj.getVersion();
        CompanyShippingAddress merged = obj.merge();
        obj.flush();
        Assert.assertEquals("Identifier of merged object not the same as identifier of original object", merged.getId(), id);
        Assert.assertTrue("Version for 'CompanyShippingAddress' failed to increment on merge and flush directive", (currentVersion != null && obj.getVersion() > currentVersion) || !modified);
    }
    
    @Test
    public void CompanyShippingAddressIntegrationTest.testPersist() {
        Assert.assertNotNull("Data on demand for 'CompanyShippingAddress' failed to initialize correctly", dod.getRandomCompanyShippingAddress());
        CompanyShippingAddress obj = dod.getNewTransientCompanyShippingAddress(Integer.MAX_VALUE);
        Assert.assertNotNull("Data on demand for 'CompanyShippingAddress' failed to provide a new transient entity", obj);
        Assert.assertNull("Expected 'CompanyShippingAddress' identifier to be null", obj.getId());
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
        Assert.assertNotNull("Expected 'CompanyShippingAddress' identifier to no longer be null", obj.getId());
    }
    
    @Test
    public void CompanyShippingAddressIntegrationTest.testRemove() {
        CompanyShippingAddress obj = dod.getRandomCompanyShippingAddress();
        Assert.assertNotNull("Data on demand for 'CompanyShippingAddress' failed to initialize correctly", obj);
        Long id = obj.getId();
        Assert.assertNotNull("Data on demand for 'CompanyShippingAddress' failed to provide an identifier", id);
        obj = CompanyShippingAddress.findCompanyShippingAddress(id);
        obj.remove();
        obj.flush();
        Assert.assertNull("Failed to remove 'CompanyShippingAddress' with identifier '" + id + "'", CompanyShippingAddress.findCompanyShippingAddress(id));
    }
    
}