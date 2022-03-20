package com.b2bcs.beans;

import java.io.InputStream;
import java.io.Serializable;
import java.util.Date;

public class UserBean implements Serializable
{
public String getMessage() {
		return message;
	}
	public void setMessage(String message) {
		this.message = message;
	}

	//	insert into user_account (id,user_type_id,email,password,date_of_birth,gender,is_active,contact_int,sms_notification_active,email_notification_active,user_resume,registration_date)
//	values (11,1234,"adc@gmail.com",515234,CURDATE(),'m','t',33333,'t','t',LOAD_FILE('D:\test\abc.txt'),now());
    private String id ;
    private String userTypeId;
    private String firstName;
    private String lastName;
    private String email;
    private String password;
    private String dateOfBirth;
    private char isActive;
    private String contactNumber;
    private String registrationDate;
    private String message;
    
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getUserTypeId() {
		return userTypeId;
	}
	public void setUserTypeId(String userTypeId) {
		this.userTypeId = userTypeId;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getDateOfBirth() {
		return dateOfBirth;
	}
	public void setDateOfBirth(String dateOfBirth) {
		this.dateOfBirth = dateOfBirth;
	}
	public char getIsActive() {
		return isActive;
	}
	public void setIsActive(char isActive) {
		this.isActive = isActive;
	}
	public String getContactNumber() {
		return contactNumber;
	}
	public void setContactNumber(String contactNumber) {
		this.contactNumber = contactNumber;
	}
	public String getRegistrationDate() {
		return registrationDate;
	}
	public void setRegistrationDate(String registrationDate) {
		this.registrationDate = registrationDate;
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

	public void printUser() 
	{
		System.out.println("ID\t" + this.getId());
		System.out.println("firstName\t" + this.getFirstName());
		System.out.println("lastName\t" + this.getLastName());
		System.out.println("email\t" + this.getEmail());
		System.out.println("password" + this.getPassword());
		System.out.println("dateOfBirth"+ this.getDateOfBirth());
		System.out.println("isActive"+ this.getIsActive());
		System.out.println("contactNumber"+ this.getContactNumber());
		System.out.println("registrationDate"+ this.getRegistrationDate());
	}

    
}


