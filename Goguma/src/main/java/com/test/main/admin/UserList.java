package com.test.main.admin;

import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/admin/userlist.do")
public class UserList extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		String column = req.getParameter("column");
		String word = req.getParameter("word");
		String searchmode = "n";
		
		if((column == null && word == null) || (column.equals("") && word.equals(""))) {
			searchmode = "n";
		} else {
			searchmode = "y";
		}
		
		//DTO > HashMap
		HashMap<String, String> map = new HashMap<String,String>();
		map.put("column", column);
		map.put("word", word);
		map.put("searchmode", searchmode);
		
		//페이징
		int nowPage = 0;		//현재 페이지 번호
		int totalCount = 0;		
		int pageSize = 10;		//한페이지당 출력할 게시물 수
		int totalPage = 0;
		int begin = 0;			//where 시작 위치
		int end = 0;			//where 끝 위치
		int n = 0;
		int loop = 0;
		int blockSize = 10;		
		
		String page = req.getParameter("page");
		
		if(page == null || page == "") nowPage = 1;
		else nowPage = Integer.parseInt(page);
		
		begin = ((nowPage - 1) * pageSize) +1;
		end = begin + pageSize - 1;
		
		map.put("begin", begin + "");
		map.put("end", end + "");
		
		UserDAO dao = new UserDAO();
		ArrayList<UserDTO> list = dao.list(map);
		
		for(UserDTO dto : list) {
			
			//평가 없는 사람 처리 & 소수점 처리
			double score = Double.parseDouble(dto.getScore());
			
			if(score < 0) {
				dto.setScore("평가없음");
			} else {
				dto.setScore(String.format("%.1f", score));
			}

			//날짜 년월일로 자르기
			dto.setSince(dto.getSince().substring(0, 11));
		}
				
		totalCount = dao.getTotalCount(map);
		totalPage = (int)Math.ceil((double)totalCount / pageSize);
		
		String pagebar = "";
		
		loop = 1; //루프변수(while)
		n = ((nowPage - 1) / blockSize) * blockSize + 1; //페이지번호
		
		pagebar += "<nav><ul class=\"pagination\">";
		
		//이전 10페이지
		if (n == 1) {
			pagebar += String.format("<li class='disabled'><a href='#!' aria-label='Previous'><span aria-hidden='true'>&laquo;</span></a></li>");	
		} else {
			pagebar += String.format("<li><a href='/goguma/admin/userlist.do?page=%d' aria-label='Previous'><span aria-hidden='true'>&laquo;</span></a></li>", n-1);				
		}
		
		while (!(loop > blockSize || n > totalPage)) {
			
			if(n == nowPage) {
				pagebar += String.format("<li class='active'><a href='#!'>%d</a></li>", n);				
			} else {
				pagebar += String.format("<li><a href='/goguma/admin/userlist.do?page=%d'>%d</a></li>", n, n);								
			}
			
			loop++;
			n++;
		}

		//다음 10페이지
		if (n > totalPage) {
			pagebar += String.format("<li class='disabled'><a href='#!' aria-label='Next'><span aria-hidden='true'>&raquo;</span></a></li>");
		} else {
			pagebar += String.format("<li><a href='/code/board/list.do?page=%d' aria-label='Next'><span aria-hidden='true'>&raquo;</span></a></li>", n);			
		}
				
		pagebar += "</ul></nav>";
		
		
		req.setAttribute("list", list);
		req.setAttribute("map", map);
		
		req.setAttribute("pagebar", pagebar);
		req.setAttribute("nowPage", nowPage);
		
		RequestDispatcher dispatcher = req.getRequestDispatcher("/WEB-INF/views/admin/userlist.jsp");
		dispatcher.forward(req, resp);

	}
}
