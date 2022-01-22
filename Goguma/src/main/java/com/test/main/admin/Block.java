package com.test.main.admin;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/admin/block.do")
public class Block extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		//1. 아이디 가져오기(id)
		//2. DB 작업 > insert > DAO 위임
		//3. resp으로 jsp에 반환
		
		//1.
		/*
		String id = req.getParameter("id");
		
		//2.
		UserDAO dao = new UserDAO();
		
		int result = dao.block(id);

		//Ajax 요청
		PrintWriter writer = resp.getWriter();
		
		writer.print(result + "");
		
		writer.close();
		*/
		
		String id = req.getParameter("id");
		String name = req.getParameter("name");
		
		UserDTO dto = new UserDTO();
		
		dto.setId(id);
		dto.setName(name);
		
		
		
		
		
		RequestDispatcher dispatcher = req.getRequestDispatcher("/WEB-INF/views/admin/block.jsp");
		dispatcher.forward(req, resp);

	}
}
