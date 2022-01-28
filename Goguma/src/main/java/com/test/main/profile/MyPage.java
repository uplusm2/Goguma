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
public class MyPage extends HttpServlet {

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
		
		String userId = req.getParameter("userId");
		
		if(userId != null) {
			req.setAttribute("userId", userId);
			UserProfileDTO userProfileData = dao.getUserProfile(userId);
			req.setAttribute("userProfileData", userProfileData);
			
			HashMap<String, Integer> map = new HashMap<String, Integer>();
			
			map = dao.getAvgScore(userId);
			map.put("salesAvg",Math.round(map.get("salesAvg")/2));
			map.put("purchaseAvg",Math.round(map.get("purchaseAvg")/2));
			
			req.setAttribute("score", map);
			RequestDispatcher dispatcher = req.getRequestDispatcher("/WEB-INF/views/profile/user.jsp");
			dispatcher.forward(req, resp);
		}else {
			req.setAttribute("id", id);
			UserProfileDTO userProfileData = dao.getUserProfile(id);			
			req.setAttribute("userProfileData", userProfileData);
			
			HashMap<String, Integer> map = new HashMap<String, Integer>();
			
			map = dao.getAvgScore(id);
			map.put("salesAvg",Math.round(map.get("salesAvg")/2));
			map.put("purchaseAvg",Math.round(map.get("purchaseAvg")/2));
			
			req.setAttribute("score", map);
			RequestDispatcher dispatcher = req.getRequestDispatcher("/WEB-INF/views/profile/mypage.jsp");
			dispatcher.forward(req, resp);
		}		

	}

}
