package com.test.main.community;

import java.io.*;
import java.util.*;

import javax.servlet.*;
import javax.servlet.annotation.*;
import javax.servlet.http.*;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

@WebServlet("/community/communityAdd.do")
public class CommunityAdd extends HttpServlet {
	private CommunityDAO dao;
	private CommunityDTO dto;
	private HttpSession session;
	
	private String title;
	private String content;
	private String path;
	
	{
		dao = new CommunityDAO();
		dto = new CommunityDTO();
	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		req.setCharacterEncoding("UTF-8");
		
		setPath(req);
		setDto(req);
		
		String seq = dao.add(dto);
		
		req.setAttribute("dto", dto);
		req.setAttribute("seq", seq);
		RequestDispatcher dispatcher = req.getRequestDispatcher("/WEB-INF/views/community/communityAdd.jsp");
		dispatcher.forward(req, resp);
	}

	private void setPath(HttpServletRequest req) throws IOException {
		MultipartRequest  multi = new MultipartRequest(
						                req,
						                "C:\\Goguma\\Goguma\\src\\main\\webapp\\files\\community",
						                1024 * 1024 * 100,
						                "UTF-8",
						                new DefaultFileRenamePolicy()
						           );
		path = multi.getFilesystemName("pathDir");
		title = multi.getParameter("title");
		content = multi.getParameter("content");
	}

	private void setDto(HttpServletRequest req) {
		session = req.getSession();
		
		dto.setId(session.getAttribute("id").toString());
		dto.setTitle(title);
		dto.setContent(content);
		dto.setPath(path);
	}
}