package com.example.userRegistration;

import java.io.IOException;  
import java.io.PrintWriter;





import javax.servlet.ServletException;  
import javax.servlet.http.HttpServlet;  
import javax.servlet.http.HttpServletRequest;  
import javax.servlet.http.HttpServletResponse;

import com.google.appengine.api.datastore.DatastoreService;
import com.google.appengine.api.datastore.DatastoreServiceFactory;
import com.google.appengine.api.datastore.Entity;



@SuppressWarnings("serial")
public class Welcome extends HttpServlet {  
	public void doPost(HttpServletRequest request, HttpServletResponse response)  
			throws ServletException, IOException {  

		response.setContentType("text/html");  
		PrintWriter out = response.getWriter();  
		String userFirstName=request.getParameter("first_name");      
		String userId=request.getParameter("username");  
		String userPassword=request.getParameter("pwd");  
		String userLastName=request.getParameter("last_name");
		String dob=request.getParameter("dob");
		String phone=request.getParameter("phone");
		String gender=request.getParameter("gender");
		String address=request.getParameter("address");
		String city=request.getParameter("city");
		String country=request.getParameter("country");
		String emalId=request.getParameter("email");
		String pinCode=request.getParameter("pin");
		
		/**
		 * Populate DB record
		 */
		DatastoreService datastore = DatastoreServiceFactory.getDatastoreService();
		Entity registeredUser = new Entity("Registered Users");
		registeredUser.setProperty("First_Name", userFirstName);
		registeredUser.setProperty("Last_Name", userLastName);
		registeredUser.setProperty("Phone_No.", phone);
		registeredUser.setProperty("Gender", gender);
		registeredUser.setProperty("Adress", address);
		registeredUser.setProperty("City", city);
		registeredUser.setProperty("Country", country);
		registeredUser.setProperty("Email", emalId);
		registeredUser.setProperty("Pin_Code", pinCode);
		registeredUser.setProperty("Date_Of_Birth", dob);
		registeredUser.setProperty("User", userId);
		registeredUser.setProperty("Password", userPassword);
		datastore.put(registeredUser);

		out.print("<h1><font color=Green><b>Welcome,Registration successful !!<b></font></h1>");  

		out.close();  
	}  
}