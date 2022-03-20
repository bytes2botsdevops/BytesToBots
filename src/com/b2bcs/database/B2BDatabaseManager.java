package com.b2bcs.database;

import java.io.InputStream;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.HashMap;


public class B2BDatabaseManager {
	private static B2BDatabaseManager databaseManager = null;
	static 
	{
		databaseManager = new B2BDatabaseManager();
	}
	private B2BDatabaseManager()
	{
	}
	public static B2BDatabaseManager getDatabaseManager()
	{
		return databaseManager;
	}
}
