package com.test.main.community;

import java.io.*;
import java.util.*;

import javax.servlet.*;
import javax.servlet.annotation.*;
import javax.servlet.http.*;

@WebServlet("/community/communityList.do")
public class CommunityList extends HttpServlet {
	private CommunityDAO dao;
	private ArrayList<CommunityDTO> list;
	private HashMap<String, String> map;
	private Calendar now;

	private int pageSize;	
	private int nowPage;

	{
		dao = new CommunityDAO();
		map = new HashMap<String,String>();
		now = Calendar.getInstance();

		pageSize = 10;
	}

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		setPage(req);
		list = dao.list(map);

		String strNow = String.format("%tF", now);

		for (CommunityDTO dto : list) {

			if (dto.getRegDate().startsWith(strNow)) {
				dto.setRegDate(dto.getRegDate().substring(11));
			} else {
				String tmp = dto.getRegDate().substring(0, 10).replace("-", ".");
				dto.setRegDate(tmp.substring(2));
			}

			if (dto.getTitle().length() > 20) {
				dto.setTitle(dto.getTitle().substring(0, 20) + "..");
			}

			//제목에서 검색 중 > 검색어 강조!!
//			if (searchmode.equals("y") && column.equals("subject")) {
//				
//				//안녕하세요. 홍길동입니다.
//				//안녕하세요. <span style="">홍길동</span>입니다.
//				dto.setSubject(dto.getSubject().replace(word, "<span style='background-color:yellow;color:tomato;'>" + word + "</span>"));
//			}
		}

		req.setAttribute("list", list);
		req.setAttribute("nowPage", nowPage);
		req.setAttribute("pagebar", getPagebar());

		RequestDispatcher dispatcher = req.getRequestDispatcher("/WEB-INF/views/community/communityList.jsp");
		dispatcher.forward(req, resp);
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
		int totalPage = 0;
		int blockSize = 10;
		int n;
		int loop;

		totalCount = dao.getTotalCount(map);
		totalPage = (int)Math.ceil((double)totalCount / pageSize);

		String pagebar = "";
		
		loop = 1; 
		n = ((nowPage - 1) / blockSize) * blockSize + 1; 
		
		pagebar += "<nav><ul class=\"pagination\">";

		if (n == 1) {
//			pagebar += String.format("<li class='disabled'><a href='#!' aria-label='Previous'><span aria-hidden='true'>&laquo;</span></a></li>");
		} else {
			pagebar += String.format("<li><a href='/goguma/community/communityList.do?page=%d' aria-label='Previous'><span aria-hidden='true'>&laquo;</span></a></li>", n-1);
		}

		while (!(loop > blockSize || n > totalPage)) {
			if (n == nowPage) {
				pagebar += String.format("<li class='active'><a href='#!'>%d</a></li>", n);
			} else {
				pagebar += String.format("<li><a href='/goguma/community/communityList.do?page=%d'>%d</a></li>", n, n);
			}			
			loop++;
			n++;
		}

		if (n > totalPage) {
//			pagebar += String.format("<li class='disabled'><a href='#!' aria-label='Next'><span aria-hidden='true'>&raquo;</span></a></li>");
		} else {
			pagebar += String.format("<li><a href='/goguma/community/communityList.do?page=%d' aria-label='Next'><span aria-hidden='true'>&raquo;</span></a></li>", n);
		}

		pagebar += "</ul></nav>";
		return pagebar;
	}
}