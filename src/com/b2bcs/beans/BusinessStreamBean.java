package com.b2bcs.beans;

import java.io.Serializable;

public class BusinessStreamBean implements Serializable
{
	private String businessStreamID="";
	private String businessStreamName="";

	public String getBusinessStreamID() {
		return businessStreamID;
	}
	public void setBusinessStreamID(String businessStreamID) {
		this.businessStreamID = businessStreamID;
	}
	public String getBusinessStreamName() {
		return businessStreamName;
	}
	public void setBusinessStreamName(String businessStreamName) {
		this.businessStreamName = businessStreamName;
	}

	public void printBusinessStream()
	{
		System.out.println("Business Stream ID" + this.getBusinessStreamID());
		System.out.println("Business Stream Name" + this.getBusinessStreamName());
	}
}
