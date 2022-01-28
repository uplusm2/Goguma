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

@WebServlet("/center/noticeaddok.do")
public class NoticeAddOk extends HttpServlet {
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		req.setCharacterEncoding("UTF-8");
		
		
		CenterDAO dao = new CenterDAO();
		CenterDTO dto = new CenterDTO();
		
		
		
		
		try {
			MultipartRequest multi = new MultipartRequest(
					req,
					"C:/Goguma/Goguma/src/main/webapp/files/notice",
					1024 * 1024 * 100,
					"UTF-8",
					new DefaultFileRenamePolicy()
				);
			
			String filename = multi.getFilesystemName("imgfile");
			String title = multi.getParameter("subject");
			String content = multi.getParameter("content");

			dto.setTitle(title);
			dto.setContent(content);
			dto.setPath(filename);
			
		} catch (Exception e) {
			System.out.println("FileTestOk.doPost()");
			e.printStackTrace();
		}
		
		
		
		
		
		int result = dao.noticeadd(dto);
		
		req.setAttribute("result", result);
		
		
		RequestDispatcher dispatcher = req.getRequestDispatcher("/WEB-INF/views/center/noticeaddok.jsp");
		dispatcher.forward(req, resp);

	}

}
