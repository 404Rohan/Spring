package com.hbutils;

import java.util.Properties;

import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;

import com.model.Employee;
import com.model.UserData;

public class HBUtils {
	public static SessionFactory sf= new Configuration().setProperties(hbProperties()).addAnnotatedClass(Employee.class).addAnnotatedClass(UserData.class)
				.buildSessionFactory();
	
	private static Properties hbProperties()
	{
		Properties p = new Properties();
		p.setProperty("hibernate.connection.driver_class", "com.mysql.cj.jdbc.Driver");
		p.setProperty("hibernate.connection.url", "jdbc:mysql://localhost:3306/jap58project");
		p.setProperty("hibernate.connection.username", "root");
		p.setProperty("hibernate.connection.password", "pass@123");
		
		p.setProperty("hibernate.dialect", "org.hibernate.dialect.MySQL8Dialect");
		p.setProperty("hibernate.hbm2ddl.auto", "update");
		p.setProperty("hibernate.show_sql", "true");
		p.setProperty("hibernate.format_sql", "true");
		
		return p;
	}

}
