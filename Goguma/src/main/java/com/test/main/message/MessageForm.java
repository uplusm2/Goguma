package com.test.main.message;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.test.main.admin.UserDAO;
import com.test.main.admin.UserDTO;

@WebServlet("/message/messageForm.do")
public class MessageForm extends HttpServlet {
	private UserDAO dao;
	private UserDTO dto;
	
	private String receiver;
	
	{
		dao = new UserDAO();
	}

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		receiver = req.getParameter("receiver");

		dto = dao.getUser(receiver);
		
		req.setAttribute("dto", dto);
		
		RequestDispatcher dispatcher = req.getRequestDispatcher("/WEB-INF/views/message/messageForm.jsp");
		dispatcher.forward(req, resp);
	}

}