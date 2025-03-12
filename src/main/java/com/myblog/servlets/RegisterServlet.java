package com.myblog.servlets;

import java.io.IOException;
import java.io.PrintWriter;

import com.myblog.dao.UserDao;
import com.myblog.entities.User;
import com.myblog.helper.ConnectionProvider;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.MultipartConfig;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@MultipartConfig
@WebServlet("/Register-Servlet")
public class RegisterServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
    public RegisterServlet() {
        super();
      
    }
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		PrintWriter out = response.getWriter();
		
		//fetch all form data
		
		String check = request.getParameter("check");
		if(check==null)
		{
			out.println("Check the Terms and Conditions.");
		}
		else
		{
			String name = request.getParameter("user_name");
			String email = request.getParameter("user_email");
			String password = request.getParameter("password");
			String gender = request.getParameter("gender");
			String about = request.getParameter("about");
			
			User user = new User(name,email,password,gender,about);
			
			UserDao userDao = new UserDao(ConnectionProvider.getConnection());
			if(userDao.saveUser(user))
			{
				out.println("Done!");
			}
			else
			{
				out.println("Error!");
			}
			
		}
	}
	
	

}
