package com.test.main.admin;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.Stack;

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

		HttpSession session = req.getSession();

		//관리자만 접근 가능
		
		/*
		if(session==null || !req.isRequestedSessionIdValid()) {
			PrintWriter writer = resp.getWriter();
			writer.println("<html><body><script>");
			writer.println("alert('Page accessible by admin only'); location.href = '/goguma/main.do';");
			writer.println("</script></body></html>");
			writer.close();
		} 
		*/
		
		ConnDAO dao = new ConnDAO();
		
		ArrayList<ConnDTO> list = dao.MonthList();
		ArrayList<ConnDTO> avgList = dao.avgMonthList();
		ArrayList<ConnDTO> daliyList = dao.daliyList();
		
		req.setAttribute("list", list);
		req.setAttribute("avglist", avgList);
		req.setAttribute("daliyList", daliyList);
		
		RequestDispatcher dispatcher = req.getRequestDispatcher("/WEB-INF/views/admin/dashboard.jsp");
		dispatcher.forward(req, resp);
		
	}
}