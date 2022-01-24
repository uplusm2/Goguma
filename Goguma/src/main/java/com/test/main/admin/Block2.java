package com.test.main.admin;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/admin/block2.do")
public class Block2 extends HttpServlet {

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		req.setCharacterEncoding("UTF-8");
		
		String id = req.getParameter("id");
		String blockTypeSeq = req.getParameter("blocktypeseq");
		
		BlockDTO dto = new BlockDTO();
		dto.setId(id);
		dto.setBlockTypeSeq(blockTypeSeq);
		
		BlockDAO dao = new BlockDAO();
		
		int result = dao.block(dto);
		
		resp.setCharacterEncoding("UTF-8");
		resp.setContentType("application/json");
		PrintWriter writer = resp.getWriter();
		
		// { "result"  : 1}
		writer.printf("{ \"result\" : %d}", result);
		writer.close();

	}
}