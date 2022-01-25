package com.test.main.profile;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.test.main.user.UserDTO;

@WebServlet("/profile/memberdata.do")
public class MemberData extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		String id = (String)req.getSession().getAttribute("id");
		
		UserDTO dto = new UserDTO();
		
		ProfileDAO dao = new ProfileDAO();
		
		dto = dao.getAllUserData(id);
		
		req.setAttribute("dto", dto);
		
		RequestDispatcher dispatcher = req.getRequestDispatcher("/WEB-INF/views/profile/memberdata.jsp");
		dispatcher.forward(req, resp);
	}

}
