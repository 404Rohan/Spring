package com.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.dao.EmployeeDao;
import com.model.UserData;

public class RegisterServlet extends HttpServlet{
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		EmployeeDao ed = new EmployeeDao();
		
		UserData u = new UserData();
		u.setUsername(req.getParameter("username"));
		u.setPassword(req.getParameter("password"));
		System.out.println("register success");
		{
			resp.sendRedirect("rs.jsp");
							
		}
		ed.insertUserData(u);
		}

}
