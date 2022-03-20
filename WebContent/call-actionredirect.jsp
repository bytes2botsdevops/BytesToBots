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
String callInsert = (String)request.getParameter("m"); 
String indexURL="http://localhost:8080/BytesToBots/index.jsp";
System.out.print("Redirecting to Url===" + indexURL);
out.write("redirecting");
//response.sendRedirect(indexurl);
request.setAttribute("callInsert",callInsert);
request.getRequestDispatcher(indexURL).forward(request,response);

%>
</body>
</html>