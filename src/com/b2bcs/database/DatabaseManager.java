package com.b2bcs.database;

import java.io.InputStream;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.sql.Timestamp;
import java.util.Date;
import java.util.HashMap;

import com.b2bcs.CallUserBean;
import com.b2bcs.ResumeBean;

class DatabaseAdapter 
{
	String mySQLDriver="com.mysql.jdbc.Driver";
	String databaseHostname = "localhost";
	String databasePort = "3306";
	String databaseUser = "bbuser";
	String databaseUserPassword = "y4avady2a";
//	String databaseName = "consulting";
	String databaseName = "bbcsin_careers";
	String databaseConnectionString = "jdbc:mysql://" + databaseHostname + ":3306/" + databaseName;
	private boolean RegisterDataBase()
	{
		boolean isRegistered = false;
		try
		{
			//DriverManager.registerDriver(new com.mysql.jdbc.Driver());	
			Class.forName(mySQLDriver);
			isRegistered = true;
			System.out.println("Database Registered Successfully...");
		}
		catch (ClassNotFoundException exception)
		{
			// TODO Auto-generated catch block
			exception.printStackTrace();
			System.out.println("Database Failed to Register....");
		}
		System.out.println("Exit from RegisterDataBase with DB registration status " + isRegistered);
		return isRegistered;
	}
	public DatabaseAdapter()
	{
		RegisterDataBase();
	}

	public Connection getConnection()
	{
		Connection connection = null;
		try
		{
			connection = DriverManager.getConnection(databaseConnectionString,databaseUser,databaseUserPassword);
			System.out.println("Connection established......");
		}
		catch (SQLException exception)
		{
			exception.printStackTrace();
			System.out.println("Failed to establish a Connection to Database....");
		}
		return connection;
	}
}


public class DatabaseManager 
{
	private static DatabaseManager databaseManager = null;
	private DatabaseAdapter adapter = null;
	static 
	{
		databaseManager = new DatabaseManager();
	}
	private DatabaseManager()
	{
		adapter = new DatabaseAdapter();
	}
	public static DatabaseManager getDatabaseManager()
	{
		return databaseManager;
	}

	
	
	public boolean insertCallUserEnquiry(CallUserBean userBean)
	{
		boolean insertStatus = false;
		Connection connection = null;
		Statement statement = null;
		ResultSet resultSet = null;
		StringBuilder builder = new StringBuilder();
		builder.append("INSERT INTO user_enquiry (fullname,email,phone,subject,shortmessage) VALUES (");
		builder.append("'"+userBean.getFullName() + "',");
		builder.append("'"+userBean.getEmail() + "',");
		builder.append(""+userBean.getPhoneNumber() + ",");
		builder.append("'"+userBean.getSubject() + "',");
		builder.append("'"+userBean.getShortText() + "')");
		String insertSQL = builder.toString();
		System.out.println("insertSQL string with values: " + insertSQL);
		try{
			connection = adapter.getConnection();
			//Creating a Statement object
			statement = connection.createStatement();
			//Retrieving the data
			statement.executeUpdate(insertSQL);
			System.out.println("User Enquiry Successfully registered ");
			insertStatus=true;
		}
		catch (SQLException exception) {
			// TODO Auto-generated catch block
			exception.printStackTrace();
			insertStatus=false;
		}
		finally
		{
			try 
			{
				statement.close();
				statement = null;
			} 
			catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			try 
			{
				connection.close();
				connection = null;
			} 
			catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}

		}
	
		return insertStatus;
	}
	
	public ResumeBean uploadResumeToDatabase(ResumeBean bean)
	{
		boolean insertStatus = false;
		Connection connection = null;
		PreparedStatement statement =null;

		StringBuilder builder = new StringBuilder();
		builder.append("INSERT INTO resume_table (name, email, mobile, query, resume, createdate) values (?, ?, ?,?, ?, ?)");
		String insertSQL = builder.toString();
		System.out.println("insertSQL string with values: " + insertSQL);
		String fullName = bean.getFullName();
		InputStream inputStream =bean.getInputStream();
		
		try{
			connection = adapter.getConnection();
			//Creating a Statement object
			statement = connection.prepareStatement(insertSQL);
			//Retrieving the data
			// constructs SQL statement
			
			statement.setString(1, fullName);
			statement.setString(2, bean.getEmail());
			statement.setString(3, bean.getPhoneNumber());
			statement.setString(4, bean.getFormMessage());
			Timestamp timestamp = new Timestamp(new Date().getTime());
			statement.setTimestamp(6, timestamp);
			
			if (inputStream != null) {
				// fetches input stream of the upload file for the blob column
				statement.setBlob(5, inputStream);
			}

			// sends the statement to the database server
			int row = statement.executeUpdate();
			if (row > 0) {
				String message = "File uploaded and saved into database successfully";
				System.out.println(message);
				bean.setStatus(true);
				bean.setResponseMessage(message);
			}
			
		}
		catch (SQLException exception) {
			// TODO Auto-generated catch block
			exception.printStackTrace();
			bean.setStatus(false);
			bean.setResponseMessage("Failed to upload file");
		}
		finally
		{
			try 
			{
				statement.close();
				statement = null;
			} 
			catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			try 
			{
				connection.close();
				connection = null;
			} 
			catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}

		}
	
		return bean;
	}
	
	
