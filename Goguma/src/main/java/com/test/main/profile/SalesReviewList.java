package com.test.main.profile;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.test.main.user.UserDAO;

@WebServlet("/profile/salesReviewList.do")
public class SalesReviewList extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// 구매 후기
		// id 를 거래하고 비교한뒤 상품과 조인 이후 후기 조인
		// vwReceived_seller_reviews
		// selid와 userid랑 매칭하면 user가 물건 판매 후 구매자에게 받은 후기를 확인할 수 있음.
		
		String userId = req.getParameter("userId");
		
		ProfileDAO dao = new ProfileDAO();
		
		ArrayList<ReviewDTO> list = dao.getSalesReviewList(userId);
		req.setAttribute("list", list);
		
		RequestDispatcher dispatcher = req.getRequestDispatcher("/WEB-INF/views/profile/salesReviewList.jsp");
		dispatcher.forward(req, resp);
	}
}

