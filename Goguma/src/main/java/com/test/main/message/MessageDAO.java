package com.test.main.message;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;

import com.test.jdbc.DBUtil;

public class MessageDAO {
	private Connection conn;
	private Statement stat; 
	private PreparedStatement pstat; 
	private ResultSet rs;
	
	public MessageDAO() {
		try {
			conn = DBUtil.open("goguma", "java1234");
			stat = conn.createStatement();
		} catch (Exception e) {
			System.out.println("MessageDAO.MessageDAO()");
			e.printStackTrace();
		}
	}
	
}
