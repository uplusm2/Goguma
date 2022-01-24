package com.test.main.community;

import java.io.*;
import java.util.*;

import javax.servlet.*;
import javax.servlet.annotation.*;
import javax.servlet.http.*;

@WebServlet("/community/communityDel.do")
public class CommunityDel extends HttpServlet {
	private CommunityDAO dao;
	private CommunityDTO dto;
	private HttpSession session;
	
	{
		dao = new CommunityDAO();
		dto = new CommunityDTO();
	}

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		String seq = req.getParameter("seq");
		
		int result = dao.del(seq);
		req.setAttribute("result", result);
		
		RequestDispatcher dispatcher = req.getRequestDispatcher("/WEB-INF/views/community/communityDel.jsp");
		dispatcher.forward(req, resp);
	}

}