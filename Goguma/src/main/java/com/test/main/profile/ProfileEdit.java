package com.test.main.profile;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.test.main.user.UserDAO;

@WebServlet("/profile/profileedit.do")
public class ProfileEdit extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		
		ProfileDAO dao  = new ProfileDAO();
		
		
		String id = (String)req.getSession().getAttribute("id");
		
		UserProfileDTO userProfileData = dao.getUserProfile(id);
		
		req.setAttribute("userProfileData", userProfileData);
		
		RequestDispatcher dispatcher = req.getRequestDispatcher("/WEB-INF/views/profile/profileedit.jsp");
		dispatcher.forward(req, resp);
	}

}
