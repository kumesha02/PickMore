package com.support;


public class User {
    private int id;
    private String name;
    private String nic;
    private String phone;
    private String email;
    private String date;
    private String text;
	public User(int id, String name, String nic, String phone, String email, String date, String text) {
		super();
		this.id = id;
		this.name = name;
		this.nic = nic;
		this.phone = phone;
		this.email = email;
		this.date = date;
		this.text = text;
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
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getDate() {
		return date;
	}
	public void setDate(String date) {
		this.date = date;
	}
	public String getText() {
		return text;
	}
	public void setText(String text) {
		this.text = text;
	}
    
    
	
    
	
   
	

	


}
