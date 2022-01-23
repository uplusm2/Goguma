package com.test.main.admin;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/admin/blockok.do")
public class BlockOk extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		//1. 데이터 가져오기(id, blockType)
		//2. DB 작업 > insert > DAO 위임
		//3. 피드백
		
		String id = req.getParameter("id");
		String blockTypeSeq = req.getParameter("blockType");

		BlockDAO dao = new BlockDAO();
		
		BlockDTO dto = new BlockDTO();
		
		dto.setId(id);
		dto.setBlockTypeSeq(blockTypeSeq);
		
		int result = dao.block(dto);
		
		if(result == 1) {
			resp.sendRedirect("/goguma/admin/userlist.do");
		} else {
			PrintWriter writer = resp.getWriter();
			writer.println("<html><body><script>");
			//TODO 인코딩 하는 법 알아오기
			writer.println("alert('failed'); history.back();");
			writer.println("</script></body></html>");
			writer.close();
		}
		
	}
}
