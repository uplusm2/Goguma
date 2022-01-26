package com.test.main.profile;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.HashMap;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.test.main.user.UserDAO;
import com.test.main.user.UserDTO;

@WebServlet("/profile/reconfirmsecession.do")
public class ReconfirmSecession extends HttpServlet {

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		req.setCharacterEncoding("utf-8");
		//1.
		String id = req.getParameter("id");
		String pw = req.getParameter("pw");
		String withdrawtype = req.getParameter("type");
		
		HashMap<String , String > map = new HashMap<String,String>();
		
		map.put("id", id);
		map.put("pw", pw);
		map.put("withdrawtype", withdrawtype);
		
		//2.
		UserDAO dao = new UserDAO();
		
		UserDTO dto = new UserDTO();
		
		dto.setId(id);
		dto.setPw(pw);
		
		UserDTO result = dao.login(dto);
		
		if (result != null && id.equals(req.getSession().getAttribute("id"))) {
			
			ProfileDAO dao2 = new ProfileDAO();
			
			int result2 = dao2.addSecessionUser(map);
			
			if(result2==-1) {
				PrintWriter script = resp.getWriter();
				script.println("<script>");
				script.println("alert('ID or PW be wrong')");
				script.println("history.back();");
				script.println("</script>");
			}else {
				RequestDispatcher dispatcher = req.getRequestDispatcher("/WEB-INF/views/profile/reconfirmsecession.jsp");
				dispatcher.forward(req, resp);
			}		
		} else {
			PrintWriter script = resp.getWriter();
			script.println("<script>");
			script.println("alert('ID or PW be wrong')");
			script.println("history.back();");
			script.println("</script>");
		}
	}

}
