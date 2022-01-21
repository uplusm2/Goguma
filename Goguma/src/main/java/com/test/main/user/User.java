package com.test.main.user;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/user/user.do")
public class User extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		String userId = req.getParameter("userId");
		
		req.setAttribute("userId", userId);
		
		RequestDispatcher dispatcher = req.getRequestDispatcher("/WEB-INF/views/user/user.jsp");
		dispatcher.forward(req, resp);
	}

}
