package com.test.main.user;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/user/loginok.do")
public class LoginOk extends HttpServlet {

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		

		
		//1.
		String id = req.getParameter("id");
		String pw = req.getParameter("pw");
		
		//2.
		UserDAO dao = new UserDAO();
		

		
		UserDTO dto = new UserDTO();
		dto.setId(id);
		dto.setPw(pw);
		
		UserDTO result = dao.login(dto);
		
		if (result != null) {
			
			
			HttpSession session = req.getSession();
			
			session.setAttribute("id", result.getId()); 
			session.setAttribute("name", result.getName());
			session.setAttribute("lv", result.getLv());
						
		}

		RequestDispatcher dispatcher = req.getRequestDispatcher("/WEB-INF/views/user/loginok.jsp");
		dispatcher.forward(req, resp);
	}

}




