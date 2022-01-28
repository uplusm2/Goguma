package com.test.main.center;

import java.io.IOException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/center/faqaddok.do")
public class faqaddok extends HttpServlet {
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
	
		//1.
		req.setCharacterEncoding("UTF-8");
		
		//2.
		String subject = req.getParameter("subject");
		String content = req.getParameter("content");
		String type = req.getParameter("type");
		
		CenterDAO dao = new CenterDAO();
		
		CenterDTO dto = new CenterDTO();
		
		dto.setTitle(subject);
		dto.setContent(content);
		dto.setType(type);
		
		int result = dao.add(dto); //1, 0
		
		req.setAttribute("result", result);

		RequestDispatcher dispatcher = req.getRequestDispatcher("/WEB-INF/views/center/faqaddok.jsp");
		dispatcher.forward(req, resp);

	}

}
