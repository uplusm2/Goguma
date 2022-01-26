package com.test.main.center;

import java.io.IOException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

@WebServlet("/center/questionaddok.do")
public class QuestionAddOk extends HttpServlet {
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		req.setCharacterEncoding("UTF-8");
		
		CenterDAO dao = new CenterDAO();
		
		CenterDTO dto = new CenterDTO();
		
		try {
			MultipartRequest multi = new MultipartRequest(
					req,
					"C:/Goguma/Goguma/src/main/webapp/files/question",
					1024 * 1024 * 100,
					"UTF-8",
					new DefaultFileRenamePolicy()
				);
			
			String title = multi.getParameter("subject");
			String content = multi.getParameter("content");
			String filename = multi.getFilesystemName("file");
			String type= multi.getParameter("type");

			dto.setTitle(title);
			dto.setContent(content);
			dto.setPath(filename);
			dto.setType(type);
			
		} catch (Exception e) {
			System.out.println("questionaddOk.doPost()");
			e.printStackTrace();
		}
		
		String id = (String)req.getSession().getAttribute("id");
		
		dto.setUser(id);
		
		
		int result = dao.questionadd(dto);	
		
		
		req.setAttribute("result", result);
		
		RequestDispatcher dispatcher = req.getRequestDispatcher("/WEB-INF/views/center/questionaddok.jsp");
		dispatcher.forward(req, resp);

	}

}
