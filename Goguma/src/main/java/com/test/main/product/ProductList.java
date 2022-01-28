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

@WebServlet("/product/productList.do")
public class ProductList extends HttpServlet {


	private ProductDAO dao;
	private ArrayList<ProductDTO> list;
	private HashMap<String, String> map;
	private Calendar now;

	private String column;
	private String word;
	private String searchmode;
	private int pageSize;
	private int nowPage;
	private int totalPage;
	private String is_auction;
	private String is_auction_ck;	
	private String address_seq;
	private String address_seq_ck;
	private String product_type_seq;
	private String product_type_seq_ck;

	
	{
		dao = new ProductDAO();
		map = new HashMap<String,String>();
		now = Calendar.getInstance();
		
		searchmode = "n";
		pageSize = 20;
	}

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		setSearchmode(req);
		setPage(req);
		list = dao.productlist(map);
		ellipsis(list);
		ArrayList<ProductAddressDTO> addresslist = dao.addresslist();
		ArrayList<ProductTypeDTO> categorylist = dao.categorylist();

		req.setAttribute("addresslist", addresslist);
		req.setAttribute("categorylist", categorylist);
		req.setAttribute("list", list);
		req.setAttribute("map", map);
		req.setAttribute("nowPage", nowPage);
		req.setAttribute("pagebar", getPagebar());
		req.setAttribute("totalPage", totalPage);
		
		
		RequestDispatcher dispatcher = req.getRequestDispatcher("/WEB-INF/views/product/productList.jsp");
		dispatcher.forward(req, resp);
	}

	private void setSearchmode(HttpServletRequest req) {
		column = req.getParameter("column");
		word = req.getParameter("word");
		is_auction = req.getParameter("is_auction");
		address_seq = req.getParameter("address_seq");
		product_type_seq = req.getParameter("product_type_seq");
		
		if ((column == null && word == null) 
				|| (column.equals("") && word.equals(""))) {
			searchmode = "n";
		} else {
			searchmode = "y";
		}
		
		if ((is_auction == null) 
				|| (is_auction.equals(""))) {
			is_auction_ck = "n";
		} else {
			is_auction_ck = "y";
		}
		if ((address_seq == null)
				|| (address_seq.equals(""))) {
			address_seq_ck = "n";
		} else {
			address_seq_ck = "y";
		}
		if ((product_type_seq == null) 
				|| (product_type_seq.equals(""))) {
			product_type_seq_ck = "n";
		} else {
			product_type_seq_ck = "y";
		}

		map.put("column", column);
		map.put("word", word);
		map.put("searchmode", searchmode);
		map.put("is_auction", is_auction);
		map.put("is_auction_ck", is_auction_ck);
		map.put("address_seq", address_seq);
		map.put("address_seq_ck", address_seq_ck);
		map.put("product_type_seq", product_type_seq);
		map.put("product_type_seq_ck", product_type_seq_ck);
		
	}

	private void ellipsis(ArrayList<ProductDTO> list) {
		for (ProductDTO dto : list) {
			if (dto.getName().length() > 11) {
				dto.setName(dto.getName().substring(0, 11) + "..");
			}

		}
	}

	private void setPage(HttpServletRequest req) {
		int begin = 0;		
		int end = 0;		

		String page = req.getParameter("page");

		if(page == null || page.equals("")) {
			nowPage = 1;
		} else {
			nowPage = Integer.parseInt(page);
		}

		begin = ((nowPage - 1) * pageSize) + 1;
		end = begin + pageSize - 1;

		map.put("begin", begin + "");
		map.put("end", end + "");
	}

	private String getPagebar() {
		int totalCount = 0;
		int blockSize = 20;
		int n;
		int loop;

		totalCount = dao.getTotalCount(map);
		totalPage = (int)Math.ceil((double)totalCount / pageSize);

		String pagebar = "";
		
		loop = 1; 
		n = ((nowPage - 1) / blockSize) * blockSize + 1; 
		
		pagebar += "<nav><ul class=\"pagination\">";

		if (n == 1) {
			pagebar += String.format("<li class='nothing'><a href='#!' aria-label='Previous'><span class='glyphicon glyphicon-menu-left'></span></a></li>");
		} else {
			pagebar += String.format("<li class='previous'><a href='/goguma/product/productList.do?page=%d' aria-label='Previous'><span class='glyphicon glyphicon-menu-left'></span></a></li>", n-1);
		}

		while (!(loop > blockSize || n > totalPage)) {
			if (n == nowPage) {
				pagebar += String.format("<li class='active'><a href='#!'>%d</a></li>", n);
			} else {
				pagebar += String.format("<li><a href='/goguma/product/productList.do?page=%d'>%d</a></li>", n, n);
			}			
			loop++;
			n++;
		}

		if (n > totalPage) {
			pagebar += String.format("<li class='nothing'><a href='#!' aria-label='Next'><span class='glyphicon glyphicon-menu-right'></span></a></li>");
		} else {
			pagebar += String.format("<li class='next'><a href='/goguma/product/productList.do?page=%d' aria-label='Next'><span class='glyphicon glyphicon-menu-right'></span></a></li>", n);
		}

		pagebar += "</ul></nav>";
		return pagebar;
	}
}