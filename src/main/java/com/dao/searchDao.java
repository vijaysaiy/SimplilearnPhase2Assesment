package com.dao;

public class searchDao {
	    public static String date;
	    public static String day;
	    public static String source;
	    public static String destination;
	    public static int  persons;
	    
	    
	    public static String getQuery() {
	        return "SELECT * FROM airlineslist WHERE Source = '"+source+"' AND Destination='"+destination+"' AND Day='"+day+"'";
	    }
	    
 }
