
package com.test.main.center;

import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/center/faq.do")
public class faq extends HttpServlet {
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		CenterDAO dao = new CenterDAO();
		HashMap<String,String> map = new HashMap<String,String>();
		
		int nowPage = 0;		//현재 페이지 번호
		int totalCount = 0;
		int pageSize = 10;		//한페이지당 출력할 게시물 수
		int totalPage = 0;
		int begin = 0;			//where 시작 위치
		int end = 0;			//where 끝 위치
		int n = 0;
		int loop = 0;
		int blockSize = 10;
		
		String search = req.getParameter("search");
		String page = req.getParameter("page");
		
		if (page == null || page == "") nowPage = 1;
		else nowPage = Integer.parseInt(page);
		
		begin = ((nowPage - 1) * pageSize) + 1;
		end = begin + pageSize - 1;

		
		map.put("search", search);
		map.put("begin", begin + "");
		map.put("end", end + "");
		
		
		String pagebar = "";
		
		//페이지바
		
		totalCount = dao.getTotalCount(search);
		System.out.println(totalCount);
		
		
		totalPage = (int)Math.ceil((double)totalCount / pageSize);
		
		loop = 1; //루프변수(while)
		n = ((nowPage - 1) / blockSize) * blockSize + 1; //페이지 번호
		
		pagebar += "<nav><ul class=\"pagination\">";
		
		if (n == 1) {
			pagebar += String.format("<li class='disabled'><a href='#!' aria-label='Previous'><span aria-hidden='true'>&laquo;</span></a></li>");
		} else {
			pagebar += String.format("<li><a href='/goguma/center/faq.do?page=%d&search=%s' aria-label='Previous'><span aria-hidden='true'>&laquo;</span></a></li>", n-1, search);
		}
		
		
		
		while (!(loop > blockSize || n > totalPage)) {
			
			if (n == nowPage) {
				pagebar += String.format("<li class='active'><a href='#!'>%d</a></li>", n);
			} else {
				pagebar += String.format("<li><a href='/goguma/center/faq.do?page=%d&search=%s'>%d</a></li>", n, search ,n);
			}			
			
			loop++;
			n++;
		}
		
		
		if (n > totalPage) {
			pagebar += String.format("<li class='disabled'><a href='#!' aria-label='Next'><span aria-hidden='true'>&raquo;</span></a></li>");
		} else {
			pagebar += String.format("<li><a href='/goguma/center/faq.do?page=%d&search=%s' aria-label='Next'><span aria-hidden='true'>&raquo;</span></a></li>", n, search);
		}
		
		pagebar += "</ul></nav>";
		
		
		
		
		
		
		
		ArrayList<CenterDTO> list = dao.faqlist(map);
		
		req.setAttribute("list", list);
		req.setAttribute("map", map);
		
		req.setAttribute("pagebar", pagebar);
		req.setAttribute("nowPage", nowPage);
		
		RequestDispatcher dispatcher = req.getRequestDispatcher("/WEB-INF/views/center/faq.jsp");
		dispatcher.forward(req, resp);

	}

}

