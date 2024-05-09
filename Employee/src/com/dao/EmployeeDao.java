package com.dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.Transaction;

import com.hbutils.HBUtils;
import com.model.Employee;
import com.model.UserData;

public class EmployeeDao {
	
	private Session session= HBUtils.sf.openSession();
	private Transaction tx = session.beginTransaction();
	
	
		
	public int insertEmployee(Employee e)
	{
		System.out.println("Employee added");
		int result=(int)session.save(e);
		closeConnection();
		return result;
	 }	
	
	public int deleteByEid(int eid)
	{
		int result=session.createQuery("delete from Employee where eid=:a").setParameter("a",eid).executeUpdate();
		closeConnection();
		return result;
	}
	
	
	public int insertUserData(UserData u)
	{
		System.out.println("Employee added");
		int result=(int)session.save(u);
		closeConnection();
		return result;
	 }	
	
	public List<Employee> findAllEmployee()
	{
		return session.createCriteria(Employee.class).list();
		
		
	}
	

	
	
	private void closeConnection()
	{
		tx.commit();
		session.close();
		
	}
		  
	  
			
			
			
			
			
	
	
}
