package com.b2bcs.controller;


import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


public class ActionController extends HttpServlet 
{
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		doController(request,response);
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		doController(request,response);
	}
	private void doController(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{ 
		RequestDispatcher requestDispatcher = null;
		String action =request.getParameter("action");

		
		if (null!= action && !"".equalsIgnoreCase(action))
		{
			if ("register".equalsIgnoreCase(action))
			{
				requestDispatcher = request.getRequestDispatcher("addUserServlet");
				requestDispatcher.forward(request, response);
			}
			else if ("registerSuccess".equalsIgnoreCase(action))
			{
				requestDispatcher = request.getRequestDispatcher("register.jsp?actionMessage=success");
				requestDispatcher.forward(request, response);
			}
			else if ("registerFailed".equalsIgnoreCase(action))
			{
				requestDispatcher = request.getRequestDispatcher("register.jsp?actionMessage=error");
				requestDispatcher.forward(request, response);
			}
			else if ("login".equalsIgnoreCase(action))
			{
				requestDispatcher = request.getRequestDispatcher("loginServlet");
				requestDispatcher.forward(request, response);
			}
		}
		
	}
}


