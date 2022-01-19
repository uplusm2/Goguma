package com.test.main.center;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/center/faq.do")
public class faq extends HttpServlet {
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		DAO dao = new DAO();
		
		ArrayList<DTO> dto =  dao.faqlist();
		
		RequestDispatcher dispatcher = req.getRequestDispatcher("/WEB-INF/views/center/faq.jsp");
		dispatcher.forward(req, resp);

	}

}
