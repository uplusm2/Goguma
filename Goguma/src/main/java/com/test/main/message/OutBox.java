package com.test.main.message;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Calendar;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.test.main.community.CommunityDTO;

@WebServlet("/message/outBox.do")
public class OutBox extends HttpServlet {
	private MessageDAO dao;
	private ArrayList<MessageDTO> list;
	private Calendar now;
	
	{
		dao = new MessageDAO();
		now = Calendar.getInstance();
	}

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		String id = req.getParameter("id");
		id = "user1";
		list = dao.list(id);
		refineData(list);
		
		req.setAttribute("list", list);

		RequestDispatcher dispatcher = req.getRequestDispatcher("/WEB-INF/views/message/outBox.jsp");
		dispatcher.forward(req, resp);
	}
	
	private void refineData(ArrayList<MessageDTO> list) {
		String strNow = String.format("%tF", now);
		for (MessageDTO dto : list) {
			
			if (dto.getSendTime().startsWith(strNow)) {
				dto.setSendTime(dto.getSendTime().substring(14));
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