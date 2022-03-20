package com.b2bcs;

import java.io.InputStream;

public class ResumeBean{
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getPhoneNumber() {
		return phoneNumber;
	}
	public void setPhoneNumber(String phoneNumber) {
		this.phoneNumber = phoneNumber;
	}
	public String getFormMessage() {
		return formMessage;
	}
	public void setFormMessage(String formMessage) {
		this.formMessage = formMessage;
	}
	public boolean isStatus() {
		return status;
	}
	public void setStatus(boolean status) {
		this.status = status;
	}
	public String getResponseMessage() {
		return responseMessage;
	}
	public void setResponseMessage(String responseMessage) {
		this.responseMessage = responseMessage;
	}
	public String getFullName() {
		return fullName;
	}
	public void setFullName(String fullName) {
		this.fullName = fullName;
	}
	public InputStream getInputStream() {
		return inputStream;
	}
	public void setInputStream(InputStream inputStream) {
		this.inputStream = inputStream;
	}
	private String fullName = "";
	private String email = "";
	private String phoneNumber = "";
	private String formMessage = "";
	private InputStream inputStream = null ;
	private boolean status=false;
	private String  responseMessage = "";
}

