package com.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.model.UserData;

public class FirstServlet extends HttpServlet{
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException 
	{		//UserData u = new UserData();
				
			String s1 = req.getParameter("username");
			String s2 = req.getParameter("password");
			
	
			if(s1.equals("admin") && s2.equals("admin") )
			{
				resp.sendRedirect("first.jsp");
			
			}
			else
			{
				
				resp.sendRedirect("index.jsp");
			
			}
		
		
	}
	
	

}
