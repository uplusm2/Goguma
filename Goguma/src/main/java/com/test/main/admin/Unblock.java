package com.test.main.admin;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/admin/unblock.do")
public class Unblock extends HttpServlet {

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		String id = req.getParameter("id");
		
		BlockDAO dao = new BlockDAO();
		
		int result = dao.unblock2(id);
		
		PrintWriter writer = resp.getWriter();
		
		writer.print(result + "");
		
		writer.close();
	}
}
