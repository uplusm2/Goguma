package com.test.main.user;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/user/profileedit.do")
public class ProfileEdit extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		
		UserDAO dao  = new UserDAO();
		
		String id = req.getParameter("id");
		
		UserProfileDTO userProfileData = dao.getUserProfile(id);
		
		req.setAttribute("userProfileData", userProfileData);
		
		RequestDispatcher dispatcher = req.getRequestDispatcher("/WEB-INF/views/user/profileedit.jsp");
		dispatcher.forward(req, resp);
	}

}
