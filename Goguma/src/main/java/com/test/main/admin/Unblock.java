package com.test.main.admin;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/admin/unblock.do")
public class Unblock extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		String id = req.getParameter("id");
				
		BlockDAO dao = new BlockDAO();
		BlockDTO dto = new BlockDTO();
		
		//ArrayList<BlockDTO> list = dao.getBlockUser(id);
		dto = dao.getBlockUser(id);
		
		//req.setAttribute("list", list);
		req.setAttribute("dto", dto);
		
		RequestDispatcher dispatcher = req.getRequestDispatcher("/WEB-INF/views/admin/unblock.jsp");
		dispatcher.forward(req, resp);

	}
}
