package com.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import com.dao.*;
import com.bean.userbean;


@WebServlet("/signup")
public class signup extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
 
    public signup() {
        super();
        // TODO Auto-generated constructor stub
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String fname= request.getParameter("fname");
		String lname= request.getParameter("lname");
		String email= request.getParameter("email");
		String password= request.getParameter("pass");
		
		userbean u = new userbean();
		u.setFirstname(fname);
		u.setLastname(lname);
		u.setEmailid(email);
		u.setPassword(password);
		
		

		
	
		
		usercon ul= new usercon();
		ul.insert(u);
		response.sendRedirect("login.jsp");

	}

}
