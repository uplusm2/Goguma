package com.test.main;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.test.main.search.SearchDAO;
import com.test.main.search.SearchDTO;

@WebServlet("/main.do")
public class Main extends HttpServlet {
	private SearchDAO dao;
	private SearchDTO dto;
	private ArrayList<SearchDTO> searchList;
	
	{
		dao = new SearchDAO();
		dto = new SearchDTO(); 
	}

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		searchList = dao.list();
		req.setAttribute("searchList", searchList);
		RequestDispatcher dispatcher = req.getRequestDispatcher("/WEB-INF/views/main.jsp");
		dispatcher.forward(req, resp);
		
	}
}