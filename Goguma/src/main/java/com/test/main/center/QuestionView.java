package com.test.main.center;

import java.io.IOException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/center/questionview.do")
public class QuestionView extends HttpServlet {
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		String seq = req.getParameter("seq");
		String page = req.getParameter("page");
		String id = (String) req.getSession().getAttribute("id"); 
		CenterDAO dao = new CenterDAO();
		
		CenterDTO dto = dao.questionGet(seq);
		CenterDTO reply = dao.replyGet(seq);
		
		
		
		req.setAttribute("dto", dto);
		req.setAttribute("id", id);
		req.setAttribute("reply", reply);
		
		req.setAttribute("page", page);
		
		
		
		RequestDispatcher dispatcher = req.getRequestDispatcher("/WEB-INF/views/center/questionview.jsp");
		dispatcher.forward(req, resp);

	}

}
