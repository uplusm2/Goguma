package com.test.main.profile;

import java.io.IOException;

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
		if((String) req.getSession().getAttribute("id")==null) {
			HttpSession session = req.getSession();
			session.setAttribute("id", req.getParameter("id"));
			session.setMaxInactiveInterval(60*60);
			id = (String) session.getAttribute("id");			
		}else {
			id = (String) req.getSession().getAttribute("id");			
		}
		
		ProfileDAO dao  = new ProfileDAO();
		
		UserProfileDTO userProfileData = dao.getUserProfile(id);
		
		req.setAttribute("userProfileData", userProfileData);

		RequestDispatcher dispatcher = req.getRequestDispatcher("/WEB-INF/views/profile/mypage.jsp");
		dispatcher.forward(req, resp);
	}

}
