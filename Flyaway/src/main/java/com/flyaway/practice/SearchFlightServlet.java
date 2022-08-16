package com.flyaway.practice;

import java.io.IOException;
import java.io.PrintWriter;
import java.time.LocalDate;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/searchflight")
public class SearchFlightServlet extends HttpServlet {

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		 SearchFlight.date = req.getParameter("date");
	        SearchFlight.start_point = req.getParameter("start_point");
	        SearchFlight.destination = req.getParameter("destination");
	        SearchFlight.persons = Integer.parseInt(req.getParameter("persons"));
	        
	        resp.sendRedirect("searchoutput.jsp");
	}

}
