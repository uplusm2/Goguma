package com.test.main.user;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/user/memberdata.do")
public class MemberData extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		String id = req.getParameter("id");
		
		
		
		RequestDispatcher dispatcher = req.getRequestDispatcher("/WEB-INF/views/user/memberdata.jsp");
		dispatcher.forward(req, resp);
	}

}
