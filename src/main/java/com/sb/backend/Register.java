package com.sb.backend;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

public class Register extends HttpServlet{
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		resp.setContentType("text/html");
		PrintWriter out = resp.getWriter();
		
		String name = req.getParameter("name1");
		String email = req.getParameter("email1");
		String pass = req.getParameter("pass1");
		String gender = req.getParameter("gender1");
		String[] field = req.getParameterValues("field1");
		String city = req.getParameter("city1");
		
		String field2 = " ";
		for(String s: field)
		{
			field2=field2+","+s;
		}
		
		try
		{
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3307/jobportal","root","Shravan@123");
		}catch (Exception e) {
			
			e.printStackTrace();
		}
	}

}
