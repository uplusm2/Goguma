package com.test.main.user;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/user/postlist.do")
public class PostList extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		String id = req.getParameter("id");// 나중에 세련으로 변경

		RequestDispatcher dispatcher = req.getRequestDispatcher("/WEB-INF/views/user/postlist.jsp");
		dispatcher.forward(req, resp);
	}

}
