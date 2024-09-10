/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.sb.backend;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;


public class Register extends HttpServlet
{
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException
    {
        resp.setContentType("text/html");
        PrintWriter out=resp.getWriter();
        
        String name2=req.getParameter("name1");
        String email2=req.getParameter("email1");
        String pass2=req.getParameter("pass1");
        String gender2=req.getParameter("gender1");
        String[] field2=req.getParameterValues("field1");
        String city2=req.getParameter("city1");
        
        String fields2="";
        for(String s:field2)
        {
            fields2=fields2+","+s;
        }
        
        try
        {
            Class.forName("com.mysql.cj.jdbc.Driver");
            
            Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3307/jobportal","root","Shravan@123");
            System.out.println("connection created successfully");
            PreparedStatement ps=con.prepareStatement("insert into register(name,email,password,gender,fields,city) values(?,?,?,?,?,?)");
            ps.setString(1, name2);
            ps.setString(2, email2);
            ps.setString(3, pass2);
            ps.setString(4, gender2);
            ps.setString(5, fields2);
            ps.setString(6, city2);
            
            int i=ps.executeUpdate();
            if(i>0)
            {
                out.print("User registered successfully");
            }
            else
            {
                out.println("Failed");
            }
        }
        catch(Exception e)
        {
            e.printStackTrace();
        }
    }
}
