package com.b2bcs.beans;

public class JobPostBean 
{
	private String postId;
	private String posted_by_id;
	private String job_type_id;
	private String company_id;
	private String job_functional_id;
	private String job_role_category_id ;
	private int min_experience;
	private int max_experience;
	private char is_company_name_hidden;
	private String created_date;
	private String job_description;
	private int job_location_id;
	private char is_active;
	
	public String getPostId() {
		return postId;
	}
	public void setPostId(String postId) {
		this.postId = postId;
	}
	public String getPosted_by_id() {
		return posted_by_id;
	}
	public void setPosted_by_id(String posted_by_id) {
		this.posted_by_id = posted_by_id;
	}
	public String getJob_type_id() {
		return job_type_id;
	}
	public void setJob_type_id(String job_type_id) {
		this.job_type_id = job_type_id;
	}
	public String getCompany_id() {
		return company_id;
	}
	public void setCompany_id(String company_id) {
		this.company_id = company_id;
	}
	public String getJob_functional_id() {
		return job_functional_id;
	}
	public void setJob_functional_id(String job_functional_id) {
		this.job_functional_id = job_functional_id;
	}
	public String getJob_role_category_id() {
		return job_role_category_id;
	}
	public void setJob_role_category_id(String job_role_category_id) {
		this.job_role_category_id = job_role_category_id;
	}
	public int getMin_experience() {
		return min_experience;
	}
	public void setMin_experience(int min_experience) {
		this.min_experience = min_experience;
	}
	public int getMax_experience() {
		return max_experience;
	}
	public void setMax_experience(int max_experience) {
		this.max_experience = max_experience;
	}
	public char getIs_company_name_hidden() {
		return is_company_name_hidden;
	}
	public void setIs_company_name_hidden(char is_company_name_hidden) {
		this.is_company_name_hidden = is_company_name_hidden;
	}
	public String getCreated_date() {
		return created_date;
	}
	public void setCreated_date(String created_date) {
		this.created_date = created_date;
	}
	public String getJob_description() {
		return job_description;
	}
	public void setJob_description(String job_description) {
		this.job_description = job_description;
	}
	public int getJob_location_id() {
		return job_location_id;
	}
	public void setJob_location_id(int job_location_id) {
		this.job_location_id = job_location_id;
	}
	public char getIs_active() {
		return is_active;
	}
	public void setIs_active(char is_active) {
		this.is_active = is_active;
	}

}
