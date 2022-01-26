package com.test.main.community;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.HashMap;

import com.test.jdbc.DBUtil;

public class CommunityDAO {
	
	private Connection conn;
	private Statement stat;
	private PreparedStatement pstat;
	private ResultSet rs;
	
	public CommunityDAO() {
		try {
			conn = DBUtil.open();
			//conn = DBUtil.open("goguma", "java1234");
			stat = conn.createStatement();
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	public ArrayList<CommunityDTO> list(HashMap<String, String> map){
		try {
			String where = "";

			if (map.get("searchmode").equals("y")) {
				where = String.format("where %s like '%%%s%%'"
							, map.get("column")
							, map.get("word"));
			}

			String sql = String.format("select * from (select c.* , rownum as rnum from (select * from vwCommunity %s order by community_seq desc) c ) where rnum between %s and %s"
								, where
								, map.get("begin")
								, map.get("end"));
			
			rs = stat.executeQuery(sql);

			ArrayList<CommunityDTO> list = new ArrayList<CommunityDTO>();
			
			while(rs.next()){
				CommunityDTO dto = new CommunityDTO();
				dto.setSeq(rs.getString("community_seq"));
				dto.setId(rs.getString("id"));
				dto.setTitle(rs.getString("title"));
				dto.setRegDate(rs.getString("regDate"));
				dto.setReadcount(rs.getInt("readcount"));
				dto.setNickname(rs.getString("nickname"));
				dto.setIsNew(rs.getDouble("isnew"));
				dto.setCommentCount(rs.getInt("commentCount"));
				
				list.add(dto);
			}
			return list;
		} catch (Exception e) {
			e.printStackTrace();
			System.out.println("CommunityDAO.list()");
		}
		return null;
	}
	
	public int getTotalCount(HashMap<String, String> map) {
		try {
			String where = "";
			
			if (map.get("searchmode").equals("y")) {
				where += String.format(" and %s like '%%%s%%'"
								, map.get("column")
								, map.get("word"));	
			}
			
			String sql = String.format("select count(*) as cnt from vwCommunity %s"
								, where);
			
			rs = stat.executeQuery(sql);
			
			if (rs.next()) {
				return rs.getInt("cnt");
			}
			
		} catch (Exception e) {
			e.printStackTrace();
			System.out.println("CommunityDAO.getTotalCount()");
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
				dto.setPath(rs.getString("path"));
				
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
			String sql = "insert into tblCommunity values (community_seq.nextVal+100, ?, ?, ?, sysdate + 0.375, default)";
			pstat = conn.prepareStatement(sql);
			pstat.setString(1, dto.getId());
			pstat.setString(2, dto.getTitle());
			pstat.setString(3, dto.getContent());
			
			pstat.executeUpdate();
			
			sql = "select community_seq from tblCommunity where rownum = 1 order by community_seq desc";
			pstat = conn.prepareStatement(sql);
			
			rs = pstat.executeQuery();
			
			if(rs.next()) {
				dto.setSeq(rs.getString("community_seq"));
				addImg(dto);
				return dto.getSeq();
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return null;
	}

	private void addImg(CommunityDTO dto) {
		try {
			String sql = "insert into tblCommunityImage values (community_img_seq.nextVal, ?, ?)";
			pstat = conn.prepareStatement(sql);
			
			pstat.setString(1, dto.getSeq());
			pstat.setString(2, dto.getPath());
			
			pstat.executeUpdate();
			
		} catch (Exception e) {
			e.printStackTrace();
		}
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

	public int del(String seq) {
		try {
			String sql = "delete from tblCommunity where community_seq = ?";
			pstat = conn.prepareStatement(sql);
			pstat.setString(1, seq);
			
			return pstat.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return 0;
	}
}
