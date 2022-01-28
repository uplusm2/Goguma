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
		
		System.out.println(dto.toString());
		dto.setTel(dto.getTel().substring(0,3)+"-"+dto.getTel().substring(3,7)+"-"+dto.getTel().substring(7));
		dto.setBirth(dto.getBirth().replaceAll("-", ""));
		dto.setBirth(dto.getBirth().substring(0,4)+"년"+dto.getBirth().substring(4,6)+"월"+dto.getBirth().substring(6)+"일");
		req.setAttribute("dto", dto);
		
		RequestDispatcher dispatcher = req.getRequestDispatcher("/WEB-INF/views/profile/memberdata.jsp");
		dispatcher.forward(req, resp);
	}

}
