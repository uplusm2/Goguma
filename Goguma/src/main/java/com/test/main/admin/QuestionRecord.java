package com.test.main.admin;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/admin/questionrecord.do")
public class QuestionRecord extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		String id = req.getParameter("id");
		
		RecordDAO dao = new RecordDAO();
		ArrayList<QuestionDTO> list = dao.questionList(id);
		
		resp.setCharacterEncoding("UTF-8");
		resp.setContentType("application/json");
		PrintWriter writer = resp.getWriter();
		
		String temp = "";
		
		temp += "[";
		
		for(QuestionDTO dto : list) {
			
			if(dto.getAnswerSeq() != null) {
				dto.setState("답변완료");
			} else {
				dto.setState("답변대기");
			}
			
			temp += "{";
				temp += String.format("\"seq\" : \"%s\",", dto.getQuestionSeq());
				temp += String.format("\"type\" : \"%s\",", dto.getType());
				temp += String.format("\"title\" : \"%s\",", dto.getTitle());
				temp += String.format("\"regDate\" : \"%s\",", dto.getRegDate().substring(0, 11));
				temp += String.format("\"state\" : \"%s\"", dto.getState());
			temp += "},";
		}
		
		temp = temp.substring(0, temp.length() - 1);
		
		temp += "]";
		
		writer.print(temp);
		
		writer.close();

	}

}
