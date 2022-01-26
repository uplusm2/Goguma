package com.test.main.admin;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.HashMap;

import com.test.jdbc.DBUtil;

public class WithdrawDAO {

	private Connection conn;
	private Statement stat; //매개변수X
	private PreparedStatement pstat; //매개변수O
	private ResultSet rs;
	
	public WithdrawDAO() {
		
		try {
			
			conn = open();
			//conn = DBUtil.open("goguma", "java1234");
			stat = conn.createStatement();
			
		} catch (Exception e) {
			System.out.println("WithdrawDAO.WithdrawDAO()");
			e.printStackTrace();
		}
		
	}
	//TODO DBUtil 오류나서 잠깐 사용 나중에 지우기
	public static Connection open() {

		Connection conn = null;
		
		String url="jdbc:oracle:thin:@goguma_medium?TNS_ADMIN=C:/Wallet_goguma";
		String id = "admin";
		String pw = "Goguma970928";
		
		
		try {
			
			Class.forName("oracle.jdbc.driver.OracleDriver");
			
			conn = DriverManager.getConnection(url, id, pw);
			
			return conn;
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return null;
	}
	
	public ArrayList<WithdrawDTO> list(HashMap<String, String> map) {

		try {

			String where = "";

			if (map.get("searchmode").equals("y")) {
				where = String.format("where %s like '%%%s%%'", map.get("column"), map.get("word").replace("'", "''"));
			}

			String sql = String.format(
					"select * from (select rownum as rnum, a.* from (select * from vwWithdraw %s) a) where rnum between %s and %s order by regdate desc",
					where, map.get("begin"), map.get("end"));

			rs = stat.executeQuery(sql);

			ArrayList<WithdrawDTO> list = new ArrayList<WithdrawDTO>();

			while (rs.next()) {

				WithdrawDTO dto = new WithdrawDTO();

				dto.setId(rs.getString("id"));
				dto.setName(rs.getString("name"));
				dto.setRegDate(rs.getString("regdate"));
				dto.setType(rs.getString("type"));

				list.add(dto);

			}

			return list;

		} catch (Exception e) {
			System.out.println("WithdrawDAO.list()");
			e.printStackTrace();
		}

		return null;
	}
	
	public int getTotalCount(HashMap<String, String> map) {
		
		try {
			
			String where = "";
			
			if(map.get("searchmode").equals("y")) {
				where = String.format("where %s like '%%%s%%'"
								, map.get("column")
								, map.get("word").replace("'", "''"));
			}
			
			String sql = "select count(*) as cnt from vwWithdraw" + where;
			rs = stat.executeQuery(sql);
			
			if(rs.next()) {
				return rs.getInt("cnt");
			}
			
		} catch (Exception e) {
			System.out.println("WithdrawDAO.getTotalCount()");
			e.printStackTrace();
		}
		
		return 0;
	}
}
