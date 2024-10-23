package com.reserve;


public class User {
    private int id;
    private String name;
    private String nic;
    private String train;
    private String amount;
    private String price;
    private String date;
	public User(int id, String name, String nic, String train, String amount, String price, String date) {
		super();
		this.id = id;
		this.name = name;
		this.nic = nic;
		this.train = train;
		this.amount = amount;
		this.price = price;
		this.date = date;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getNic() {
		return nic;
	}
	public void setNic(String nic) {
		this.nic = nic;
	}
	public String getTrain() {
		return train;
	}
	public void setTrain(String train) {
		this.train = train;
	}
	public String getAmount() {
		return amount;
	}
	public void setAmount(String amount) {
		this.amount = amount;
	}
	public String getPrice() {
		return price;
	}
	public void setPrice(String price) {
		this.price = price;
	}
	public String getDate() {
		return date;
	}
	public void setDate(String date) {
		this.date = date;
	}
    
    
	
    
	 
}
