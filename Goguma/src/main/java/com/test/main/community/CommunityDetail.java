package com.test.main.community;

import java.io.*;
import java.util.*;

import javax.servlet.*;
import javax.servlet.annotation.*;
import javax.servlet.http.*;

@WebServlet("/community/communityDetail.do")
public class CommunityDetail extends HttpServlet {
	private CommunityDAO dao;
	private CommunityDTO dto;
	
	{
		dao = new CommunityDAO();
	}

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		String seq = req.getParameter("seq");
		String page = req.getParameter("page");
		
		dto = dao.get(seq);
		refineDate(dto);
		
		req.setAttribute("dto", dto);
		req.setAttribute("page", page);
		
		RequestDispatcher dispatcher = req.getRequestDispatcher("/WEB-INF/views/community/communityDetail.jsp");
		dispatcher.forward(req, resp);
	}

	private void refineDate(CommunityDTO dto) {
		String tmp = dto.getRegDate().substring(0, 16).replace("-", ".");
		dto.setRegDate(tmp.substring(2));
	}
}