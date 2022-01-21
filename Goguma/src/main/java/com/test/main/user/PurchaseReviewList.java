package com.test.main.user;

import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;

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
		// 페이징 기능 
		// 총 페이지 
		// 한 페이지당 데이터 
		// 현재 페이지
		// 선택 페이지
		// 페이지 표시 갯수
		//페이징 ajax를 이용할꺼면 request를 이용해서 같은 페이지에서 도달시 dispatcher를 제외해 줘야됨.
		int nowPage = 0;		//현재 페이지 번호
		int totalCount = 0;
		int pageSize = 10;		//한페이지당 출력할 게시물 수
		int totalPage = 0;
		int begin = 0;			//where 시작 위치
		int end = 0;			//where 끝 위치
		int n = 0;
		int loop = 0;
		int blockSize = 10;
		
		HashMap map = new HashMap();
		totalPage = dao.getTotalPage(userId);
		

		RequestDispatcher dispatcher = req.getRequestDispatcher("/WEB-INF/views/user/purchaseReviewList.jsp");
		dispatcher.forward(req, resp);
	}
}




