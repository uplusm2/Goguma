package com.test.main.profile;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.test.main.user.UserDAO;
import com.test.main.user.UserDTO;

@WebServlet("/profile/reconfirmpasswordok.do")
public class ReconfirmPasswordOK extends HttpServlet {

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {


		req.setCharacterEncoding("utf-8");
		//1.
		String id = req.getParameter("id");
		String pw = req.getParameter("pw");
		
		//2.
		UserDAO dao = new UserDAO();
		
		UserDTO dto = new UserDTO();
		
		dto.setId(id);
		dto.setPw(pw);
		
		UserDTO result = dao.login(dto);
		
		if (result != null && id.equals(req.getSession().getAttribute("id"))) {
			
			//로그인 성공 & 세션 아이디와 동일
			PrintWriter script = resp.getWriter();
			script.println("<script>");
			script.println("location.href='/goguma/profile/memberdataedit.do'");
			script.println("</script>");
		
		} else {
			PrintWriter script = resp.getWriter();
			script.println("<script>");
			script.println("alert('ID or PW be wrong')");
			script.println("history.back();");
			script.println("</script>");
			
			
		}
	}

}
