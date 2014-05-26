package com.catalog.beans;

public class TestBean {
	private String prodId;
	private String productName;
	private String authorName;
	public String getAuthorName() {
		return authorName;
	}

	private String price;

	public String getProdId() {
		return prodId;
	}

	public void setProdId(String prodId) {
		this.prodId = prodId;
	}

	public String getProductName() {
		return productName;
	}

	public void setAuthorName(String authorName) {
		this.authorName = authorName;
	}

	public void setProductName(String productName) {
		this.productName = productName;
	}

	public String getPrice() {
		return price;
	}

	public void setPrice(String price) {
		this.price = price;
	}

}
