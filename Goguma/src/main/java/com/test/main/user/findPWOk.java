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

@WebServlet("/user/findpwok.do")
public class findPWOk extends HttpServlet {

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		
		req.setCharacterEncoding("utf-8");

		String name = req.getParameter("name");
		String email = req.getParameter("email");
		String id = req.getParameter("id");
		
		UserDTO dto = new UserDTO();
		UserDAO dao = new UserDAO();
		
		dto.setName(name);
		dto.setEmail(email);
		dto.setId(id);
		
		UserDTO result = dao.findpw(dto);
		
		System.out.println(name);
		System.out.println(email);
		System.out.println(id);
		
		if (result != null) {
			
			
			resp.setCharacterEncoding("UTF-8");
			
			req.setAttribute("name", name);
			req.setAttribute("email", email);
			req.setAttribute("id", id);
			
			ServletContext context = getServletContext();
			RequestDispatcher dispatcher = req.getRequestDispatcher("/WEB-INF/views/user/findpwok.jsp");
			dispatcher.forward(req, resp);
		
		} else {
			
			PrintWriter script = resp.getWriter();
			script.println("<script>");
			script.println("alert('ID or name or email be wrong')");
			script.println("history.back();");
			script.println("</script>");
			
			HttpSession session = req.getSession();
			
			session.invalidate();
			
		}
	}
	
}
