<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

      Select a file to upload: <br />
      <form action = "UploadResume" method = "post"
         enctype = "multipart/form-data">
         FullName:<input type="text" name="fullname"><br/>
         <input type = "file" name = "resume" size = "50" />  
         <br />
         <input type = "submit" value = "Upload File" />
         <%
         String Message = (String)request.getAttribute("Message");
         if (null!= Message && !"".equalsIgnoreCase(Message))
         {
        	 if(Message.equalsIgnoreCase("Resume uploaded successfully"))
        	 {
        		 out.println("<div style=\"color: green;\">"+ Message +" </div>");	 
        	 }
        	 else if (Message.equalsIgnoreCase("Resume upload failed"))
        	 {
        		 out.println("<div style=\"color: Red;\">"+ Message +" </div>");
        	 }
        	 	 
         }
         %>
      </form>


</body>
</html>