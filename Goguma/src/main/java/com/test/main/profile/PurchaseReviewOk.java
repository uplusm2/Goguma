package com.test.main.profile;

import java.io.IOException;
import java.util.HashMap;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/profile/purchasereviewok.do")
public class PurchaseReviewOk extends HttpServlet {

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		req.setCharacterEncoding("UTF-8");
		
		String deal_seq = req.getParameter("deal_seq");
		String content = req.getParameter("content");
		String score = req.getParameter("score");
		String type = "B";
		
		HashMap<String, String> map = new HashMap<String, String>();
		
		map.put("deal_seq", deal_seq);
		map.put("content", content);
		map.put("score", score);
		map.put("type", type);
		
		ProfileDAO dao = new ProfileDAO();
		
		int check = dao.setPurchaseReview(map);
		
		req.setAttribute("check", check);
		
		RequestDispatcher dispatcher = req.getRequestDispatcher("/WEB-INF/views/profile/purchasereviewok.jsp");
		dispatcher.forward(req, resp);
	}

}
