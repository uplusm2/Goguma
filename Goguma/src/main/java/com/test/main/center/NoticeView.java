package com.test.main.center;

import java.io.IOException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/center/noticeview.do")
public class NoticeView extends HttpServlet {
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		String seq = req.getParameter("seq");
		String page = req.getParameter("page");
		
		CenterDAO dao = new CenterDAO();
		
		CenterDTO dto = dao.noticeGet(seq);
		
		
		req.setAttribute("dto", dto);
		req.setAttribute("page", page);
		
		
		RequestDispatcher dispatcher = req.getRequestDispatcher("/WEB-INF/views/center/noticeview.jsp");
		dispatcher.forward(req, resp);

	}

}