package com.test.main.center;

import java.io.IOException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/center/replyeditok.do")
public class ReplyEditOk extends HttpServlet {
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		req.setCharacterEncoding("UTF-8");
		
		String seq = req.getParameter("seq");
		String content = req.getParameter("content");
		
		CenterDAO dao = new CenterDAO();
		CenterDTO dto = new CenterDTO();
		
		
		
		dto.setSeq(seq);
		dto.setContent(content);
		
		
		
		int result = dao.replyedit(dto);
		
		req.setAttribute("result", result);
		req.setAttribute("seq", seq);
		
		RequestDispatcher dispatcher = req.getRequestDispatcher("/WEB-INF/views/center/replyeditok.jsp");
		dispatcher.forward(req, resp);

	}

}
