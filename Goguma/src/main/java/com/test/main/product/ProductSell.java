package com.test.main.product;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.HashMap;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/product/productSell.do")
public class ProductSell extends HttpServlet {


	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		ProductDAO dao = new ProductDAO();
		String seq = req.getParameter("seq");
		ProductDTO dto = dao.getProduct(seq);

		
		ArrayList<BidDTO> bidlist = dao.bidlist(seq);
		
	
		
		
		
		req.setAttribute("dto", dto);
		
		
		req.setAttribute("bidlist", bidlist);

		
		RequestDispatcher dispatcher = req.getRequestDispatcher("/WEB-INF/views/product/productSell.jsp");
		dispatcher.forward(req, resp);
	}
}
