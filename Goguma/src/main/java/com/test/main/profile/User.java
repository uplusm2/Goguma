package com.test.main.profile;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/profile/user.do")
public class User extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		String userId = req.getParameter("userId");
		req.setAttribute("userId", userId);
		
		// 로그인시 테스트용
		String id;
		try {
			HttpSession session = req.getSession();
			session.setAttribute("id", req.getParameter("id"));
			session.setMaxInactiveInterval(60*60);
			id = (String) session.getAttribute("id");
		}catch(NullPointerException e) {
			id = "";
		}
		// 로그인시 테스트용
		
		if(id==null) id="";
		if(userId==null) userId="";
		
		if(id.equals(userId) || (!id.equals("") && userId.equals(""))) { // 본인
			RequestDispatcher dispatcher = req.getRequestDispatcher("/WEB-INF/views/profile/myPage.jsp");
			dispatcher.forward(req, resp);
		}else {
			RequestDispatcher dispatcher = req.getRequestDispatcher("/WEB-INF/views/profile/user.jsp");
			dispatcher.forward(req, resp);			
		}
		
		
	}

}
