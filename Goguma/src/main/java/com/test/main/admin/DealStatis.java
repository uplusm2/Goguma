package com.test.main.admin;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/admin/dealstatis.do")
public class DealStatis extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		DealDAO dao = new DealDAO();
		
		ArrayList<DealDTO> totalList = dao.totalList(); 
		
		req.setAttribute("totalList", totalList);
		
		for(DealDTO dto :totalList) {
			dto.setAmount(dto.getAmount()/10000);
		}
		
		RequestDispatcher dispatcher = req.getRequestDispatcher("/WEB-INF/views/admin/dealstatis.jsp");
		dispatcher.forward(req, resp);

	}
}