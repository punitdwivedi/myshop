package com.myshop.dto;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;

@Entity
public class SearchByProductNameResultDTO {

	@Id
	@Column(name = "id")
	private long id;	
	
	@Column(name="product_name")
	private String productName;	
	
	@Column(name="product_image_name")
	private String productImageName;
	
	@Column(name="height")
	private double height;
	
	@Column(name="length")
	private double length;
	
	@Column(name="weight")
	private double weight;	
	
	@Column(name="inventory_qty")
	private double inventoryQty;
	
	@Column(name="room_no")
	private double roomNo;
	
	@Column(name="seat_no")
	private double seatNo;
	
	@Column(name="shelf_no")
	private double shelfNo;
	
	@Column(name="wareHouse_no")
	private long wareHouseNo;
	
	@Column(name="customer_order_qty")
	private double customerOrderQty;	
	
	@Column(name="vendor_order_qty")
	private double vendorOrderQty;
	
	@Column(name="customer_required_date")
	private String customerRequiredDate;
	
	@Column(name="vendor_required_date")
	private String vendorRequiredDate;
	
	@Column(name="product_type")
	private String productType;



	public String getProductName() {
		return productName;
	}

	public void setProductName(String productName) {
		this.productName = productName;
	}

	public String getProductImageName() {
		return productImageName;
	}

	public void setProductImageName(String productImageName) {
		this.productImageName = productImageName;
	}

	public long getId() {
		return id;
	}

	public void setId(long id) {
		this.id = id;
	}

	public double getHeight() {
		return height;
	}

	public void setHeight(double height) {
		this.height = height;
	}

	public double getLength() {
		return length;
	}

	public void setLength(double length) {
		this.length = length;
	}

	public double getWeight() {
		return weight;
	}

	public void setWeight(double weight) {
		this.weight = weight;
	}

	public double getInventoryQty() {
		return inventoryQty;
	}

	public void setInventoryQty(double inventoryQty) {
		this.inventoryQty = inventoryQty;
	}

	public double getRoomNo() {
		return roomNo;
	}

	public void setRoomNo(double roomNo) {
		this.roomNo = roomNo;
	}

	public double getSeatNo() {
		return seatNo;
	}

	public void setSeatNo(double seatNo) {
		this.seatNo = seatNo;
	}

	public double getShelfNo() {
		return shelfNo;
	}

	public void setShelfNo(double shelfNo) {
		this.shelfNo = shelfNo;
	}

	public long getWareHouseNo() {
		return wareHouseNo;
	}

	public void setWareHouseNo(long wareHouseNo) {
		this.wareHouseNo = wareHouseNo;
	}

	public double getCustomerOrderQty() {
		return customerOrderQty;
	}

	public void setCustomerOrderQty(double customerOrderQty) {
		this.customerOrderQty = customerOrderQty;
	}

	public double getVendorOrderQty() {
		return vendorOrderQty;
	}

	public void setVendorOrderQty(double vendorOrderQty) {
		this.vendorOrderQty = vendorOrderQty;
	}

	public String getCustomerRequiredDate() {
		return customerRequiredDate;
	}

	public void setCustomerRequiredDate(String customerRequiredDate) {
		this.customerRequiredDate = customerRequiredDate;
	}

	public String getVendorRequiredDate() {
		return vendorRequiredDate;
	}

	public void setVendorRequiredDate(String vendorRequiredDate) {
		this.vendorRequiredDate = vendorRequiredDate;
	}

	public String getProductType() {
		return productType;
	}

	public void setProductType(String productType) {
		this.productType = productType;
	}
	
	
	
}
