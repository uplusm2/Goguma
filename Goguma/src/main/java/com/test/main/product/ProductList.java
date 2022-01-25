package com.test.main.product;
import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.test.main.product.ProductDAO;

@WebServlet("/product/productList.do")
public class ProductList extends HttpServlet {


	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		ProductDAO dao = new ProductDAO();
		HashMap<String,String> map = new HashMap<String,String>();
		ArrayList<ProductDTO> list = dao.list(map);
		
		req.setAttribute("list", list);
		req.setAttribute("map", map);
		
		
		
		RequestDispatcher dispatcher = req.getRequestDispatcher("/WEB-INF/views/product/productList.jsp");
		dispatcher.forward(req, resp);
	}
}
