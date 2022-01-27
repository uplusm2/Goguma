package com.test.main.product;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.HashMap;

import javax.security.auth.message.callback.PrivateKeyCallback.Request;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/product/bidaddok.do")
public class Bidaddok extends HttpServlet {


	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		ProductDAO dao = new ProductDAO();
		String seq = req.getParameter("seq");
		ProductDTO dto = dao.getProduct(seq);
		BidDTO bdto = new BidDTO();
		
		
		HttpSession session = req.getSession();
		String price = req.getParameter("price");
		
		bdto.setId(session.getAttribute("id").toString());
		bdto.setProduct_seq(seq);
		bdto.setPrice(price);
		
		dao.bidadd(bdto);
		
		req.setAttribute("dto", dto);
		
		RequestDispatcher dispatcher = req.getRequestDispatcher("/WEB-INF/views/product/bidaddok.jsp");
		dispatcher.forward(req, resp);
	}
}

