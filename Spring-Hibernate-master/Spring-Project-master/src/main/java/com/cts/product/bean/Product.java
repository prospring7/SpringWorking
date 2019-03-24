package com.cts.product.bean;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="Product")
public class Product {
	private String productId;
	private String productName;
	private String price;
	private String quantity;
	
	
	public Product() {
		super();
		// TODO Auto-generated constructor stub
	}
	@Id
	@Column
	public String getProductId() {
		return productId;
	}


	public void setProductId(String productId) {
		this.productId = productId;
	}

	@Column
	public String getProductName() {
		return productName;
	}


	public void setProductName(String productName) {
		this.productName = productName;
	}

	@Column
	public String getPrice() {
		return price;
	}


	public void setPrice(String price) {
		this.price = price;
	}

	@Column
	public String getQuantity() {
		return quantity;
	}


	public void setQuantity(String quantity) {
		this.quantity = quantity;
	}


	public Product(String productId, String productName, String price, String quantity) {
		super();
		this.productId = productId;
		this.productName = productName;
		this.price = price;
		this.quantity = quantity;
	}
	@Override
	public String toString() {
		return "Product [productId=" + productId + ", productName=" + productName + ", price=" + price + ", quantity="
				+ quantity + "]";
	}

	
	
	
}
