package com.test.main.main;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.HashMap;

import com.test.jdbc.DBUtil;
import com.test.main.community.CommunityDTO;

public class SearchDAO {
	
	private Connection conn;
	private Statement stat;
	private PreparedStatement pstat;
	private ResultSet rs;
	
	public SearchDAO() {
		try {
			conn = DBUtil.open("goguma", "java1234");
			stat = conn.createStatement();
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	public ArrayList<SearchDTO> list(){
		try {
			String sql = "select keyword, count(*) as cnt from tblSearch group by keyword order by cnt desc";
			
			rs = stat.executeQuery(sql);

			ArrayList<SearchDTO> list = new ArrayList<SearchDTO>();
			
			while(rs.next()){
				SearchDTO dto = new SearchDTO();
				dto.setKeyword(rs.getString("keyword"));
				dto.setCnt(rs.getString("cnt"));
				
				list.add(dto);
			}
			return list;
		} catch (Exception e) {
			e.printStackTrace();
			System.out.println("SearchDAO.list()");
		}
		return null;
	}
}
