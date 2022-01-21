package com.test.main.community;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
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
			
			rs = stat.executeQuery(sql);

			ArrayList<ComCommentDTO> list = new ArrayList<ComCommentDTO>();
			
			while(rs.next()){
				ComCommentDTO dto = new ComCommentDTO();
				dto.setSeq(rs.getString("comcomment_seq"));
				dto.setId(rs.getString("id"));
				dto.setRegDate(rs.getString("regDate"));
				dto.setCseq(rs.getString("community_seq"));
				dto.setNickname(rs.getString("nickname"));
				dto.setIsNew(rs.getDouble("isnew"));
				
				list.add(dto);
			}
			return list;
		} catch (Exception e) {
			e.printStackTrace();
		}
		return null;
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

	public CommunityDTO get(String seq) {
		
		try {
			String sql = "select * from vwCommunity where community_seq = ?";
			
			pstat = conn.prepareStatement(sql);
			
			pstat.setString(1, seq);
			
			rs = pstat.executeQuery();
			
			if (rs.next()){
				CommunityDTO dto = new CommunityDTO();
				dto.setSeq(rs.getString("community_seq"));
				dto.setId(rs.getString("id"));
				dto.setTitle(rs.getString("title"));
				dto.setContent(rs.getString("content"));
				dto.setRegDate(rs.getString("regDate"));
				dto.setReadcount(rs.getInt("readcount"));
				dto.setNickname(rs.getString("nickname"));
				
				return dto;
			}
		} catch (Exception e) {
			System.out.println("CommunityDAO.get()");
			e.printStackTrace();
		}
		return null;
	}

	public int edit(CommunityDTO dto) {
		try {
			String sql = "update tblCommunity set title = ?, content = ?  where community_seq = ?";
			pstat = conn.prepareStatement(sql);
			
			pstat.setString(1, dto.getTitle());
			pstat.setString(2, dto.getContent());
			pstat.setString(3, dto.getSeq());
			
			return pstat.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return 0;
	}
	
	public String add(CommunityDTO dto) {
		try {
			String sql = "insert into tblCommunity values (community_seq.nextVal, ?, ?, ?, sysdate + 0.375, default)";
			pstat = conn.prepareStatement(sql);
			
			pstat.setString(1, dto.getId());
			pstat.setString(2, dto.getTitle());
			pstat.setString(3, dto.getContent());
			
			pstat.executeUpdate();
			
			sql = "select community_seq from tblCommunity where rownum = 1 order by community_seq desc";
			pstat = conn.prepareStatement(sql);
			
			rs = pstat.executeQuery();
			
			if(rs.next()) {
				return rs.getString("community_seq");
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return null;
	}

	public void addReadCount(String seq) {
		try {
			String sql = "update tblCommunity set readcount = readcount + 1 where community_seq = ?";
			pstat = conn.prepareStatement(sql);
			pstat.setString(1, seq);
			
			pstat.executeUpdate();
		} catch (Exception e) {
			System.out.println("CommunityDAO.addReadCount()");
			e.printStackTrace();
		}
	}
}
