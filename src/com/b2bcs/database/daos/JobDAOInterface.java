package com.b2bcs.database.daos;

import java.util.ArrayList;

import com.b2bcs.beans.JobPostBean;

public interface JobDAOInterface 
{
	public boolean insertJobPost(JobPostBean postBean);
	public boolean updateJobPost(JobPostBean postBean);
	public boolean closeJobPost(String JobId);
	public boolean applyJobPost(String userId, String jobTypeId);
	public ArrayList<JobPostBean> listAllJobPosts();
	public ArrayList<JobPostBean> listAllJobsByLocation(String location);
	public ArrayList<JobPostBean> listAllJobsByJobType(String jobType);

}
