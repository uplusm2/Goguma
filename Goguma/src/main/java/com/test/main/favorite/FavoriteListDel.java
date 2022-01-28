package com.test.main.favorite;

import java.io.IOException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/favorite/favoritelistdel.do")
public class FavoriteListDel extends HttpServlet {
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		String seq = req.getParameter("seq");
		String id = req.getParameter("id");
		System.out.println(seq);
		System.out.println(id);
		
		FavoriteDAO dao = new FavoriteDAO();
		
		int result = dao.favoritedel(seq);
		
		req.setAttribute("result", result);
		req.setAttribute("seq", seq);
		req.setAttribute("id", id);
		
		RequestDispatcher dispatcher = req.getRequestDispatcher("/WEB-INF/views/favorite/favoritelistdel.jsp");
		dispatcher.forward(req, resp);

	}

}
