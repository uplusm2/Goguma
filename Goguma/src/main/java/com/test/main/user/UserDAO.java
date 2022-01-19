package com.test.main.user;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;

import com.test.jdbc.DBUtil;

public class UserDAO {
	
	private Connection conn;
	private Statement stat;
	private PreparedStatement pstat;
	private ResultSet rs;
	
	public void test() {
		
		try {
			conn = DBUtil.open();
			stat = conn.createStatement();
			rs=conn.prepareStatement("select * from tblUser").executeQuery();
			while(rs.next()) {
				System.out.println(rs.getString("id"));
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		
	}
	
}
