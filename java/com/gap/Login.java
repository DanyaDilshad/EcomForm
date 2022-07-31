package com.gap;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


@SuppressWarnings("serial")
@WebServlet("/Login")
public class Login extends HttpServlet {


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String uname = request.getParameter("user_name");
		String passw = request.getParameter("user_password");
		
		Dao dao = new Dao();
		
		try {
			if(dao.check(uname, passw)) {
				HttpSession session = request.getSession();
				session.setAttribute("uname", uname);
				response.sendRedirect("home.jsp");
				
				
			}
			else {
				response.sendRedirect("login.jsp");
			}
		} catch (Exception e) {

			e.printStackTrace();
		}
		
	}

	
}
