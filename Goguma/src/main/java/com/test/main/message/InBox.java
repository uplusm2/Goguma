package com.test.main.message;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/message/inBox.do")
public class InBox extends HttpServlet {
	private MessageDAO dao;
	private ArrayList<MessageDTO> list;
	
	{
		dao = new MessageDAO();
	}

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		String id = req.getParameter("id");
		id = "user1";
		list = dao.list(id);
		
		req.setAttribute("list", list);

		RequestDispatcher dispatcher = req.getRequestDispatcher("/WEB-INF/views/message/inBox.jsp");
		dispatcher.forward(req, resp);
	}
}