package com.test.main.product;
import java.io.IOException;
import java.io.PrintWriter;
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
//		ArrayList<ProductImgDTO> imglist = dao.imglist(seq);
//		req.setAttribute("imglist", imglist);
		
		String column = req.getParameter("column");
		String word = req.getParameter("word");

		String searchmode = "n";
		
		if((column == null && word == null) || (column.equals("") && word.equals(""))) {
			searchmode = "n";
		} else {
			searchmode = "y";
		}
		HashMap<String, String> map = new HashMap<String,String>();
		map.put("column", column);
		map.put("word", word);
		map.put("searchmode", searchmode);
		
		int nowPage = 0;		//현재 페이지 번호
		int totalCount = 0;
		int pageSize = 5;		//한페이지당 출력할 게시물 수
		int totalPage = 0;
		int begin = 0;			//where 시작 위치
		int end = 0;			//where 끝 위치
		int n = 0;
		int loop = 0;
		int blockSize = 10;
		
		String page = req.getParameter("page");
		
		if (page == null || page == "") nowPage = 1;
		else nowPage = Integer.parseInt(page);
		
		begin = ((nowPage - 1) * pageSize) + 1;
		end = begin + pageSize - 1;
		
		map.put("begin", begin + "");
		map.put("end", end + "");
		
		ArrayList<ProductDTO> list = dao.productlist(map);
		
		
		ArrayList<ProductAddressDTO> addresslist = dao.addresslist();
		ArrayList<ProductTypeDTO> categorylist = dao.categorylist();
		
	
		
		//1.5
		Calendar now = Calendar.getInstance();
		String strNow = String.format("%tF", now);
		
		
		
		for (ProductDTO ldto : list) {
			
			//날짜 자르기
			if (ldto.getRegdate().startsWith(strNow)) {
				ldto.setRegdate(ldto.getRegdate().substring(11));
			} else {
				ldto.setRegdate(ldto.getRegdate().substring(0, 10));
			}
			
			
			//제목이 길면 자르기
			if (ldto.getName().length() > 10) {
				ldto.setName(ldto.getName().substring(0, 10) + "..");
			}
			
			
			
			if (searchmode.equals("y") && column.equals("subject")) {
				
				
				ldto.setName(ldto.getName().replace(word, "<span style='background-color:yellow;color:tomato;'>" + word + "</span>"));
			}
			
		}
	
		HttpSession session = req.getSession();
				
		session.setAttribute("readcount", "n");
				
				
				
				
		totalCount = dao.getTotalCount(map);
		totalPage = (int)Math.ceil((double)totalCount / pageSize);

		String pagebar = "";

				

				
		loop = 1; //루프변수(while)
		n = ((nowPage - 1) / blockSize) * blockSize + 1; //페이지 번호
				
				
				
		pagebar += "<nav><ul class=\"pagination\">";
				
				

				
		if (n == 1) {
			pagebar += String.format("<li class='disabled'><a href='#!' aria-label='Previous'><span aria-hidden='true'>&laquo;</span></a></li>");
		} else {
			pagebar += String.format("<li><a href='/goguma/product/productList.do?page=%d' aria-label='Previous'><span aria-hidden='true'>&laquo;</span></a></li>", n-1);
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
				
				
				
		req.setAttribute("pagebar", pagebar);
		req.setAttribute("nowPage", nowPage);

				
		
		
		req.setAttribute("list", list);
		req.setAttribute("addresslist", addresslist);
		req.setAttribute("categorylist", categorylist);
		req.setAttribute("map", map);
		
		
		
		RequestDispatcher dispatcher = req.getRequestDispatcher("/WEB-INF/views/product/productDetail.jsp");
		dispatcher.forward(req, resp);
	}
}
