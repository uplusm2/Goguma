package com.test.main.community;

import java.io.*;
import java.util.*;

import javax.servlet.*;
import javax.servlet.annotation.*;
import javax.servlet.http.*;

@WebServlet("/community/commentDel.do")
public class ComCommentDel extends HttpServlet {
	private HttpSession session;
	private ComCommentDAO dao;
	private ComCommentDTO dto;
	
	{
		dao = new ComCommentDAO();
		dto = new ComCommentDTO();
	}
	

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		String seq = req.getParameter("seq");
		String commentSeq = req.getParameter("commentSeq");
		
		int result = dao.del(commentSeq);
		
		if (result == 1) {
			resp.sendRedirect("/goguma/community/communityDetail.do?seq=" + seq);
		}
	}
}