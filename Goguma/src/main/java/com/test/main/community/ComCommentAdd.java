package com.test.main.community;

import java.io.*;
import java.util.*;

import javax.servlet.*;
import javax.servlet.annotation.*;
import javax.servlet.http.*;

@WebServlet("/community/commentAdd.do")
public class ComCommentAdd extends HttpServlet {
	private HttpSession session;
	private ComCommentDAO dao;
	private ComCommentDTO dto;
	
	{
		dao = new ComCommentDAO();
		dto = new ComCommentDTO();
	}
	

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		req.setCharacterEncoding("UTF-8");
		String content = req.getParameter("content");
		String seq = req.getParameter("seq");
		
		session = req.getSession();
		
		dto.setContent(content);
		dto.setId(session.getAttribute("id").toString());
		dto.setCseq(seq);
		
		int result = dao.add(dto);
		
		if (result == 1) {
			resp.sendRedirect("/goguma/community/communityDetail.do?seq=" + seq);
		}
	}
}