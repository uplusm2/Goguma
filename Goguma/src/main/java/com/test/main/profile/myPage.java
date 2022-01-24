package com.test.main.profile;

import java.io.IOException;
import java.util.HashMap;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/profile/mypage.do")
public class myPage extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String id;
		if(req.getParameter("id")!=null) {
			HttpSession session = req.getSession();
			session.setAttribute("id", req.getParameter("id"));
			session.setMaxInactiveInterval(60*60);
			id = (String) session.getAttribute("id");			
		}else {
			id = (String) req.getSession().getAttribute("id");			
		}
		
		ProfileDAO dao  = new ProfileDAO();
		
		UserProfileDTO userProfileData = dao.getUserProfile(id);
		
		HashMap<String, Integer> map = new HashMap<String, Integer>();
		
		map = dao.getAvgScore(id);
		
		req.setAttribute("userProfileData", userProfileData);
		System.out.println(map.toString());

		String score = "<span style='color: gold;'>★</span>";
		String notScore = "<span style='color: #7777;'>★</span>";
		
		Math.round(map.get("salesAvg"));
		Math.round(map.get("purchaseAvg"));
		
		System.out.println(Math.round(map.get("salesAvg")/2.0) +""+ Math.round(map.get("purchaseAvg")/2.0)+""+ Math.round(13/2.0));

		RequestDispatcher dispatcher = req.getRequestDispatcher("/WEB-INF/views/profile/mypage.jsp");
		dispatcher.forward(req, resp);
	}

}
