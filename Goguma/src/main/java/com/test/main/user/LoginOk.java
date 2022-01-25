package com.test.main.user;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.test.main.message.MessageDAO;
import com.test.main.user.UserDAO;
import com.test.main.user.UserDTO;

@WebServlet("/user/loginok.do")
public class LoginOk extends HttpServlet {
	private MessageDAO msgDao;
	
	{
		msgDao = new MessageDAO();
	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		req.setCharacterEncoding("utf-8");
		//1.
		String id = req.getParameter("id");
		String pw = req.getParameter("pw");
		String nickname = req.getParameter("nickname");
		String lv = req.getParameter("lv");
		
		//2.
		UserDAO dao = new UserDAO();
		
		UserDTO dto = new UserDTO();
		
		dto.setId(id);
		dto.setNickname(nickname);
		dto.setPw(pw);
		dto.setLv(lv);
		
		UserDTO result = dao.login(dto);
		int newMessage = msgDao.getNewMessage(id);
		if (result != null) {
			
			//로그인 성공
			HttpSession session = req.getSession();
				
			session.setAttribute("id", result.getId()); //인증 티켓
			session.setAttribute("pw", result.getPw());
			session.setAttribute("nickname", result.getNickname());
			session.setAttribute("lv", result.getLv());
			session.setAttribute("newMessage", newMessage);
				
			RequestDispatcher dispatcher = req.getRequestDispatcher("/WEB-INF/views/user/loginok.jsp");
			dispatcher.forward(req, resp);
		
		} else {
			PrintWriter script = resp.getWriter();
			script.println("<script>");
			script.println("alert('ID or PW be wrong')");
			script.println("history.back();");
			script.println("</script>");
			
		}

	}
	
}
