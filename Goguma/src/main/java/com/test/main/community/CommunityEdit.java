package com.test.main.community;

import java.io.*;
import java.util.*;

import javax.servlet.*;
import javax.servlet.annotation.*;
import javax.servlet.http.*;

@WebServlet("/community/communityEdit.do")
public class CommunityEdit extends HttpServlet {
	private CommunityDAO dao;
	private CommunityDTO dto;
	
	private String title;
	private String content;
	private String seq;
	
	{
		dao = new CommunityDAO();
		dto = new CommunityDTO();
	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		req.setCharacterEncoding("UTF-8");
		title = req.getParameter("title");
		content = req.getParameter("content");
		seq = req.getParameter("seq");
		setDto();
		
		int result = dao.edit(dto);
		
		System.out.println(dto.getTitle());
		System.out.println(result);
		req.setAttribute("dto", dto);
		req.setAttribute("result", result);
		RequestDispatcher dispatcher = req.getRequestDispatcher("/WEB-INF/views/community/communityEdit.jsp");
		dispatcher.forward(req, resp);
	}

	private void setDto() {
		dto.setSeq(seq);
		dto.setTitle(title);
		dto.setContent(content);
	}
}