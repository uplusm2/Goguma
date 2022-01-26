package com.test.main.product;
import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.test.main.message.MessageDAO;
import com.test.main.message.MessageDTO;

@WebServlet("/product/productDetail.do")
public class ProductDetail extends HttpServlet {


	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		ProductDAO dao = new ProductDAO();
		String seq;
		seq = req.getParameter("seq");
		ProductDTO dto = dao.getProduct(seq);
		req.setAttribute("dto", dto);
		ProductAddressDTO adto = dao.getAddressName(dto);
		req.setAttribute("adto", adto);
		ProductTypeDTO tdto = dao.getProductType(dto);
		req.setAttribute("tdto", tdto);
		
		RequestDispatcher dispatcher = req.getRequestDispatcher("/WEB-INF/views/product/productDetail.jsp");
		dispatcher.forward(req, resp);
	}
}
