package com.niit.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class Shipping {
@Id
@GeneratedValue(strategy=GenerationType.AUTO)
private int shippingid;
private String username;
private String address;
private String cityy;
private int pincode;
private long phno;
private String email;
public int getShippingid() {
	return shippingid;
}
public void setShippingid(int shippingid) {
	this.shippingid = shippingid;
}
public String getUsername() {
	return username;
}
public void setUsername(String username) {
	this.username = username;
}
public String getAddress() {
	return address;
}
public void setAddress(String address) {
	this.address = address;
}


public String getCityy() {
	return cityy;
}
public void setCityy(String cityy) {
	this.cityy = cityy;
}
public int getPincode() {
	return pincode;
}
public void setPincode(int pincode) {
	this.pincode = pincode;
}
public long getPhno() {
	return phno;
}
public void setPhno(long phno) {
	this.phno = phno;
}
public String getEmail() {
	return email;
}
public void setEmail(String email) {
	this.email = email;
}

}
