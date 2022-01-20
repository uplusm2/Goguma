package com.test.main.center;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;

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
			System.out.println("BoardDAO.BoardDAO()");
			e.printStackTrace();
		}
		
	}
	
	

	public ArrayList<CenterDTO> faqlist() {
		try {
			String sql = "select FAQ_SEQ, question_type_seq, title, contents from tblfaq";

			rs = stat.executeQuery(sql);
			
			ArrayList<CenterDTO> list = new ArrayList<CenterDTO>();
			
			
			while (rs.next()) {
				CenterDTO dto = new CenterDTO();
				dto.setSeq(rs.getString("FAQ_SEQ"));
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

}
	