/**	
	public HashMap<String,String> getRealtimeDomainArea()
	{
		HashMap<String,String> realtimeDomain = new HashMap<String, String>();
		Connection connection = null;
		Statement statement = null;
		ResultSet resultSet = null;

		try{
			connection = adapter.getConnection();
			//Creating a Statement object
			statement = connection.createStatement();
			//Retrieving the data
			resultSet = statement.executeQuery("SELECT * FROM MASTER_DOMAIN_AREA");
			System.out.println("Tables in the current database: ");
			while(resultSet.next()) 
			{
				String id = resultSet.getString(1);
				String domain = resultSet.getString(2);
				realtimeDomain.put(id, domain);
				System.out.print(id);
				System.out.println("=="+domain);
				System.out.println();
				
			}
		}
		catch (SQLException exception) {
			// TODO Auto-generated catch block
			exception.printStackTrace();
		}
		finally
		{
			try 
			{
				resultSet.close();
				resultSet = null;
			} 
			catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			try 
			{
				statement.close();
				statement = null;
			} 
			catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			try 
			{
				connection.close();
				connection = null;
			} 
			catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}

		}
		return realtimeDomain;
	}
	public HashMap<String,String> getBranches()
	{
		HashMap<String,String> branches = new HashMap<String, String>();
		Connection connection = null;
		Statement statement = null;
		ResultSet resultSet = null;

		try{
			connection = adapter.getConnection();
			//Creating a Statement object
			statement = connection.createStatement();
			//Retrieving the data
			resultSet = statement.executeQuery("SELECT * FROM MASTER_BRANCH");
			System.out.println("Tables in the current database: ");
			while(resultSet.next()) 
			{
				String id = resultSet.getString(1);
				String branch = resultSet.getString(2);
				branches.put(id,branch);
				System.out.print(id);
				System.out.println("=="+branch);
				System.out.println();
				
			}
		}
		catch (SQLException exception) {
			// TODO Auto-generated catch block
			exception.printStackTrace();
		}
		finally
		{
			try 
			{
				resultSet.close();
				resultSet = null;
			} 
			catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			try 
			{
				statement.close();
				statement = null;
			} 
			catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			try 
			{
				connection.close();
				connection = null;
			} 
			catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}

		}
		return branches;
	}

	
	
	public HashMap<String,String> getAcademicYears()
	{
		HashMap<String,String> years = new HashMap<String, String>();
		Connection connection = null;
		Statement statement = null;
		ResultSet resultSet = null;

		try{
			connection = adapter.getConnection();
			//Creating a Statement object
			statement = connection.createStatement();
			//Retrieving the data
			resultSet = statement.executeQuery("SELECT * FROM MASTER_CURRENT_COURSE_YEAR");
			System.out.println("Tables in the current database: ");
			while(resultSet.next()) 
			{
				String id = resultSet.getString(1);
				String year = resultSet.getString(2);
				years.put(id,year);
				System.out.print(id);
				System.out.println("=="+year);
				System.out.println();
				
			}
		}
		catch (SQLException exception) {
			// TODO Auto-generated catch block
			exception.printStackTrace();
		}
		finally
		{
			try 
			{
				resultSet.close();
				resultSet = null;
			} 
			catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			try 
			{
				statement.close();
				statement = null;
			} 
			catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			try 
			{
				connection.close();
				connection = null;
			} 
			catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}

		}
		return years;
	}

	public HashMap<String,String> getComputer()
	{
		HashMap<String,String> computers = new HashMap<String, String>();
		Connection connection = null;
		Statement statement = null;
		ResultSet resultSet = null;

		try{
			connection = adapter.getConnection();
			//Creating a Statement object
			statement = connection.createStatement();
			//Retrieving the data
			resultSet = statement.executeQuery("SELECT * FROM MASTER_COMPUTER");
			System.out.println("Tables in the current database: ");
			while(resultSet.next()) 
			{
				String id = resultSet.getString(1);
				String computer = resultSet.getString(2);
				computers.put(id,computer);
				System.out.print(id);
				System.out.println("=="+computer);
				System.out.println();
				
			}
		}
		catch (SQLException exception) {
			// TODO Auto-generated catch block
			exception.printStackTrace();
		}
		finally
		{
			try 
			{
				resultSet.close();
				resultSet = null;
			} 
			catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			try 
			{
				statement.close();
				statement = null;
			} 
			catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			try 
			{
				connection.close();
				connection = null;
			} 
			catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}

		}
		return computers;
	}

	
	public HashMap<String,String> getTechnicalSkills()
	{
		HashMap<String,String> skills = new HashMap<String, String>();
		Connection connection = null;
		Statement statement = null;
		ResultSet resultSet = null;

		try{
			connection = adapter.getConnection();
			//Creating a Statement object
			statement = connection.createStatement();
			//Retrieving the data
			resultSet = statement.executeQuery("SELECT * FROM MASTER_TECHNICAL_SKILL");
			System.out.println("Tables in the current database: ");
			while(resultSet.next()) 
			{
				String id = resultSet.getString(1);
				String skill = resultSet.getString(2);
				skills.put(id,skill);
				System.out.print(id);
				System.out.println("=="+skill);
				System.out.println();
				
			}
		}
		catch (SQLException exception) {
			// TODO Auto-generated catch block
			exception.printStackTrace();
		}
		finally
		{
			try 
			{
				resultSet.close();
				resultSet = null;
			} 
			catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			try 
			{
				statement.close();
				statement = null;
			} 
			catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			try 
			{
				connection.close();
				connection = null;
			} 
			catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}

		}
		return skills;
	}
	
	**/
}