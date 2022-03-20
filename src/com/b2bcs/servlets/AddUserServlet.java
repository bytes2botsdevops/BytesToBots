package com.b2bcs.servlets;

import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

import com.b2bcs.beans.UserBean;
import com.b2bcs.database.daos.UserDAO;
import com.b2bcs.util.UserUtil;


@WebServlet({ "/AddUserServlet", "/addUserServlet" })
@MultipartConfig(maxFileSize = 16177215)
public class AddUserServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		addUser(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		addUser(request, response);
	}

	private void addUser(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
	{
		UserDAO userDAO = new UserDAO();
		UserBean userBean = new UserBean();
		UserUtil util = new UserUtil();
		
		String firstName = request.getParameter("firstname");
		String lastName = request.getParameter("lastname");
		String email = request.getParameter("email");
		String password = request.getParameter("password");
		String phone = request.getParameter("phone");
		String dob = request.getParameter("dob");
		String message = request.getParameter("message");
		
		System.out.println("firstName" + firstName);
		System.out.println("lastName" + lastName);
		System.out.println("email" + email);
		System.out.println("password" + password);
		System.out.println("phone" + phone);
		System.out.println("dob" + dob);
		System.out.println("message" + message);
		
		userBean.setUserTypeId("1");
		userBean.setFirstName(firstName);
		userBean.setLastName(lastName);
		userBean.setEmail(email);
		userBean.setPassword(password);
//		userBean.setDateOfBirth("1990-04-25");
		//userBean.setDateOfBirth(util.getMySQLDateFormat(dob));
		userBean.setDateOfBirth(dob);
		userBean.setIsActive('Y');
		userBean.setContactNumber(phone);
		userBean.setMessage(message);

		//userBean.setRegistrationDate("2021-07-22");
		userBean.setRegistrationDate(util.getCurrentMySQLDateFormat());
		boolean isRegistered = userDAO.insertUser(userBean);
		
		RequestDispatcher dispatcher = null;
		if (isRegistered)
		{
			dispatcher = request.getRequestDispatcher("controller?action=registerSuccess");
		}
		else
		{
			dispatcher = request.getRequestDispatcher("controller?action=registerFailed");
		}
	dispatcher.forward(request, response);	
	}
}
