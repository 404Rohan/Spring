package com.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.dao.EmployeeDao;
import com.model.Employee;

public class SecondServlet extends HttpServlet {
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
	
		
		if (req.getParameter("b1").equalsIgnoreCase("add")) {
			Employee e = new Employee();

			e.setEid(Integer.parseInt(req.getParameter("eid")));
			e.setEname(req.getParameter("ename"));
			e.setEcompany(req.getParameter("ecompany"));
			e.setEdesignation(req.getParameter("edesignation"));
			e.setEsalary(Double.parseDouble(req.getParameter("esalary")));
			
			new EmployeeDao().insertEmployee(e);
			resp.sendRedirect("first.jsp");
		}
		
		if(req.getParameter("b1").equalsIgnoreCase("Delete"))
		{
			
			
			new EmployeeDao().deleteByEid(Integer.parseInt(req.getParameter("eid")));
			
			System.out.println("delete employee");
			resp.sendRedirect("first.jsp");
			
		}
		
		if(req.getParameter("b1").equalsIgnoreCase("Display"))
		{
			
			resp.sendRedirect("display.jsp");
			
			
		}
		
		

		//resp.sendRedirect("first.jsp");

	}
}
