package com.example.userRegistration;

import java.io.IOException; 
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;  
import javax.servlet.http.HttpServlet;  
import javax.servlet.http.HttpServletRequest;  
import javax.servlet.http.HttpServletResponse;  

import com.example.userRegistration.Validator;

@SuppressWarnings("serial")
public class Validate extends HttpServlet {  
	public void doPost(HttpServletRequest request, HttpServletResponse response)  
			throws ServletException, IOException {  


		response.setContentType("text/html");  
		PrintWriter out = response.getWriter(); 

		//    DataStorageClass dataObj = new DataStorageClass();

		String userFirstName=request.getParameter("first_name");      
		String userId=request.getParameter("username");  
		String userPassword=request.getParameter("pwd");  
		if(applyValidation(userFirstName,userId,userPassword))
		{
			/*Validator obj = new Validator();
			obj.setFirstName(userFirstName);
			obj.setUserName(userId);
			obj.setPassword(userPassword);
			*/
			RequestDispatcher rd = request.getRequestDispatcher("Welcome"); // redirects to success page
			rd.forward(request, response);
		}else{
			out.println("<h1><font color=Red><b>Please fill in all required fields !<b></font></h1>");
			RequestDispatcher rd = request.getRequestDispatcher("index.jsp");  // reloads form page again in case of invalid details
			rd.include(request, response);
		}
		out.close();
	}

	/**
	 * Validator method for mandatory fields
	 * @param user
	 * @param userId
	 * @param userPassword
	 * @return
	 */
	private Boolean applyValidation(String userFirstName, String userId, String userPassword){

		if(userFirstName == null  || userFirstName.isEmpty()){
			return false;
		}else if(userId == null || userId.isEmpty()){
			return false;
		}else if(userPassword == null || userPassword.isEmpty()){
			return false;
		}
		return true;
	}

}