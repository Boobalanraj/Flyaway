package com.flyaway.practice;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/changepass")
public class PasswordChange extends HttpServlet{

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		 PrintWriter output = resp.getWriter();
	        String newpassword = req.getParameter("newpassword");
	        if (!Login.isLoggedIn){
	            output.println("You must login first");
	        }
	        else if (newpassword.equals("")){
	            output.println("Password can't be empty");
	        }
	        else if (Login.isLoggedIn && !newpassword.equals("")){
	            Login.password = newpassword;
	            output.println("Password changed successfully. New Password is "+Login.password);
	        }
	        else {
	            output.println("Sorry, Something went wrong");
	        }
	        output.close();
	    }
	}

