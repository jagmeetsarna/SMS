package com.xavient.utill;

import java.sql.*; 
public class ConnectionUtil {
	
	public static Connection getConnection(){
		final String passWord="root";
		final String userName="root";
		final String dbName="j";
		Connection connection=null;
		
	  try {
		   Class.forName("com.mysql.jdbc.Driver");
		   connection=DriverManager.getConnection( "jdbc:mysql://localhost/"+dbName,userName,passWord);
		} catch (SQLException |ClassNotFoundException e) {
			System.out.println(e.getMessage());
			connection=null;
		} 
		return connection;
	}
}
