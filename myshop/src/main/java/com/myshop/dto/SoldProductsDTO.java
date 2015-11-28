package com.myshop.dto;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;

@Entity
public class SoldProductsDTO {

	@Id
	@Column(name = "id")
	private long id;

	@Column(name = "sold_date")
	private String soldDate;

	@Column(name = "quantity")
	private double quantity;
	
	
	@Column(name = "channel")
	private String channel;

	public long getId() {
		return id;
	}

	public void setId(long id) {
		this.id = id;
	}

	public String getSoldDate() {
		return soldDate;
	}

	public void setSoldDate(String soldDate) {
		this.soldDate = soldDate;
	}

	public double getQuantity() {
		return quantity;
	}

	public void setQuantity(double quantity) {
		this.quantity = quantity;
	}

	public String getChannel() {
		return channel;
	}

	public void setChannel(String channel) {
		this.channel = channel;
	}


	
	

}
