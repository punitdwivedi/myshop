// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.myshop.domain;

import com.myshop.domain.CompanyShippingAddress;
import com.myshop.domain.Product;
import com.myshop.domain.ProductInventory;

privileged aspect ProductInventory_Roo_JavaBean {
    
    public Product ProductInventory.getProductId() {
        return this.productId;
    }
    
    public void ProductInventory.setProductId(Product productId) {
        this.productId = productId;
    }
    
    public Double ProductInventory.getInventoryQty() {
        return this.inventoryQty;
    }
    
    public void ProductInventory.setInventoryQty(Double inventoryQty) {
        this.inventoryQty = inventoryQty;
    }
    
    public CompanyShippingAddress ProductInventory.getWarehouseNo() {
        return this.warehouseNo;
    }
    
    public void ProductInventory.setWarehouseNo(CompanyShippingAddress warehouseNo) {
        this.warehouseNo = warehouseNo;
    }
    
    public Double ProductInventory.getRoomNo() {
        return this.roomNo;
    }
    
    public void ProductInventory.setRoomNo(Double roomNo) {
        this.roomNo = roomNo;
    }
    
    public Double ProductInventory.getShelfNo() {
        return this.shelfNo;
    }
    
    public void ProductInventory.setShelfNo(Double shelfNo) {
        this.shelfNo = shelfNo;
    }
    
    public Double ProductInventory.getSeatNo() {
        return this.seatNo;
    }
    
    public void ProductInventory.setSeatNo(Double seatNo) {
        this.seatNo = seatNo;
    }
    
}
