package com.test.main.center;

import java.io.IOException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/center/questionaddok.do")
public class QuestionAddOk extends HttpServlet {
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		req.setCharacterEncoding("UTF-8");
		
		CenterDAO dao = new CenterDAO();
		
		CenterDTO dto = new CenterDTO();
		
		
		String title = req.getParameter("subject");
		String content = req.getParameter("content");
		String user = "user1";
		String type= req.getParameter("type");
		
		dto.setTitle(title);
		dto.setContent(content);
		dto.setUser(user);
		dto.setType(type);
		
		int result = dao.questionadd(dto);	
		
		
		req.setAttribute("result", result);
		
		RequestDispatcher dispatcher = req.getRequestDispatcher("/WEB-INF/views/center/questionaddok.jsp");
		dispatcher.forward(req, resp);

	}

}
