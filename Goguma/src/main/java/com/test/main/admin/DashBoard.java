package com.test.main.admin;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/admin/dashboard.do")
public class DashBoard extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		//user_level != 2 면 접근 제한
		//TODO 테스트 안 해봄
		/*
		HttpSession session = req.getSession();
		if (!session.getAttribute("level").equals('2')) {
			PrintWriter writer = resp.getWriter();
			writer.println("<html><body><script>");
			writer.println("alert('관리자만 접근할 수 있습니다.'); history.back();");
			writer.println("</script></body></html>");
			writer.close();
		}
		*/
		
		RequestDispatcher dispatcher = req.getRequestDispatcher("/WEB-INF/views/admin/dashboard.jsp");
		dispatcher.forward(req, resp);
		
	}
}