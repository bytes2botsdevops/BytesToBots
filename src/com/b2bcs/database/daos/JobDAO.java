package com.b2bcs.database.daos;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import com.b2bcs.beans.JobPostBean;
import com.b2bcs.beans.UserBean;
import com.b2bcs.database.B2BDatabaseAdapter;


public class JobDAO implements JobDAOInterface 
{

	@Override
	public boolean insertJobPost(JobPostBean postBean) 
	{
		// Job Location
		// Job Type
		// Skill Set
		// Job Skill Set
		// Job Post
		// Job Post SkillSet
		// Job Post Activity

		
		boolean insertStatus = false;
		Connection connection = null;
		PreparedStatement preparedStatement = null;
		ResultSet resultSet = null;

		B2BDatabaseAdapter adapter=new B2BDatabaseAdapter();

		String insertSQL = getInsertUserSQL();
		try{
			connection = adapter.getConnection();
			//Creating a Statement object
			preparedStatement = connection.prepareStatement(insertSQL);
			//Retrieving the data

			/*
			preparedStatement.setInt(1, Integer.parseInt(userBean.getUserTypeId()));
			preparedStatement.setString(2, userBean.getFirstName());
			preparedStatement.setString(3, userBean.getLastName());
			preparedStatement.setString(4, userBean.getEmail());
			preparedStatement.setString(5, userBean.getPassword());
			preparedStatement.setString(6, userBean.getDateOfBirth());
			preparedStatement.setObject(7, userBean.getIsActive(), java.sql.Types.CHAR);
			preparedStatement.setString(8, userBean.getContactNumber());
			preparedStatement.setString(9, userBean.getRegistrationDate()); 
			preparedStatement.setString(10, userBean.getMessage()); 
*/

			//implement logic here
			int status = preparedStatement.executeUpdate();

			if ( status > 0 )
			{
				System.out.println("User Successfully registered ");
				insertStatus=true;
			}
			else
			{
				System.out.println("User failed to register");
				insertStatus=false;
			}

		}
		catch (SQLException exception) {
			// TODO Auto-generated catch block
			exception.printStackTrace();
			insertStatus=false;
		}
		finally
		{
			adapter.closeResources(null, preparedStatement, connection);
		}

		return insertStatus;

	}



	private String getInsertUserSQL() {
		// TODO Auto-generated method stub
		return null;
	}



	@Override
	public boolean applyJobPost(String userId, String jobTypeId)
	{

		return false;
	}



	@Override
	public boolean updateJobPost(JobPostBean postBean) 
	{
		return false;
	}



	@Override
	public boolean closeJobPost(String JobId) 
	{
		return false;
	}



	@Override
	public ArrayList<JobPostBean> listAllJobPosts() 
	{
		return null;
	}



	@Override
	public ArrayList<JobPostBean> listAllJobsByLocation(String location) 
	{
		return null;
	}



	@Override
	public ArrayList<JobPostBean> listAllJobsByJobType(String jobType) 
	{

		return null;
	}

}
