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

import com.test.main.community.CommunityDTO;

@WebServlet("/message/inBoxDetail.do")
public class InBoxDetail extends HttpServlet {
	private MessageDAO dao;
	private MessageDTO dto;
	
	{
		dao = new MessageDAO();
	}
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		String seq = req.getParameter("message_seq");
		dto = dao.getInDetail(seq);
		
		req.setAttribute("dto", dto);
		RequestDispatcher dispatcher = req.getRequestDispatcher("/WEB-INF/views/message/inBoxDetail.jsp");
		dispatcher.forward(req, resp);
	}
}