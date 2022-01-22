package com.test.main.admin;

import java.io.IOException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/admin/blockok.do")
public class BlockOk extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		String id = req.getParameter(getServletName())
		
		RequestDispatcher dispatcher = req.getRequestDispatcher("/WEB-INF/views/admin/blockok.jsp");
		dispatcher.forward(req, resp);

	}
}
