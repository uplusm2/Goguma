package com.test.main.admin;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/admin/connstatis.do")
public class ConnStatis extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		ConnDAO dao = new ConnDAO();
		
		ArrayList<ConnDTO> dailyList = dao.daliyList();
		ArrayList<ConnDTO> monthList = dao.monthList();
		ArrayList<ConnDTO> avgMonthList = dao.avgMonthList();
		
		req.setAttribute("daliyList", dailyList);
		req.setAttribute("monthList", monthList);
		req.setAttribute("avgMonthList", avgMonthList);

		RequestDispatcher dispatcher = req.getRequestDispatcher("/WEB-INF/views/admin/connstatis.jsp");
		dispatcher.forward(req, resp);

	}
}