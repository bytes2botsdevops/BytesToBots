<%@page import="com.b2bcs.database.DatabaseManager"%>
<%@page import="com.b2bcs.CallUserBean"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<%
	String fullName = request.getParameter("full-name");
	String emailAddress = request.getParameter("email-address");
	String phoneNumber = request.getParameter("phone-number");
	String subject = request.getParameter("subject");
	String shortText = request.getParameter("shorttext");

	CallUserBean userBean = new CallUserBean();
	userBean.setFullName(fullName);
	userBean.setEmail(emailAddress);
	userBean.setPhoneNumber(phoneNumber);
	userBean.setSubject(subject);
	userBean.setShortText(shortText);
	DatabaseManager databaseManager = DatabaseManager
			.getDatabaseManager();
	boolean insertedStatus = databaseManager
			.insertCallUserEnquiry(userBean);
	
	String m = "";
	if (insertedStatus) 
	{
		out.println("User Enquiry successfully");
		request.setAttribute("CallInsert","Enquiry registered successfully..");
		m="Enquiry registered successfully..";
	} 
	else 
	{
		out.println("User Enquiry insert failed");
		request.setAttribute("CallInsert","Enquiry failed.. Try later");
		m="Enquiry failed.. Try later";
	}
	//String indexURL="http://localhost:8080"+ request.getContextPath()+"/careers.jsp";
	String indexURL="/careers.jsp";
	
//	String indexurl="http://localhost:8080/BytesToBots/index.jsp";
	System.out.print("Url===" + indexURL);
	out.write("redirecting");
	//response.sendRedirect(indexURL);
	//request.getRequestDispatcher(indexURL).forward(request,response);
	//response.sendRedirect(indexURL);
	response.sendRedirect (response.encodeRedirectURL (indexURL));
%>

</body>
</html>