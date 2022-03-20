package com.b2bcs.beans;

import java.io.Serializable;

public class UserSessionBean implements Serializable
{
	private String username = "";
	private String userId = "";
	
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getUserId() {
		return userId;
	}
	public void setUserId(String userId) {
		this.userId = userId;
	}
	

}
