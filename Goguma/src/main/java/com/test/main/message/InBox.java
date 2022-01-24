package com.test.main.message;

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

import com.test.main.community.CommunityDTO;

@WebServlet("/message/inBox.do")
public class InBox extends HttpServlet {
	private HttpSession session;
	private MessageDAO dao;
	private ArrayList<MessageDTO> list;
	private Calendar now;
	private HashMap<String, String> map;

	private int pageSize;	
	private int nowPage;
	
	{
		dao = new MessageDAO();
		now = Calendar.getInstance();
		map = new HashMap<String,String>();
		
		pageSize = 10;
	}

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		session = req.getSession();
		map.put("user", session.getAttribute("id").toString());
		map.put("position", "receiver");
		
		setPage(req);
		list = dao.list(map);
		refineData(list);
		
		req.setAttribute("list", list);
		req.setAttribute("nowPage", nowPage);
		req.setAttribute("pagebar", getPagebar());

		RequestDispatcher dispatcher = req.getRequestDispatcher("/WEB-INF/views/message/inBox.jsp");
		dispatcher.forward(req, resp);
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
			pagebar += String.format("<li class='nothing'><a href='#!' aria-label='Previous'><span class='glyphicon glyphicon-menu-left'></span></a></li>");
		} else {
			pagebar += String.format("<li class='previous'><a href='/goguma/community/communityList.do?page=%d' aria-label='Previous'><span class='glyphicon glyphicon-menu-left'></span></a></li>", n-1);
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
			pagebar += String.format("<li class='nothing'><a href='#!' aria-label='Next'><span class='glyphicon glyphicon-menu-right'></span></a></li>");
		} else {
			pagebar += String.format("<li class='next'><a href='/goguma/community/communityList.do?page=%d' aria-label='Next'><span class='glyphicon glyphicon-menu-right'></span></a></li>", n);
		}

		pagebar += "</ul></nav>";
		return pagebar;
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

	private void refineData(ArrayList<MessageDTO> list) {
		String strNow = String.format("%tF", now);
		for (MessageDTO dto : list) {
			
			if (dto.getSendTime().startsWith(strNow)) {
				dto.setSendTime(dto.getSendTime().substring(11, 16));
			} else {
				String tmp = dto.getSendTime().substring(0, 10).replace("-", ".");
				dto.setSendTime(tmp.substring(2));
			}
//			제목에서 검색 중 > 검색어 강조!!
//			if (searchmode.equals("y") && column.equals("subject")) {
//				
//				//안녕하세요. 홍길동입니다.
//				//안녕하세요. <span style="">홍길동</span>입니다.
//				dto.setSubject(dto.getSubject().replace(word, "<span style='background-color:yellow;color:tomato;'>" + word + "</span>"));
//			}
		}
	}
}