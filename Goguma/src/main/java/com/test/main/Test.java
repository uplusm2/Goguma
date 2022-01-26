package com.test.main;

import java.util.ArrayList;

import com.test.main.search.SearchDAO;
import com.test.main.search.SearchDTO;

public class Test {
	public static void main(String[] args) {
		SearchDAO dao = new SearchDAO();
		SearchDTO dto = new SearchDTO();
		ArrayList<SearchDTO> list = dao.list();
		
		System.out.println(list.get(0).getKeyword());
	}
}
