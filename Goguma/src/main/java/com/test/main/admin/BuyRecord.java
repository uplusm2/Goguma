package com.test.main.admin;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/admin/buyrecord.do")
public class BuyRecord extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		String id = req.getParameter("id");
		
		RecordDAO dao = new RecordDAO();
		ArrayList<DealRecordDTO> list = dao.buyRecordList(id);
		
		for(DealRecordDTO dto : list) {
			
			dto.setRegDate(dto.getRegDate().substring(0, 10));
			dto.setDealDate(dto.getDealDate().substring(0, 10));

		}
		
		resp.setCharacterEncoding("UTF-8");
		resp.setContentType("application/json");
		PrintWriter writer = resp.getWriter();
		
		String temp = "";
		
		temp += "[";
		
		for(DealRecordDTO dto : list) {			
			temp += "{";
				temp += String.format("\"productSeq\" : \"%s\",", dto.getProductSeq());
				temp += String.format("\"name\" : \"%s\",", dto.getName());
				temp += String.format("\"regDate\" : \"%s\",", dto.getRegDate());
				temp += String.format("\"dealDate\" : \"%s\",", dto.getDealDate());
				temp += String.format("\"dealerId\" : \"%s\"", dto.getDealerId());
			temp += "},";
		}
		
		temp = temp.substring(0, temp.length() - 1);
		
		temp += "]";
		
		writer.print(temp);
		
		writer.close();

	}
}