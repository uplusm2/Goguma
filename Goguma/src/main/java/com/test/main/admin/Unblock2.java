package com.test.main.admin;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/admin/unblock2.do")
public class Unblock2 extends HttpServlet {

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		String id = req.getParameter("id");
		
		
		System.out.println("id: " + id);
		BlockDAO dao = new BlockDAO();
		
		int result = dao.unblock2(id);
		
		//브라우저 요청
		//1. RequestDispatcher > JSP 호출하기 > HTML 생성 + 반환
		//2. 다른 페이지로 이동 

		//Ajax 요청
		PrintWriter writer = resp.getWriter();
		
		writer.print(result + "");
		
		writer.close();
	}
}
