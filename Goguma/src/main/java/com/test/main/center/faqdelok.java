package com.test.main.center;

import java.io.IOException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/center/faqdelok.do")
public class faqdelok extends HttpServlet {
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		
		String seq = req.getParameter("seq");
		
		CenterDAO dao = new CenterDAO();
		
		int result = dao.del(seq); //1,0
		
		req.setAttribute("result", result);
		
		RequestDispatcher dispatcher = req.getRequestDispatcher("/WEB-INF/views/center/faqdelok.jsp");
		dispatcher.forward(req, resp);

	}

}
