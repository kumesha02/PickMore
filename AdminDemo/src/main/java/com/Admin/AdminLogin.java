package com.Admin;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/AdminLogin")
public class AdminLogin extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String username = request.getParameter("uid");
        String password = request.getParameter("pass");
        try {
            List<Admin> admDetails = AdminDBUtil.validate(username, password);

            if (admDetails != null && !admDetails.isEmpty()) {
                // Valid login
                request.setAttribute("admDetails", admDetails);
                String alertMessage = "Login Successful";
                response.getWriter().println("<script>alert('" + alertMessage + "'); window.location.href='AdminLogin.jsp';</script>");
            } else {
                // Invalid login
                String alertMessage = "Invalid login details. Please enter correct details.";
                response.getWriter().println("<script>alert('" + alertMessage + "'); window.location.href='AdminMainLogin.jsp';</script>");
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
