package com.sb.backend;

import jakarta.servlet.*;

import java.io.IOException;

public class validationFilter implements Filter{
    public void init(FilterConfig filterConfig) throws ServletException {
    }

    @Override
    public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws IOException, ServletException
    {
        String name2=request.getParameter("name1");
        String email2=request.getParameter("email1");
        String pass2=request.getParameter("pass1");
        String gender2=request.getParameter("gender1");
        String city2=request.getParameter("city1");

        validationServerSide validations=new validationServerSide();

        if(!validations.nameValidate(name2))
        {
            RequestDispatcher rd1=request.getRequestDispatcher("register.jsp");
            rd1.include(request, response);
        }
        else if(!validations.emailValidate(email2))
        {
            RequestDispatcher rd1=request.getRequestDispatcher("register.jsp");
            rd1.include(request, response);
        }
        else if(!validations.passwordValidate(pass2))
        {
            RequestDispatcher rd1=request.getRequestDispatcher("register.jsp");
            rd1.include(request, response);
        }
        else if(gender2==null || gender2.equals(""))
        {
            RequestDispatcher rd1=request.getRequestDispatcher("register.jsp");
            rd1.include(request, response);
        }
        else if(city2==null || city2.equals(""))
        {
            RequestDispatcher rd1=request.getRequestDispatcher("register.jsp");
            rd1.include(request, response);
        }
        else
        {
            chain.doFilter(request, response);
        }
    }

    @Override
    public void destroy() {
    }


}
