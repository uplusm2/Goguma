package com.test.main.admin;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.test.main.community.CommunityDTO;

@WebServlet("/admin/communityrecord.do")
public class CommunityRecord extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		String id = req.getParameter("id");
		
		RecordDAO dao = new RecordDAO();
		ArrayList<CommunityDTO> list = dao.communityRecordList(id);
		
		resp.setCharacterEncoding("UTF-8");
		resp.setContentType("application/json");
		PrintWriter writer = resp.getWriter();
		
		String temp = "";
		
		temp += "[";
		
		for(CommunityDTO dto : list) {			
			temp += "{";
				temp += String.format("\"seq\" : \"%s\",", dto.getSeq());
				temp += String.format("\"title\" : \"%s\",", dto.getTitle());
				temp += String.format("\"regDate\" : \"%s\"", dto.getRegDate().substring(0, 11));
			temp += "},";
		}
		
		temp = temp.substring(0, temp.length() - 1);
		
		temp += "]";
		
		writer.print(temp);
		
		writer.close();

	}
}