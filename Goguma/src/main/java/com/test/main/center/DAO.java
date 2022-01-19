package com.test.main.center;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;

import com.test.jdbc.DBUtil;

public class DAO {

	private Connection conn;
	private Statement stat; //매개변수X
	private PreparedStatement pstat; //매개변수O
	private ResultSet rs;
	
	public DAO() {
		
		try {

			conn = DBUtil.open();
			stat = conn.createStatement();

		} catch (Exception e) {
			System.out.println("BoardDAO.BoardDAO()");
			e.printStackTrace();
		}
		
	}
	
	public ArrayList<DTO> faqlist() {
		
		
		ArrayList<DTO> list = new ArrayList<DTO>();
		DTO dto = new DTO();
		
		String sql = "select * from faq;";
		
		
		
		return null;
	}
	
}
