package com.b2bcs.beans;

import java.io.OutputStream;
import java.io.Serializable;

public class CompanyBean implements Serializable
{
	private String id = "";
	private String companyName = "";
	private String profile = "";
	private String businessStreamId = "";
	private String establishedDate = "";
	private String companyWebsiteURL = "";
	private String companyImageId = "";
	private OutputStream companyImage = null;

	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getCompanyName() {
		return companyName;
	}
	public void setCompanyName(String companyName) {
		this.companyName = companyName;
	}
	public String getProfile() {
		return profile;
	}
	public void setProfile(String profile) {
		this.profile = profile;
	}
	public String getBusinessStreamId() {
		return businessStreamId;
	}
	public void setBusinessStreamId(String businessStreamId) {
		this.businessStreamId = businessStreamId;
	}
	public String getEstablishedDate() {
		return establishedDate;
	}
	public void setEstablishedDate(String establishedDate) {
		this.establishedDate = establishedDate;
	}
	public String getCompanyWebsiteURL() {
		return companyWebsiteURL;
	}
	public void setCompanyWebsiteURL(String companyWebsiteURL) {
		this.companyWebsiteURL = companyWebsiteURL;
	}
	public String getCompanyImageId() {
		return companyImageId;
	}
	public void setCompanyImageId(String companyImageId) {
		this.companyImageId = companyImageId;
	}
	public OutputStream getCompanyImage() {
		return companyImage;
	}
	public void setCompanyImage(OutputStream companyImage) {
		this.companyImage = companyImage;
	}

	public void printCompany()
	{
		System.out.println("Company Id=" + this.getId());
		System.out.println("Company Name=" + this.getCompanyName());
		System.out.println("Company Profile=" + this.getProfile());
		System.out.println("Company Business Id=" + this.getBusinessStreamId());
		System.out.println("Company Established Date=" + this.getEstablishedDate());
		System.out.println("Company Website URL=" + this.getCompanyWebsiteURL());
		System.out.println("Company Image Id=" + this.getCompanyImageId());
	}
}
