package com.test.main.favorite;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/favorite/favorite.do")
public class Favorite extends HttpServlet {
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		String id = req.getParameter("id");
		
		FavoriteDAO dao = new FavoriteDAO();
		
		id = "user31";
		
		ArrayList<FavoriteDTO> favorite = dao.favoritelist(id);
		
		for(FavoriteDTO dto : favorite) {
			System.out.println(dto.getName());
		}
		
		req.setAttribute("favorite", favorite);
		
		
		RequestDispatcher dispatcher = req.getRequestDispatcher("/WEB-INF/views/favorite/favorite.jsp");
		dispatcher.forward(req, resp);

	}

}