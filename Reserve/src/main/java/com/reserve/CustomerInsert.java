package com.reserve;



import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/CustomerInsert")
public class CustomerInsert extends HttpServlet {
	private static final long serialVersionUID = 1L;


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String name = request.getParameter("name");
		String nic = request.getParameter("nic");
		String train = request.getParameter("train");
		String amount = request.getParameter("amount");
		String price = request.getParameter("price");
		String date = request.getParameter("date");
		
		boolean isTrue;
		
		isTrue = UserDBUtil.insertcustomer(name, nic, train, amount, price, date);
		
		if(isTrue == true) {
			RequestDispatcher dis = request.getRequestDispatcher("Search.jsp");
			dis.forward(request, response);
		} else {
			RequestDispatcher dis2 = request.getRequestDispatcher("unsuccess.jsp");
			dis2.forward(request, response);
		}
		
		
	}

}
