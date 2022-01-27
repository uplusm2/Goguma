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

@WebServlet("/product/productSellok.do")
public class ProductSellok extends HttpServlet {


	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		ProductDAO dao = new ProductDAO();
		String seq = req.getParameter("seq");
		ProductDTO dto = dao.getProduct(seq);
		ProductDealDTO ddto = new ProductDealDTO();
		BidDTO bdto = new BidDTO();
		
		HttpSession session = req.getSession();
		String bid_seq = req.getParameter("bid_seq");

		
		bdto = dao.getbid(bid_seq);
		
		ddto.setId(bdto.getId());
		ddto.setProduct_seq(bdto.getProduct_seq());
		ddto.setPrice(bdto.getPrice());
		
		dao.dealadd(ddto);
		
		dao.editIs_completion(seq);
		
		req.setAttribute("dto", dto);
		
		RequestDispatcher dispatcher = req.getRequestDispatcher("/WEB-INF/views/product/productSellok.jsp");
		dispatcher.forward(req, resp);
	}
}
