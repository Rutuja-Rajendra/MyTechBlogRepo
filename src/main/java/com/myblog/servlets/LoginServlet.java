package com.myblog.servlets;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;
import java.io.PrintWriter;

import com.myblog.dao.UserDao;
import com.myblog.entities.User;
import com.myblog.helper.ConnectionProvider;

public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
  
    public LoginServlet() {
        super();
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		PrintWriter out = response.getWriter();
		
		//fetch username and password from request
		
		String userEmail = request.getParameter("email");
		String userPassword = request.getParameter("password");
		
		UserDao userDao = new UserDao(ConnectionProvider.getConnection());
		
		User user = userDao.getUserByEmailAndPassword(userEmail, userPassword);
		
		if(user == null)
		{
			out.println("Invalid Data! Try Again...");
		}
		else
		{
			HttpSession mysession = request.getSession();
			mysession.setAttribute("CurrentUser", user);
			response.sendRedirect("profile.jsp");
		}
	}

}
