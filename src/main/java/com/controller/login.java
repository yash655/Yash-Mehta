package com.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.bean.userbean;
import com.dao.usercon;

/**
 * Servlet implementation class login
 */
@WebServlet("/login")
public class login extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public login() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String email= request.getParameter("email");
		String password= request.getParameter("password");
		
		usercon u1 = new usercon();
		
		ArrayList<userbean> users = u1.getAllUsers();
		int cc=0;
		for(userbean u : users) {
			System.out.println(u.getEmailid());
			if( email.equals(u.getEmailid()) && password.equals(u.getPassword()) )
			{
				Cookie c = new Cookie("name", u.getFirstname());
				response.addCookie(c);
				System.out.println("hello");
				response.sendRedirect("home.jsp");
				cc++;
				

			}
		
		}
		
			
		RequestDispatcher rd;
		if(cc==0)
		{
			request.setAttribute("error", "u have enterd wrong email or password");
			 rd = request.getRequestDispatcher("login.jsp");
			 rd.forward(request, response);
		}
		}

}
