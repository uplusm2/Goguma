package com.test.main.profile;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.test.main.user.UserDTO;

@WebServlet("/profile/memberdataeditok.do")
public class MemberDataEditOk extends HttpServlet {
//pw  nickname gender email  address
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		req.setCharacterEncoding("utf-8");
		//1.
		String id = (String)req.getSession().getAttribute("id");
		String pw = req.getParameter("pw");
		String email = req.getParameter("email");
		String gender = req.getParameter("gender");
		String address = req.getParameter("address");
		
		//2.
		ProfileDAO dao = new ProfileDAO();
		
		UserDTO dto = new UserDTO();
		
		dto.setId(id);
		dto.setPw(pw);
		dto.setAddress(address);
		dto.setEmail(email);
		dto.setGender(gender);
		
		int result = dao.setMemberData(dto);
		
		System.out.println(result);
		
		if (result == 2) {
			RequestDispatcher dispatcher = req.getRequestDispatcher("/WEB-INF/views/profile/memberdataeditok.jsp");
			dispatcher.forward(req, resp);			
			
		} else {
			PrintWriter script = resp.getWriter();
			script.println("<script>");
			script.println("alert('pre-existing ID, plaese try agian')");
			script.println("history.back();");
			script.println("</script>");
		}
		
	}

}
