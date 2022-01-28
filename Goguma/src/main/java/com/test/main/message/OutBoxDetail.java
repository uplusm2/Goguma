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

import com.test.main.community.ComCommentDAO;
import com.test.main.community.CommunityDAO;
import com.test.main.community.CommunityDTO;

@WebServlet("/message/outBoxDetail.do")
public class OutBoxDetail extends HttpServlet {
	private MessageDAO dao;
	private MessageDTO dto;
	private Calendar now;
	
	{
		dao = new MessageDAO();
		now = Calendar.getInstance();
	}
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		String seq = req.getParameter("message_seq");
		dto = dao.getMessage(seq);
		refineData(dto);
		dto.setContent(dto.getContent().replace("\r\n", "<br>"));
		
		req.setAttribute("dto", dto);
		RequestDispatcher dispatcher = req.getRequestDispatcher("/WEB-INF/views/message/outBoxDetail.jsp");
		dispatcher.forward(req, resp);
	}
	
	private void refineData(MessageDTO dto) {
		String tmp = dto.getSendTime().replace("-", ".");
		dto.setSendTime(tmp.substring(2));
	}
}