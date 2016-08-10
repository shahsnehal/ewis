package com.ewis.pojo;

public class Material {

	private String id;

	private String name;
	
	private String discription;
	
	private String status;
	
	private String effactiveDate;
	
	private String expirationDate;
	
	private String quantity;
	
	private String type;
	
	private String storageClass;
	
	private String lastChangedDate;
	
	private String lastChangedBy;

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getDiscription() {
		return discription;
	}

	public void setDiscription(String discription) {
		this.discription = discription;
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

	public String getEffactiveDate() {
		return effactiveDate;
	}

	public void setEffactiveDate(String effactiveDate) {
		this.effactiveDate = effactiveDate;
	}

	public String getExpirationDate() {
		return expirationDate;
	}

	public void setExpirationDate(String expirationDate) {
		this.expirationDate = expirationDate;
	}

	public String getQuantity() {
		return quantity;
	}

	public void setQuantity(String quantity) {
		this.quantity = quantity;
	}

	public String getType() {
		return type;
	}

	public void setType(String type) {
		this.type = type;
	}

	public String getStorageClass() {
		return storageClass;
	}

	public void setStorageClass(String storageClass) {
		this.storageClass = storageClass;
	}

	public String getLastChangedDate() {
		return lastChangedDate;
	}

	public void setLastChangedDate(String lastChangedDate) {
		this.lastChangedDate = lastChangedDate;
	}

	public String getLastChangedBy() {
		return lastChangedBy;
	}

	public void setLastChangedBy(String lastChangedBy) {
		this.lastChangedBy = lastChangedBy;
	}
	
	@Override
	public String toString() {
		return super.toString();
	}

	
}
