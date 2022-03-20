package com.b2bcs;

import java.io.IOException;
import java.io.InputStream;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

import com.b2bcs.database.DatabaseManager;

@WebServlet({ "/UploadResumeServlet", "/UploadResume"  })
@MultipartConfig(maxFileSize = 16177215)	
public class UploadResumeServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doProceed(request,response);	
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doProceed(request,response);
	}

	private void doProceed(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		PrintWriter out = response.getWriter();
		String fullName = request.getParameter("full-name");
		String email = request.getParameter("email-address");
		String phoneNumber = request.getParameter("phone-number");
		String formMessage = request.getParameter("form-message");
		InputStream inputStream = null;	// input stream of the upload file

		// obtains the upload file part in this multipart request
		Part filePart = request.getPart("resume");
		if (filePart != null) {
			// prints out some information for debugging
			System.out.println(filePart.getName());
			System.out.println(filePart.getSize());
			System.out.println(filePart.getContentType());

			// obtains input stream of the upload file
			inputStream = filePart.getInputStream();
			DatabaseManager databaseManager = DatabaseManager.getDatabaseManager();
			ResumeBean resumeBean = new ResumeBean();
			resumeBean.setFullName(fullName);
			resumeBean.setEmail(email);
			resumeBean.setPhoneNumber(phoneNumber);
			resumeBean.setFormMessage(formMessage);
			resumeBean.setInputStream(inputStream);
			databaseManager.uploadResumeToDatabase(resumeBean);
			String message = resumeBean.getResponseMessage();
			if (true == resumeBean.isStatus())
			{
				out.println("Resume uploaded successfully");
				message="Resume uploaded successfully";
			}
			else
			{
				out.println("Resume upload failed");
				message="Resume upload failed";
			}
			// sets the message in request scope
			request.setAttribute("Message",message );
			
			// forwards to the message page
			getServletContext().getRequestDispatcher("/career.jsp").forward(request, response);
		}

	}



}
