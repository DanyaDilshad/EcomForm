package com.gap;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@SuppressWarnings("serial")
@WebServlet("/Register")
public class Register extends HttpServlet {
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String uname = request.getParameter("uname");
		String passw = request.getParameter("passw");
		String full_name = request.getParameter("full_name");
		String mail = request.getParameter("user_mail");
		String phone = request.getParameter("phone");
		String addr = request.getParameter("addr");
		
		Dao dao = new Dao();
		if(dao.register(uname, passw, full_name, mail, phone, addr)) {
				response.sendRedirect("login.jsp");
			}
	}

}
