package com.test.main.profile;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/profile/purchasereview.do")
public class PurchaseReview extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String selId = req.getParameter("selid");
		String deal_seq = req.getParameter("deal_seq");
		req.setAttribute("selId", selId);
		req.setAttribute("deal_seq", deal_seq);
		RequestDispatcher dispatcher = req.getRequestDispatcher("/WEB-INF/views/profile/purchasereview.jsp");
		dispatcher.forward(req, resp);
	}

}
