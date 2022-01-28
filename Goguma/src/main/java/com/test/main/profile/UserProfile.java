package com.test.main.profile;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.test.main.user.UserDAO;

@WebServlet("/profile/userprofile.do")
public class UserProfile extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		ProfileDAO dao  = new ProfileDAO();
		
		String userId = req.getParameter("userId");
		
		if(req.getParameter("id")!=null) userId = req.getParameter("id");
		
		UserProfileDTO userProfileData = dao.getUserProfile(userId);
		
		req.setAttribute("userProfileData", userProfileData);

		RequestDispatcher dispatcher = req.getRequestDispatcher("/WEB-INF/views/profile/userprofile.jsp");
		dispatcher.forward(req, resp);
	}
}



