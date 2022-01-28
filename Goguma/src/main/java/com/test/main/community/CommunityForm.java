package com.test.main.community;

import java.io.*;
import java.util.*;

import javax.servlet.*;
import javax.servlet.annotation.*;
import javax.servlet.http.*;

@WebServlet("/community/communityForm.do")
public class CommunityForm extends HttpServlet {
	private CommunityDAO dao;
	private CommunityDTO dto;
	
	{
		dao = new CommunityDAO();
	}

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		String seq = req.getParameter("seq");
		dto = dao.get(seq);
		
		req.setAttribute("dto", dto);
		RequestDispatcher dispatcher = req.getRequestDispatcher("/WEB-INF/views/community/communityForm.jsp");
		dispatcher.forward(req, resp);
	}
}