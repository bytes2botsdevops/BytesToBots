package com.b2bcs.database;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class B2BDatabaseAdapter 
{
	String mySQLDriver="com.mysql.jdbc.Driver";
	String databaseHostname = "localhost";
	String databasePort = "3306";
	String databaseUser = "bbuser";
	String databaseUserPassword = "y4avady2a";
//	String databaseName = "bbcsin_consulting";
	String databaseName = "bbcsin_careers";
	String databaseConnectionString = "jdbc:mysql://" + databaseHostname + ":3306/" + databaseName + "?autoReconnect=true&useSSL=false";
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
	public B2BDatabaseAdapter()
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
	
	public void closeResources(ResultSet resultSet, Statement statement, Connection connection)
	{
		try 
		{
			if (null != resultSet)
			{
			resultSet.close();
			resultSet = null;
			}
		} 
		catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		try 
		{
			if (null != statement)
			{
				statement.close();
				statement = null;
			}
			
		} 
		catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		try 
		{
			if(null != connection)
			{
				connection.close();
				connection = null;
			}
			
		} 
		catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
}
