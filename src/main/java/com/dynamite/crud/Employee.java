package com.dynamite.crud;



public class Employee {
private String id;	
private String firstName;
private String lastName;
private String email;
private String address;
private String city;
private String state;
private String zip;



public String getId() {
	return id;
}
public void setId(String id) {
	this.id = id;
}
public String getFirstName() {
	return firstName;
}
public void setFirstName(String firstName) {
	this.firstName = firstName;
}
public String getLastName() {
	return lastName;
}
public void setLastName(String lastName) {
	this.lastName = lastName;
}
public String getEmail() {
	return email;
}
public void setEmail(String email) {
	this.email = email;
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
public String getState() {
	return state;
}
public void setState(String state) {
	this.state = state;
}
public String getZip() {
	return zip;
}
public void setZip(String zip) {
	this.zip = zip;
}
@Override
public String toString() {
	return "Employee [id=" + id + ", firstName=" + firstName + ", lastName=" + lastName + ", email=" + email
			+ ", address=" + address + ", city=" + city + ", state=" + state + ", zip=" + zip + "]";
}



}
