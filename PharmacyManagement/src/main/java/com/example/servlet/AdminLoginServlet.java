package com.example.servlet;

import javax.servlet.*;
import javax.servlet.http.*;
import java.io.IOException;

public class AdminLoginServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String username = request.getParameter("username");
        String password = request.getParameter("password");

        // Dummy check for admin login credentials
        if ("admin".equals(username) && "admin123".equals(password)) {
            response.sendRedirect("adminDashboard.jsp");
        } else {
            response.sendRedirect("adminLogin.jsp");
        }
    }
}
