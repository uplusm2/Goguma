package com.test.main.community;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Calendar;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/community/communityList.do")
public class CommunityList extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		CommunityDAO dao = new CommunityDAO();
		ArrayList<CommunityDTO> list = dao.list();
		
		Calendar now = Calendar.getInstance();
		String strNow = String.format("%tF", now);
		
		for (CommunityDTO dto : list) {
			
			if (dto.getRegDate().startsWith(strNow)) {
				dto.setRegDate(dto.getRegDate().substring(11));
			} else {
				dto.setRegDate(dto.getRegDate().substring(0, 10));
			}
			
			if (dto.getTitle().length() > 20) {
				dto.setTitle(dto.getTitle().substring(0, 20) + "..");
			}
			
			
			//제목에서 검색 중 > 검색어 강조!!
//			if (searchmode.equals("y") && column.equals("subject")) {
//				
//				//안녕하세요. 홍길동입니다.
//				//안녕하세요. <span style="">홍길동</span>입니다.
//				dto.setSubject(dto.getSubject().replace(word, "<span style='background-color:yellow;color:tomato;'>" + word + "</span>"));
//			}
			
		}
	
		req.setAttribute("list", list);
		
		RequestDispatcher dispatcher = req.getRequestDispatcher("/WEB-INF/views/community/communityList.jsp");
		dispatcher.forward(req, resp);
	}
}