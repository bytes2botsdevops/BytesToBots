package com.b2bcs.database.daos;

import java.security.AllPermission;
import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;

import com.b2bcs.beans.UserBean;
import com.b2bcs.beans.UserLoginBean;
import com.b2bcs.database.B2BDatabaseAdapter;
import com.b2bcs.database.B2BDatabaseManager;
import com.b2bcs.util.UserUtil;



public class UserDAO implements UserDAOInterface {

	@Override
	public boolean insertUser(UserBean userBean) {
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
		StringBuilder builder = new StringBuilder();
		builder.append("insert into user_account (user_type_id,first_name,last_name,email,password,date_of_birth,is_active,contact,registration_date, message)");
		builder.append("values (?,?,?,?,?,?,?,?,?,?)");
		return builder.toString();
	}

	@Override
	public UserBean getUserBean(String key) 
	{
		UserBean userBean = new UserBean();
		Connection connection = null;
		PreparedStatement preparedStatement = null;
		ResultSet resultSet = null;

		B2BDatabaseAdapter adapter=new B2BDatabaseAdapter();

		String getUserBeanSQL = "";
		UserUtil util = new UserUtil();

		try{
			connection = adapter.getConnection();
			//Creating a Statement object
			if(null!= key && !"".equalsIgnoreCase(key))
			{
				if ( util.isEmailString(key) )
				{
					getUserBeanSQL = "select * from user_account where email=?";
					preparedStatement = connection.prepareStatement(getUserBeanSQL);
					preparedStatement.setString(1, key);
				}
				else if (util.isMobileString(key))
				{
					getUserBeanSQL = "select * from user_account where contact=?";
					preparedStatement = connection.prepareStatement(getUserBeanSQL);
					preparedStatement.setString(1, key);
				}
				else 
				{
					getUserBeanSQL = "select * from user_account where id=?";
					preparedStatement = connection.prepareStatement(getUserBeanSQL);
					preparedStatement.setInt(1,Integer.parseInt(key));
				}

				resultSet = preparedStatement.executeQuery();

				if ( null != resultSet && resultSet.next())
				{
					userBean.setId(resultSet.getString("id"));
					userBean.setFirstName(resultSet.getString("first_name"));
					userBean.setLastName(resultSet.getString("last_name"));
					userBean.setUserTypeId(resultSet.getString("user_type_id"));
					userBean.setEmail(resultSet.getString("email"));
					userBean.setPassword(resultSet.getString("password"));
					userBean.setDateOfBirth(resultSet.getString("date_of_birth"));
					userBean.setIsActive(resultSet.getString("is_active").charAt(0));
					userBean.setContactNumber(resultSet.getString("contact"));
					userBean.setRegistrationDate(resultSet.getString("registration_date"));
					System.out.println("User Found with ==== " + key);
					userBean.printUser();
					System.out.println("---------------------------------------------------------------------------");
				}
				else
				{
					System.out.println("User not found with ===" + key);
					System.out.println("---------------------------------------------------------------------------");
				}
			}
		}
		catch (SQLException exception) {
			exception.printStackTrace();
			System.out.println("Exceptions arised");

		}
		finally
		{
			adapter.closeResources(resultSet, preparedStatement, connection);

		}		
		return userBean;
	}

	@Override
	public boolean checkUserLogin(UserLoginBean userLoginBean) 
	{
		boolean isValidUser = false;
		Connection connection = null;
		PreparedStatement preparedStatement = null;
		ResultSet resultSet = null;

		B2BDatabaseAdapter adapter=new B2BDatabaseAdapter();

		String loginSQL = getLoginSQL();
		String email = userLoginBean.getEmail();
		String pWord = userLoginBean.getPassword();
		try{
			connection = adapter.getConnection();
			//Creating a Statement object
			preparedStatement = connection.prepareStatement(loginSQL);
			//Retrieving the data


			preparedStatement.setString(1, email);
			preparedStatement.setString(2, pWord);


			//implement logic here
			System.out.println("logn query" + loginSQL );
			resultSet = preparedStatement.executeQuery();

			if ( null != resultSet )
			{
				String id ="";
				if(resultSet.next())
				{
					id = resultSet.getString("id");
				}
				if (null != id && !"".equalsIgnoreCase(id))
				{
					userLoginBean.setId(id);
					userLoginBean.setFirstName(resultSet.getString("first_name"));
					System.out.println("User found with correct credentials===" + email);
					isValidUser=true;
				}
				else 
				{
					userLoginBean.setId("nouser");
					System.out.println("No User Found===" + email);
				}
			}
			else
			{
				System.out.println("User no found with email===" + email);
				isValidUser=false;
			}

		}
		catch (SQLException exception) {
			exception.printStackTrace();
			isValidUser=false;
		}
		finally
		{
			adapter.closeResources(resultSet, preparedStatement, connection);

		}
		return isValidUser;
	}

	private String getLoginSQL() 
	{
		return "select id,first_name from user_account where email=? and password=?";
	}

	@Override
	public ArrayList<UserBean> getAllUsersList() 
	{
		ArrayList<UserBean> allUsersList = new ArrayList<UserBean>();
		UserBean userBean = null;
		Connection connection = null;
		PreparedStatement preparedStatement = null;
		ResultSet resultSet = null;

		B2BDatabaseAdapter adapter=new B2BDatabaseAdapter();

		String getAllUserBeanSQL = "";
		UserUtil util = new UserUtil();

		try
		{
			connection = adapter.getConnection();
			//Creating a Statement object
			getAllUserBeanSQL = "select * from user_account";
			preparedStatement = connection.prepareStatement(getAllUserBeanSQL);
			resultSet = preparedStatement.executeQuery();
			if ( null != resultSet)
			{
				while(resultSet.next())
				{
					userBean = new UserBean();
					userBean.setId(resultSet.getString("id"));
					userBean.setFirstName(resultSet.getString("first_name"));
					userBean.setLastName(resultSet.getString("last_name"));
					userBean.setUserTypeId(resultSet.getString("user_type_id"));
					userBean.setEmail(resultSet.getString("email"));
					userBean.setPassword(resultSet.getString("password"));
					userBean.setDateOfBirth(resultSet.getString("date_of_birth"));
					userBean.setIsActive(resultSet.getString("is_active").charAt(0));
					userBean.setContactNumber(resultSet.getString("contact"));
					userBean.setRegistrationDate(resultSet.getString("registration_date"));

					//					userBean.printUser();
					allUsersList.add(userBean);
					System.out.println("User added to list ==== " + userBean.getEmail());
					System.out.println("---------------------------------------------------------------------------");
				}
			}
			else
			{
				System.out.println("No Users in the table to list");
				System.out.println("---------------------------------------------------------------------------");
			}
		}
		catch (SQLException exception) {
			exception.printStackTrace();
			System.out.println("Exceptions arised");

		}
		finally
		{
			adapter.closeResources(resultSet, preparedStatement, connection);

		}		
		return allUsersList;
	}

}
