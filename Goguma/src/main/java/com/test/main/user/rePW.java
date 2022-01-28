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

		System.out.println(id);
		
		UserDTO dto = new UserDTO();
		UserDAO dao = new UserDAO();
		
		dto.setName(name);
		dto.setEmail(email);
		dto.setId(id);
		dto.setPw(pw);
		
		System.out.println(dto.getId());
		System.out.println(dto.getPw());
		System.out.println(dto.getName());
		System.out.println(dto.getEmail());
		
		int result = dao.repw(dto);

		
		if (result != 1) {
			
			PrintWriter script = resp.getWriter();
			script.println("<script>");
			script.println("alert('ID or name or email be wrong')");
			script.println("history.back();");
			script.println("</script>");
			HttpSession session = req.getSession();
			
			session.invalidate();

		
		} else {
			
			resp.setCharacterEncoding("UTF-8");
			
			req.setAttribute("pw", pw);
			
			RequestDispatcher dispatcher = req.getRequestDispatcher("/WEB-INF/views/user/repwok.jsp");
			dispatcher.forward(req, resp);
			
		}
	}
	
}
