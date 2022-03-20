package com.main;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;
import java.util.ArrayList;

import com.b2bcs.beans.UserBean;
import com.b2bcs.beans.UserLoginBean;
import com.b2bcs.database.daos.UserDAO;
import com.b2bcs.util.UserUtil;


public class Manager {

	public static void main(String[] args) 
	{
		Manager manager = new Manager();
		//Insert User
/*		manager.insertUser();
		try {
			Thread.sleep(10000);
			System.out.print("Awake from sleep");
		} catch (InterruptedException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		manager.loginCheckTest();
		manager.getUserWithId("2");
		manager.getUserWithEmail("abc@gmail.com");
		manager.getUserWithContact("9100730490");
		
		manager.getAllUserList();
		*/

		//manager.insertUser();
		//manager.loginCheckTest();
		//manager.getAllUserList();
		
		
		UserUtil util = new UserUtil();
		System.out.println("08-02-1985");
		System.out.println(util.getMySQLDateFormat("08-02-1985"));
		
	}


	private void getAllUserList() {
		UserDAO userDAO = new UserDAO();
		ArrayList<UserBean> allUserList = userDAO.getAllUsersList();
		System.out.println("Printing all the users from the table");
		System.out.println("----------------------------------------");
		for (UserBean bean : allUserList)
		{
			bean.printUser();
		}
	}


	private void getUserWithId(String id) 
	{
		UserBean bean = this.getUserBean(id);
		if ( null != bean.getId())
		{
			bean.printUser();
		}
		else
		{
			System.out.println("Unable to find user with Id==" + id);
		}
	}

	private void getUserWithEmail(String email) 
	{
		UserBean bean = this.getUserBean(email);
		if ( null != bean.getId())
		{
			bean.printUser();
		}
		else
		{
			System.out.println("Unable to find user with Id==" + email);
		}
	}
	private void getUserWithContact(String contactNumber) 
	{
		UserBean bean = this.getUserBean(contactNumber);
		if ( null != bean.getId())
		{
			bean.printUser();
		}
		else
		{
			System.out.println("Unable to find user with Id==" + contactNumber);
		}
	}

	private UserBean getUserBean(String key) 
	{
		UserDAO userDAO = new UserDAO();
		UserBean userBean = userDAO.getUserBean(key);
		return userBean;
	}


	private void loginCheckTest() {
		//Login Check

		//String email ="shivaprakash.jntua@gmail.com"; 
		String email ="subbu.iare@gmail.com"; 
		String password = "admin"; 
		String id = "";
		try {
			Thread.sleep(300);
		} catch (InterruptedException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		boolean isLoggedin = this.loginUser(email, password, id);
		System.out.println("isLoggedin status ===" + isLoggedin );
		if (isLoggedin && !"nouser".equalsIgnoreCase(id))
		{
			System.out.println("User Logged In Successfully");
		}
		else
		{
			System.out.println("User Login failed");
		}		
	}


	private boolean loginUser(String email, String password, String id) {
		UserDAO userDAO = new UserDAO();
		UserLoginBean userLoginBean = new UserLoginBean();
		userLoginBean.setEmail(email);
		userLoginBean.setPassword(password);
		boolean validUser = userDAO.checkUserLogin(userLoginBean);
		id = userLoginBean.getId();
		return validUser;
	}


	public void insertUser()
	{
		File file = new File("C:\\Files\\app\\ganesh.txt");

		UserDAO userDAO = new UserDAO();
		UserBean userBean = new UserBean();
		userBean.setUserTypeId("1");
		userBean.setFirstName("Subbu");
		userBean.setLastName("Rayudu");
		userBean.setEmail("subbu.iare@gmail.com");
		userBean.setPassword("admin");
		userBean.setDateOfBirth("1990-04-25");
		userBean.setIsActive('Y');
		userBean.setContactNumber("9100730490");
		userBean.setRegistrationDate("2021-07-18");

		userDAO.insertUser(userBean);

	}
}
