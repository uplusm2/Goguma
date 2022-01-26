package com.test.main.community;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.HashMap;

import com.test.jdbc.DBUtil;

public class ComCommentDAO {
	
	private Connection conn;
	private Statement stat;
	private PreparedStatement pstat;
	private ResultSet rs;
	
	public ComCommentDAO() {
		try {
			conn = DBUtil.open();
			//conn = DBUtil.open("goguma", "java1234");
			stat = conn.createStatement();
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	public ArrayList<ComCommentDTO> list(String seq){
		try {
			String sql = "select * from vwComComment where community_seq = ? order by comcomment_seq";
			pstat = conn.prepareStatement(sql);
			pstat.setString(1, seq);
			
			rs = pstat.executeQuery();
			
			ArrayList<ComCommentDTO> list = new ArrayList<ComCommentDTO>();
			
			while(rs.next()){
				ComCommentDTO dto = new ComCommentDTO();

				dto.setSeq(rs.getString("comcomment_seq"));
				dto.setId(rs.getString("id"));
				dto.setContent(rs.getString("content"));
				dto.setCseq(rs.getString("community_seq"));
				dto.setNickname(rs.getString("nickname"));
				dto.setIsNew(rs.getDouble("isnew"));
				
				String tmp = refineDate(rs.getString("regDate"));
				dto.setRegDate(tmp);
				
				list.add(dto);
			}
			return list;
		} catch (Exception e) {
			e.printStackTrace();
		}
		return null;
	}
	
	private String refineDate(String date) {
		Calendar now = Calendar.getInstance();
		String strNow = String.format("%tF", now);
		
		if (date.startsWith(strNow)) {
			return date.substring(11, 16);
			
		} else {
			String tmp = date.substring(0, 16).replace("-", ".");
			return tmp.substring(2);
		}
	}

	public int getTotalCount(HashMap<String, String> map) {
		try {
			String where = "";
			
			String sql = "select count(*) as cnt from vwCommunity";
			rs = stat.executeQuery(sql);
			
			if (rs.next()) {
				return rs.getInt("cnt");
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		return 0;
	}

	public int add(ComCommentDTO dto) {
		try {
			String sql = "insert into tblComComment values (comComment_seq.nextVal+100, ?, ?, ?, default)";
			pstat = conn.prepareStatement(sql);
			pstat.setString(1, dto.getCseq());
			pstat.setString(2, dto.getId());
			pstat.setString(3, dto.getContent());

			return pstat.executeUpdate();
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		return 0;
	}

	public int del(String seq) {
		try {
			String sql = "delete from tblComComment where comComment_seq = ?";
			pstat = conn.prepareStatement(sql);
			pstat.setString(1, seq);
			
			return pstat.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return 0;
	}

}
