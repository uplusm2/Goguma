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
	private ComCommentDAO commentDao;
	private ArrayList<ComCommentDTO> commentList;
	
	{
		dao = new CommunityDAO();
		commentDao = new ComCommentDAO();
	}

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		String seq = req.getParameter("seq");
		String page = req.getParameter("page");
		
		dao.addReadCount(seq);
		dto = dao.get(seq);
		commentList = commentDao.list(seq); 
		refineDate(dto);
		
		req.setAttribute("dto", dto);
		req.setAttribute("commentList", commentList);
		req.setAttribute("page", page);
		RequestDispatcher dispatcher = req.getRequestDispatcher("/WEB-INF/views/community/communityDetail.jsp");
		dispatcher.forward(req, resp);
	}

	private void refineDate(CommunityDTO dto) {
		String tmp = dto.getRegDate().substring(0, 16).replace("-", ".");
		dto.setRegDate(tmp.substring(2));
	}
}