package com.test.main.profile;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.HashMap;

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
		
		String id = (String) req.getSession().getAttribute("id");
		
		ProfileDAO dao = new ProfileDAO();
		HashMap<String,String> map = new HashMap<String,String>();
		map.put("id", id);
		
		/////////////////////////////////////////////////////////////////////////
		//페이징
		int nowPage = 0;		//현재 페이지 번호
		int totalCount = 0;
		int pageSize = 5;		//한페이지당 출력할 게시물 수
		int totalPage = 0;
		int begin = 0;			//where 시작 위치
		int end = 0;			//where 끝 위치
		int n = 0;
		int loop = 0;
		int blockSize = 10;
		
		//list.do > list.do?page=1
		//list.do?page=3
		
		String page = req.getParameter("page");
		
		if (page == null || page == "") nowPage = 1;
		else nowPage = Integer.parseInt(page);
		
		begin = ((nowPage - 1) * pageSize) + 1;
		end = begin + pageSize - 1;
		
		map.put("begin", begin + "");
		map.put("end", end + "");
		
		Calendar now = Calendar.getInstance();
		String strNow = String.format("%tF", now); //"2022-01-13"
		
		String pagebar="";
		
		ArrayList<ReviewDTO> list = dao.getSalesReviewList(map);
		req.setAttribute("list", list);
		for (ReviewDTO dto : list) {
			
			//날짜 자르기
			if (dto.getRegdate().startsWith(strNow)) {
				dto.setRegdate(dto.getRegdate().substring(11));
			} else {
				dto.setRegdate(dto.getRegdate().substring(0, 10));
			}
		}
		
		totalCount = dao.getSalesTotalPage(map);
		totalPage = (int)Math.ceil((double)totalCount / pageSize);
		
		n = ((nowPage - 1) / blockSize) * blockSize + 1; //페이지 번호
		
		pagebar += "<nav><ul class=\"pagination\">";
		
		if (n == 1) {
			pagebar += String.format("<li class='disabled'><a href='#!' aria-label='Previous'><span aria-hidden='true'>&laquo;</span></a></li>");
		} else {
			pagebar += String.format("<li><a href='/goguma/profile/purchaseReviewList.do?page=%d' aria-label='Previous'><span aria-hidden='true'>&laquo;</span></a></li>", n-1);
		}
		
		while (!(loop > blockSize || n > totalPage)) {
			
			if (n == nowPage) {
				pagebar += String.format("<li class='active'><a href='#!'>%d</a></li>", n);
			} else {
				pagebar += String.format("<li><a href='/goguma/profile/purchaseReviewList.do?page=%d'>%d</a></li>", n, n);
			}			
			
			loop++;
			n++;
		}
		
		if (n > totalPage) {
			pagebar += String.format("<li class='disabled'><a href='#!' aria-label='Next'><span aria-hidden='true'>&raquo;</span></a></li>");
		} else {
			pagebar += String.format("<li><a href='/goguma/profile/purchaseReviewList.do?page=%d' aria-label='Next'><span aria-hidden='true'>&raquo;</span></a></li>", n);
		}
		pagebar += "</ul></nav>";
		
		//2.
		req.setAttribute("list", list);
		req.setAttribute("map", map);
		
		req.setAttribute("pagebar", pagebar);
		req.setAttribute("nowPage", nowPage);
		
		RequestDispatcher dispatcher = req.getRequestDispatcher("/WEB-INF/views/profile/salesReviewList.jsp");
		dispatcher.forward(req, resp);
	}
}

