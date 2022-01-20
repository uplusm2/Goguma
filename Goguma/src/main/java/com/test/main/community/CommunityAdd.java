package com.test.main.community;

import java.io.*;
import java.util.*;

import javax.servlet.*;
import javax.servlet.annotation.*;
import javax.servlet.http.*;

@WebServlet("/community/communityAdd.do")
public class CommunityAdd extends HttpServlet {
	private CommunityDAO dao;
	private CommunityDTO dto;
	
	private String title;
	private String content;
	
	{
		dao = new CommunityDAO();
		dto = new CommunityDTO();
	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		req.setCharacterEncoding("UTF-8");
		title = req.getParameter("title");
		content = req.getParameter("content");
		
		setDto();
		
		int result = dao.add(dto);
		
		req.setAttribute("result", result);
		System.out.println(dto.getTitle());
		RequestDispatcher dispatcher = req.getRequestDispatcher("/WEB-INF/views/community/communityAdd.jsp");
		dispatcher.forward(req, resp);
	}

	private void setDto() {
		dto.setId("user1");
		dto.setTitle(title);
		dto.setContent(content);
	}
}