package com.niit.model;



import javax.persistence.Entity;
import javax.persistence.Id;
//import javax.validation.constraints.Size;

import org.hibernate.validator.constraints.NotBlank;



@Entity
public class user {
private String name;
@Id
@NotBlank(message="Enter your email")
private String email;
//@Size(max=10, message="Phone number should be 10 digits")
private int phonenum;
private String password;
//private String cpassword;
private String address;
private String city;
private int pincode;
private String state;
public String getState() {
	return state;
}
public void setState(String state) {
	this.state = state;
}
public String getAddress() {
	return address;
}
public void setAddress(String address) {
	this.address = address;
}
public String getCity() {
	return city;
}
public void setCity(String city) {
	this.city = city;
}
public int getPincode() {
	return pincode;
}
public void setPincode(int pincode) {
	this.pincode = pincode;
}
private String role;
public String getRole() {
	return role;
}
public void setRole(String role) {
	this.role = role;
}
public String getName() {
	return name;
}
public void setName(String name) {
	this.name = name;
}
public String getEmail() {
	return email;
}
public void setEmail(String email) {
	this.email = email;
}
public int getPhonenum() {
	return phonenum;
}
public void setPhonenum(int phonenum) {
	this.phonenum = phonenum;
}

public String getPassword() {
	return password;
}
public void setPassword(String password) {
	this.password = password;
}
//public String getCpassword() {
//	return cpassword;
//}
//public void setCpassword(String cpassword) {
//	this.cpassword = cpassword;
//}

}
