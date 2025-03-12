package com.myblog.helper;

import java.sql.Connection;
import java.sql.DriverManager;

public class ConnectionProvider {

	private static Connection con;
	
	public static Connection getConnection()
	{
		try
		{
			if(con==null)
			{
				System.out.println("Loading MySQL Driver...");
				Class.forName("com.mysql.cj.jdbc.Driver");
				System.out.println("MySQL Driver loaded successfully!");
				
				con = DriverManager.getConnection("jdbc:mysql://localhost:3306/mytechblog","root","ruta");
			}
		}
		catch (Exception e) 
		{
			//System.out.println("Database connection failed!");
			e.printStackTrace();
		}
		
		return con;
	}
}
