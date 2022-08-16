package com.flyaway.practice;


public class SearchFlight {

	 public static String date;
//	    public static String day;
	    public static String start_point;
	    public static String destination;
	    public static int persons;

	    public static String getQuery() {
	    	System.out.println(start_point+destination+ date);
	        return "SELECT * FROM flyaway WHERE start_point = '"+start_point+"' AND destination='"+destination+"' AND date='"+date+"'";
	    }
}
