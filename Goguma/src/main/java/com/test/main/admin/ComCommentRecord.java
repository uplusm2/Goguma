package com.test.main.admin;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.test.main.community.ComCommentDTO;

@WebServlet("/admin/comcommentrecord.do")
public class ComCommentRecord extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		String id = req.getParameter("id");
		
		RecordDAO dao = new RecordDAO();
		ArrayList<ComCommentDTO> list = dao.comCommentRecordList(id);
		
		resp.setCharacterEncoding("UTF-8");
		resp.setContentType("application/json");
		PrintWriter writer = resp.getWriter();
		
		String temp = "";
		
		temp += "[";
		
		for(ComCommentDTO dto : list) {			
			temp += "{";
				temp += String.format("\"seq\" : \"%s\",", dto.getSeq());
				temp += String.format("\"cseq\" : \"%s\",", dto.getCseq());
				temp += String.format("\"content\" : \"%s\",", dto.getContent());
				temp += String.format("\"regDate\" : \"%s\"", dto.getRegDate().substring(0, 11));
			temp += "},";
		}
		
		temp = temp.substring(0, temp.length() - 1);
		
		temp += "]";
		
		writer.print(temp);
		
		writer.close();

	}
}
