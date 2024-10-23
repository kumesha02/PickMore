package com.support;



import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/UpdateCustomerServlet")
public class UpdateServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String id = request.getParameter("id");
		String name = request.getParameter("name");
		String nic = request.getParameter("nic");
		String phone = request.getParameter("phone");
		String email = request.getParameter("email");
		String date = request.getParameter("date");
		String text = request.getParameter("text");
		
		boolean isTrue;
		
		isTrue = UserDBUtil.updatecustomer(id, name, nic, phone, email, date, text);
		
		if(isTrue == true) {
			
			List<User> cusDetails = UserDBUtil.getCustomerDetails(id);
			request.setAttribute("cusDetails", cusDetails);
			
			RequestDispatcher dis = request.getRequestDispatcher("Display.jsp");
			dis.forward(request, response);
		}
		else {
			List<User> cusDetails = UserDBUtil.getCustomerDetails(id);
			request.setAttribute("cusDetails", cusDetails);
			
			RequestDispatcher dis = request.getRequestDispatcher("Display.jsp");
			dis.forward(request, response);
		}
	}

}
