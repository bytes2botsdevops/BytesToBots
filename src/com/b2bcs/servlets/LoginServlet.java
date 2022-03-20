package com.b2bcs.servlets;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.b2bcs.beans.UserLoginBean;
import com.b2bcs.beans.UserSessionBean;
import com.b2bcs.database.daos.UserDAO;


@WebServlet({ "/LoginServlet", "/loginServlet" })
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		doLogin(request,response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		doLogin(request,response); 
	}

	private void doLogin(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
	{
		RequestDispatcher dispatcher = null;
		String email = request.getParameter("email");
		String password = request.getParameter("password");
		
		boolean isLoginSuccess = false;
		UserDAO userDAO = new UserDAO();
		UserLoginBean userLoginBean = new UserLoginBean();
		userLoginBean.setEmail(email);
		userLoginBean.setPassword(password);
		
		
		isLoginSuccess = userDAO.checkUserLogin(userLoginBean);
		if (isLoginSuccess  && ! "".equalsIgnoreCase(userLoginBean.getId()) )
		{
			dispatcher=request.getRequestDispatcher("careers.jsp");
			UserSessionBean uSessionBean = new UserSessionBean();
			uSessionBean.setUsername(userLoginBean.getFirstName());
			uSessionBean.setUserId(userLoginBean.getId());
			request.getSession().setAttribute("LoginBean", uSessionBean);
		}
		else
		{
			dispatcher=request.getRequestDispatcher("login.jsp?actionMessage=loginerror");
		}
		dispatcher.forward(request, response);	
	}
}
