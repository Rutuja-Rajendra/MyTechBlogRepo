package com.myblog.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import com.myblog.entities.User;

public class UserDao {

	private Connection con;

	public UserDao(Connection con) {
		super();
		this.con = con;
	}
	
	public boolean saveUser(User user)
	{
		boolean flag = false;
		
		try
		{
			String query = "insert into user(username, email,password,gender, about) values(?,?,?,?,?)";
			PreparedStatement pstmt = this.con.prepareStatement(query);
			pstmt.setString(1, user.getUsername());
			pstmt.setString(2, user.getEmail());
			pstmt.setString(3, user.getPassword());
			pstmt.setString(4, user.getGender());
			pstmt.setString(5, user.getAbout());
			
			pstmt.executeUpdate();
			flag = true;
			
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		
		return flag;
	}
	
	// get user by email and password
	
	public User getUserByEmailAndPassword(String email, String password)
	{
		User user = null;
		
		try 
		{
			String query = "SELECT * FROM user WHERE email = ? AND password = ?";
			PreparedStatement pstmt = con.prepareStatement(query);
			
			pstmt.setString(1,email);
			pstmt.setString(2, password);
			
			ResultSet rs = pstmt.executeQuery();
			if(rs.next())
			{
				user = new User();
				user.setId(rs.getInt("id"));
				user .setUsername(rs.getString("username"));
				user.setEmail(rs.getString("email"));
				user.setPassword(rs.getString("password"));
				user.setGender(rs.getString("gender"));
				user.setAbout(rs.getString("about"));
				user.setReg_date(rs.getTimestamp("reg_date"));
				user.setProfile(rs.getString("profile"));
			}
			
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		
		return user;
	}
}
