package com.test.main.center;

import java.io.IOException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/center/replyedit.do")
public class ReplyEdit extends HttpServlet {
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		

		String seq = req.getParameter("seq");
		
		CenterDAO dao = new CenterDAO();
		
		
		CenterDTO pdto = dao.questionGet(seq);
		CenterDTO dto = dao.replyGet(seq);
		
		
		req.setAttribute("dto", dto);
		req.setAttribute("pdto", pdto);
		
		
		RequestDispatcher dispatcher = req.getRequestDispatcher("/WEB-INF/views/center/replyedit.jsp");
		dispatcher.forward(req, resp);

	}

}
