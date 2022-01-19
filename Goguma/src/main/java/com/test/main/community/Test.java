package com.test.main.community;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import com.test.jdbc.DBUtil;


public class Test {

	private static Connection conn;
	private static Statement stat;
	private static PreparedStatement pstat;
	private static ResultSet rs;
	
	public static void main(String[] args) throws SQLException {

		conn = DBUtil.open();
		stat = conn.createStatement();
		
		String sql = "select count(*) from tblUser";
		rs = stat.executeQuery(sql);
		
		while (rs.next()) {
			System.out.println(rs.getString("count(*)"));
			
		}
	}

}
