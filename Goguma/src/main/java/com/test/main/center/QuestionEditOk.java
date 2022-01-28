package com.test.main.center;

import java.io.IOException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/center/questioneditok.do")
public class QuestionEditOk extends HttpServlet {
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		
		req.setCharacterEncoding("UTF-8");
		
		CenterDAO dao = new CenterDAO();
		CenterDTO dto = new CenterDTO();
		
		String seq = req.getParameter("seq");
		String title = req.getParameter("subject");
		System.out.println(title);
		String content = req.getParameter("content");
		String type = req.getParameter("type");
		
		dto.setSeq(seq);
		dto.setTitle(title);
		dto.setContent(content);
		dto.setType(type);
		
		int result = dao.questionedit(dto);
		
		
		
		req.setAttribute("result", result);
		req.setAttribute("seq", seq);
		
		RequestDispatcher dispatcher = req.getRequestDispatcher("/WEB-INF/views/center/questioneditok.jsp");
		dispatcher.forward(req, resp);

	}

}