package com.test.main.user;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/user/useridcheck.do")
public class userIdCheck extends HttpServlet {

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
			
		req.setCharacterEncoding("utf-8");
		String id = req.getParameter("id");
		UserDAO dao = new UserDAO();
			
		PrintWriter script = resp.getWriter();
			
		int result = dao.checkId(id);
			
		script.write(result + "");
			
		script.close();
		
	}

}
