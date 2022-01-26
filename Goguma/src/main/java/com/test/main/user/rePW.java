package com.test.main.user;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/user/repw.do")
public class rePW extends HttpServlet {

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		
		req.setCharacterEncoding("utf-8");

		String id = req.getParameter("id");
		String email = req.getParameter("email");
		String name = req.getParameter("name");
		String pw = req.getParameter("pw");

		
		UserDTO dto = new UserDTO();
		UserDAO dao = new UserDAO();
		
		dto.setName(name);
		dto.setEmail(email);
		dto.setId(id);
		dto.setName(pw);
		
		UserDTO result = dao.repw(dto);

		
		if (result != null) {
			
			RequestDispatcher dispatcher = req.getRequestDispatcher("/WEB-INF/views/user/repwok.jsp");
			dispatcher.forward(req, resp);
		
		} else {
			
			PrintWriter script = resp.getWriter();
			script.println("<script>");
			script.println("alert('ID or name or email be wrong')");
			script.println("history.back();");
			script.println("</script>");
			
		}
	}
	
}
