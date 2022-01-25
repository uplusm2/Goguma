package com.test.main.message;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Calendar;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.test.main.community.CommunityDTO;

@WebServlet("/message/inBoxDetail.do")
public class InBoxDetail extends HttpServlet {
	private MessageDAO dao;
	private MessageDTO dto;
	private Calendar now;
	private HttpSession session;
	
	{
		dao = new MessageDAO();
		now = Calendar.getInstance();
	}
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		session = req.getSession();
		String seq = req.getParameter("message_seq");
		String id = session.getAttribute("id").toString();
		
		dao.check(seq);
		dto = dao.getMessage(seq);
		refineData(dto);
		dto.setContent(dto.getContent().replace("\r\n", "<br>"));
		
		int newMessage = dao.getNewMessage(id);
		
		req.setAttribute("dto", dto);
		session.setAttribute("newMessage", newMessage);
		
		RequestDispatcher dispatcher = req.getRequestDispatcher("/WEB-INF/views/message/inBoxDetail.jsp");
		dispatcher.forward(req, resp);
	}
	
	private void refineData(MessageDTO dto) {
		String tmp = dto.getSendTime().replace("-", ".");
		dto.setSendTime(tmp.substring(2));
	}
}