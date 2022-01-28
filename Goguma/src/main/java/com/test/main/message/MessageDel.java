package com.test.main.message;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/message/messageDel.do")
public class MessageDel extends HttpServlet {
	private MessageDTO dto;
	private MessageDAO dao;
	
	private HttpSession session;
	
	{
		dto = new MessageDTO();
		dao = new MessageDAO();
	}

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		String seq = req.getParameter("seq");

		int result = dao.del(seq);
		
		req.setAttribute("result", result);
		
		RequestDispatcher dispatcher = req.getRequestDispatcher("/WEB-INF/views/message/messageDel.jsp");
		dispatcher.forward(req, resp);
	}
}
