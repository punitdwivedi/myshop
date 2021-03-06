// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.myshop.domain;

import com.myshop.domain.Customer;
import com.myshop.domain.Product;
import com.myshop.domain.ProductCategory;
import com.myshop.domain.Vendor;

privileged aspect Product_Roo_JavaBean {
    
    public Vendor Product.getVendor() {
        return this.vendor;
    }
    
    public void Product.setVendor(Vendor vendor) {
        this.vendor = vendor;
    }
    
    public String Product.getProductName() {
        return this.productName;
    }
    
    public void Product.setProductName(String productName) {
        this.productName = productName;
    }
    
    public String Product.getProductType() {
        return this.productType;
    }
    
    public void Product.setProductType(String productType) {
        this.productType = productType;
    }
    
    public Boolean Product.getIsEnabled() {
        return this.isEnabled;
    }
    
    public void Product.setIsEnabled(Boolean isEnabled) {
        this.isEnabled = isEnabled;
    }
    
    public ProductCategory Product.getProductCategoryId() {
        return this.productCategoryId;
    }
    
    public void Product.setProductCategoryId(ProductCategory productCategoryId) {
        this.productCategoryId = productCategoryId;
    }
    
    public Customer Product.getCustomerId() {
        return this.customerId;
    }
    
    public void Product.setCustomerId(Customer customerId) {
        this.customerId = customerId;
    }
    
    public String Product.getCustomerPartNo() {
        return this.customerPartNo;
    }
    
    public void Product.setCustomerPartNo(String customerPartNo) {
        this.customerPartNo = customerPartNo;
    }
    
    public String Product.getCustomerPartName() {
        return this.customerPartName;
    }
    
    public void Product.setCustomerPartName(String customerPartName) {
        this.customerPartName = customerPartName;
    }
    
    public String Product.getUnit() {
        return this.unit;
    }
    
    public void Product.setUnit(String unit) {
        this.unit = unit;
    }
    
    public Double Product.getLength() {
        return this.length;
    }
    
    public void Product.setLength(Double length) {
        this.length = length;
    }
    
    public Double Product.getWidth() {
        return this.width;
    }
    
    public void Product.setWidth(Double width) {
        this.width = width;
    }
    
    public Double Product.getHeight() {
        return this.height;
    }
    
    public void Product.setHeight(Double height) {
        this.height = height;
    }
    
    public Double Product.getWeight() {
        return this.weight;
    }
    
    public void Product.setWeight(Double weight) {
        this.weight = weight;
    }
    
    public String Product.getWeightUnit() {
        return this.weightUnit;
    }
    
    public void Product.setWeightUnit(String weightUnit) {
        this.weightUnit = weightUnit;
    }
    
    public String Product.getSpecification() {
        return this.specification;
    }
    
    public void Product.setSpecification(String specification) {
        this.specification = specification;
    }
    
    public String Product.getProductImage() {
        return this.productImage;
    }
    
    public void Product.setProductImage(String productImage) {
        this.productImage = productImage;
    }
    
    public String Product.getVendorPartNo() {
        return this.vendorPartNo;
    }
    
    public void Product.setVendorPartNo(String vendorPartNo) {
        this.vendorPartNo = vendorPartNo;
    }
    
    public String Product.getVendorPartName() {
        return this.vendorPartName;
    }
    
    public void Product.setVendorPartName(String vendorPartName) {
        this.vendorPartName = vendorPartName;
    }
    
}
