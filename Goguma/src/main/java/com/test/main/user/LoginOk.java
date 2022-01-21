package com.test.main.user;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/member/loginok.do")
public class LoginOk extends HttpServlet {

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		//할일
		//1. 데이터 가져오기(id, pw)
		//2. DB 작업 > select
		//3. 결과
		//	a. 성공 > 인증 티켓 발급 > 피드백
		//	b. 실패 > 피드백
		
		//1.
		String id = req.getParameter("id");
		String pw = req.getParameter("pw");
		
		//2.
		MemberDAO dao = new MemberDAO();
		
		//*** 하나의 계층(Controller)이 또 다른 계층(DAO)에게 데이터를 전달할 때..
		// > 전달할 데이터의 갯수가 1개면 > 그냥 전달
		// > 전달할 데이터의 갯수가 N개면 > DTO에 담아서 전달
		
		MemberDTO dto = new MemberDTO();
		dto.setId(id);
		dto.setPw(pw);
		
		MemberDTO result = dao.login(dto);
		
		if (result != null) {
			
			//로그인 성공
			HttpSession session = req.getSession();
			
			session.setAttribute("id", result.getId()); //인증 티켓
			session.setAttribute("name", result.getName());
			session.setAttribute("lv", result.getLv());
						
		}

		RequestDispatcher dispatcher = req.getRequestDispatcher("/WEB-INF/views/member/loginok.jsp");
		dispatcher.forward(req, resp);
	}

}




