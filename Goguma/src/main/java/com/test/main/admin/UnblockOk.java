package com.test.main.admin;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/admin/unblockok.do")
public class UnblockOk extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		String id = req.getParameter("id");

		BlockDAO dao = new BlockDAO();

		int result = dao.unblock(id);
		
		if(result == 1) {
			resp.sendRedirect("/goguma/admin/userlist.do");
		} else {
			PrintWriter writer = resp.getWriter();
			writer.println("<html><body><script>");
			//TODO 인코딩 하는 법 알아오기
			writer.println("alert('failed!!!!!!'); history.back();");
			writer.println("</script></body></html>");
			writer.close();
		}

	}
}