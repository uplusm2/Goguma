package com.test.main.message;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/message/messageForm.do")
public class MessageForm extends HttpServlet {
	private MessageDAO dao;
	private MessageDTO dto;
	
	private String receiver;
	private String sender;
	
	{
		dto = new MessageDTO();
	}

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		receiver = req.getParameter("receiver");
		sender = req.getParameter("sender");
		setDto();
		
		req.setAttribute("receiver", receiver);
		req.setAttribute("sender", sender);
		
		RequestDispatcher dispatcher = req.getRequestDispatcher("/WEB-INF/views/message/messageForm.jsp");
		dispatcher.forward(req, resp);
	}

	private void setDto() {
		dto.setReceiverNickname(receiver);
		dto.setSenderNickname(sender);
	}
}