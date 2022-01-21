package com.test.main.center;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.HashMap;

import com.test.jdbc.DBUtil;


public class CenterDAO {

	
	private Connection conn;
	private Statement stat; //매개변수X
	private PreparedStatement pstat; //매개변수O
	private ResultSet rs;
	
	public CenterDAO(){
		
		try {

			conn = DBUtil.open();
			stat = conn.createStatement();

		} catch (Exception e) {
			e.printStackTrace();
		}
		
	}
	
	

	public ArrayList<CenterDTO> faqlist(HashMap<String, String> map) {
		try {
			
			if(map.get("search") == null || map.get("search").equals("")) {
				map.replace("search", "1");
			}
			
			String sql  = String.format("select rownum, a.* from (select * from tblfaq where question_type_seq = %s) a where rownum between %s and %s",map.get("search"),map.get("begin"),map.get("end"));
			System.out.println(sql);
			
			
			rs = stat.executeQuery(sql);
			
			ArrayList<CenterDTO> list = new ArrayList<CenterDTO>();
			
			
			while (rs.next()) {
				CenterDTO dto = new CenterDTO();
				dto.setSeq(rs.getString("FAQ_SEQ"));
				System.out.print(dto.getSeq());
				dto.setQuestionseq(rs.getString("question_type_seq"));
				dto.setTitle(rs.getString("title"));
				dto.setContent(rs.getString("contents"));
			
	
				list.add(dto);
			}
			
			return list;
		
		}catch (Exception e) {
			e.printStackTrace();
		}
		
		return null;
	}
	
	public int getTotalCount(HashMap<String, String> map) {
		
		try {
			
			if(map.get("search") == null || map.get("search").equals("")) {
				map.replace("search", "1");
			}
			
			String sql  = String.format("select count(*) as cnt from tblfaq where question_type_seq = %s", map.get("search"));
			
			rs = stat.executeQuery(sql);
			
			if (rs.next()) {
				return rs.getInt("cnt");
			}
			
		} catch (Exception e) {
			System.out.println("CenterDAO.getTotalCount()");
			e.printStackTrace();
		}
		
		return 0;
		
	}

}
	

