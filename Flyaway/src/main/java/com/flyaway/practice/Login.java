package com.flyaway.practice;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/innerlogin")
public class Login extends HttpServlet{
	 public static boolean isLoggedIn = false;
	 public static String email = "admin@gmail.com";
	 public static String password = "Admin";

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		PrintWriter output = resp.getWriter();
		String email = req.getParameter("email");
		String password=req.getParameter("password");
		
		try {
			if(email.equals(Login.email) && password.equals(Login.password)) {
				isLoggedIn = true;
				System.out.println("successfully");
				output.println("LoggedIn Successfully");
				resp.sendRedirect("adminDashboard.jsp");
			}
			else {
				isLoggedIn= false;
				output.println("Incorrect email or Password");
			}
		}catch(Exception message) {
			output.println("Error in login Servlet: "+message);
		}
		output.close();
	}
}
