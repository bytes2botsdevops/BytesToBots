package com.b2bcs.beans;

import java.io.Serializable;

public class UserLogBean  implements Serializable
{
	private String userAccountID="";
	private String lastLoginDate=""; 
	private String lastApplyDate="";

	public String getUserAccountID() {
		return userAccountID;
	}
	public void setUserAccountID(String userAccountID) {
		this.userAccountID = userAccountID;
	}
	public String getLastLoginDate() {
		return lastLoginDate;
	}
	public void setLastLoginDate(String lastLoginDate) {
		this.lastLoginDate = lastLoginDate;
	}
	public String getLastApplyDate() {
		return lastApplyDate;
	}
	public void setLastApplyDate(String lastApplyDate) {
		this.lastApplyDate = lastApplyDate;
	}

	public void printUserLogBean()
	{
		System.out.println("User ID=" + this.getUserAccountID());
		System.out.println("User Login Date=" + this.getLastLoginDate());
		System.out.println("Last Apply Date=" + this.getLastApplyDate());
	}
}
