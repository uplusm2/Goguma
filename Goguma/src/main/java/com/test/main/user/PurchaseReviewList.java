package com.test.main.user;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/user/purchaseReviewList.do")
public class PurchaseReviewList extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// 판매 후기
		// id 를 상품하고 비교한뒤 거래와 조인 이후 후기 조인
		// vwReceived_buyer_reviews
		// buyid 와 userid를 매칭하면 user가 물건 구매후 판매자에게 받은 후기를 확인할 수 있음.
		
		String userId = req.getParameter("userId");
		
		UserDAO dao = new UserDAO();
		
		ArrayList<ReviewDTO> list = dao.getPurchaseReviewList(userId);
		req.setAttribute("list", list);

		RequestDispatcher dispatcher = req.getRequestDispatcher("/WEB-INF/views/user/purchaseReviewList.jsp");
		dispatcher.forward(req, resp);
	}
}




