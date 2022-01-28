package com.test.main.favorite;

import java.io.IOException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/favorite/test.do")
public class test extends HttpServlet {
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		String id = req.getParameter("id");
		String seq = req.getParameter("seq");
		
		id = "user31";
		seq = "2";
		
		FavoriteDAO dao = new FavoriteDAO();
		FavoriteDTO dto = new FavoriteDTO();
		
		dto.setFavid(id);
		dto.setProduct_seq(seq);
		
		int check = dao.favoritecheck(dto);
		
		req.setAttribute("check", check);
		req.setAttribute("id", id);
		req.setAttribute("seq", seq);
		
		RequestDispatcher dispatcher = req.getRequestDispatcher("/WEB-INF/views/favorite/test.jsp");
		dispatcher.forward(req, resp);

	}

}
