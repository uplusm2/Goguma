package com.test.main.admin;

import java.io.IOException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/admin/viewuser.do")
public class ViewUser extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		String id = req.getParameter("id");
		
		UserDAO dao = new UserDAO();
		UserDTO dto = new UserDTO();
		
		dto = dao.getUser(id);
		
		String tel = dto.getTel();
		dto.setTel(tel.substring(0, 3) + '-' + tel.substring(3, 7) + '-' + tel.substring(7));
		
		dto.setSince(dto.getSince().substring(0, 10));		
		dto.setBirth(dto.getBirth().substring(0, 10));	
		
		if(Double.parseDouble(dto.getScore()) < 0) {
			dto.setScore("평가없음");
		}
		
		req.setAttribute("dto", dto);
		
		RequestDispatcher dispatcher = req.getRequestDispatcher("/WEB-INF/views/admin/viewuser.jsp");
		dispatcher.forward(req, resp);

	}
}
