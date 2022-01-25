package com.test.main.profile;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/profile/profileeditok.do")
public class PurchaseReviewOk extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String deal_seq = req.getParameter("deal_seq");
		String content = req.getParameter("content");
		
		System.out.println(deal_seq);
		System.out.println(content);
		
		
		RequestDispatcher dispatcher = req.getRequestDispatcher("/WEB-INF/views/profile/profileeditok.jsp");
		dispatcher.forward(req, resp);
	}

}
