package com.test.main.profile;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/profile/purchaserecord.do")
public class PurchaseRecord extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		ProfileDAO dao = new ProfileDAO();
		String id = req.getParameter("id");
		
		ArrayList<TransactionRecordDTO> list = new ArrayList<TransactionRecordDTO>();
		
		list = dao.getPurchaseRecord(id);
		for(TransactionRecordDTO dto : list) {
			System.out.println(String.format("%tF", dto.getRegdate()));
		}
		req.setAttribute("list", list);
		
		RequestDispatcher dispatcher = req.getRequestDispatcher("/WEB-INF/views/profile/purchaserecord.jsp");
		dispatcher.forward(req, resp);
	}

}