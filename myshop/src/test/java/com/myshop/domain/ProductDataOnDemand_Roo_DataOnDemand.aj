// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.myshop.domain;

import com.myshop.domain.Customer;
import com.myshop.domain.Product;
import com.myshop.domain.ProductCategoryDataOnDemand;
import com.myshop.domain.ProductDataOnDemand;
import com.myshop.domain.VendorDataOnDemand;
import java.security.SecureRandom;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Random;
import javax.validation.ConstraintViolation;
import javax.validation.ConstraintViolationException;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

privileged aspect ProductDataOnDemand_Roo_DataOnDemand {
    
    declare @type: ProductDataOnDemand: @Component;
    
    private Random ProductDataOnDemand.rnd = new SecureRandom();
    
    private List<Product> ProductDataOnDemand.data;
    
    @Autowired
    ProductCategoryDataOnDemand ProductDataOnDemand.productCategoryDataOnDemand;
    
    @Autowired
    VendorDataOnDemand ProductDataOnDemand.vendorDataOnDemand;
    
    public Product ProductDataOnDemand.getNewTransientProduct(int index) {
        Product obj = new Product();
        setCustomerId(obj, index);
        setCustomerPartName(obj, index);
        setCustomerPartNo(obj, index);
        setHeight(obj, index);
        setIsEnabled(obj, index);
        setLength(obj, index);
        setProductImage(obj, index);
        setProductName(obj, index);
        setProductType(obj, index);
        setSpecification(obj, index);
        setUnit(obj, index);
        setVendorPartName(obj, index);
        setVendorPartNo(obj, index);
        setWeight(obj, index);
        setWeightUnit(obj, index);
        setWidth(obj, index);
        return obj;
    }
    
    public void ProductDataOnDemand.setCustomerId(Product obj, int index) {
        Customer customerId = null;
        obj.setCustomerId(customerId);
    }
    
    public void ProductDataOnDemand.setCustomerPartName(Product obj, int index) {
        String customerPartName = "customerPartName_" + index;
        obj.setCustomerPartName(customerPartName);
    }
    
    public void ProductDataOnDemand.setCustomerPartNo(Product obj, int index) {
        String customerPartNo = "customerPartNo_" + index;
        obj.setCustomerPartNo(customerPartNo);
    }
    
    public void ProductDataOnDemand.setHeight(Product obj, int index) {
        Double height = new Integer(index).doubleValue();
        obj.setHeight(height);
    }
    
    public void ProductDataOnDemand.setIsEnabled(Product obj, int index) {
        Boolean isEnabled = Boolean.TRUE;
        obj.setIsEnabled(isEnabled);
    }
    
    public void ProductDataOnDemand.setLength(Product obj, int index) {
        Double length = new Integer(index).doubleValue();
        obj.setLength(length);
    }
    
    public void ProductDataOnDemand.setProductImage(Product obj, int index) {
        String productImage = "productImage_" + index;
        obj.setProductImage(productImage);
    }
    
    public void ProductDataOnDemand.setProductName(Product obj, int index) {
        String productName = "productName_" + index;
        obj.setProductName(productName);
    }
    
    public void ProductDataOnDemand.setProductType(Product obj, int index) {
        String productType = "productType_" + index;
        obj.setProductType(productType);
    }
    
    public void ProductDataOnDemand.setSpecification(Product obj, int index) {
        String specification = "specification_" + index;
        obj.setSpecification(specification);
    }
    
    public void ProductDataOnDemand.setUnit(Product obj, int index) {
        String unit = "unit_" + index;
        obj.setUnit(unit);
    }
    
    public void ProductDataOnDemand.setVendorPartName(Product obj, int index) {
        String vendorPartName = "vendorPartName_" + index;
        obj.setVendorPartName(vendorPartName);
    }
    
    public void ProductDataOnDemand.setVendorPartNo(Product obj, int index) {
        String vendorPartNo = "vendorPartNo_" + index;
        obj.setVendorPartNo(vendorPartNo);
    }
    
    public void ProductDataOnDemand.setWeight(Product obj, int index) {
        Double weight = new Integer(index).doubleValue();
        obj.setWeight(weight);
    }
    
    public void ProductDataOnDemand.setWeightUnit(Product obj, int index) {
        String weightUnit = "weightUnit_" + index;
        obj.setWeightUnit(weightUnit);
    }
    
    public void ProductDataOnDemand.setWidth(Product obj, int index) {
        Double width = new Integer(index).doubleValue();
        obj.setWidth(width);
    }
    
    public Product ProductDataOnDemand.getSpecificProduct(int index) {
        init();
        if (index < 0) {
            index = 0;
        }
        if (index > (data.size() - 1)) {
            index = data.size() - 1;
        }
        Product obj = data.get(index);
        Long id = obj.getId();
        return Product.findProduct(id);
    }
    
    public Product ProductDataOnDemand.getRandomProduct() {
        init();
        Product obj = data.get(rnd.nextInt(data.size()));
        Long id = obj.getId();
        return Product.findProduct(id);
    }
    
    public boolean ProductDataOnDemand.modifyProduct(Product obj) {
        return false;
    }
    
    public void ProductDataOnDemand.init() {
        int from = 0;
        int to = 10;
        data = Product.findProductEntries(from, to);
        if (data == null) {
            throw new IllegalStateException("Find entries implementation for 'Product' illegally returned null");
        }
        if (!data.isEmpty()) {
            return;
        }
        
        data = new ArrayList<Product>();
        for (int i = 0; i < 10; i++) {
            Product obj = getNewTransientProduct(i);
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
