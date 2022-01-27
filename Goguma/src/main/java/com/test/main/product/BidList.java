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

import com.test.main.product.ProductDTO;
import com.test.main.product.ProductDAO;

@WebServlet("/product/bidList.do")
public class BidList extends HttpServlet {


	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		
		ProductDAO dao = new ProductDAO();
		String seq = req.getParameter("seq");
		ProductDTO dto = dao.getProduct(seq);
		String product_seq = dto.getSeq();
		
		ArrayList<BidDTO> bidlist = dao.bidlist(product_seq);
		
	
		
		
		
		req.setAttribute("dto", dto);
		
		
		req.setAttribute("bidlist", bidlist);

		
		
		
		
		RequestDispatcher dispatcher = req.getRequestDispatcher("/WEB-INF/views/product/bidList.jsp");
		dispatcher.forward(req, resp);
	}
}
