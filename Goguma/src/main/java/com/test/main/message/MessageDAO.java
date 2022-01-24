package com.test.main.message;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.HashMap;

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

	public ArrayList<MessageDTO> list(HashMap<String, String> map) {
		try {
			
			String where = String.format("where %s_id = '%s'"
									, map.get("position")
									, map.get("user"));
			
			System.out.println(where);
			String sql = String.format("select * from (select m.* , rownum as rnum from (select * from vwMessage %s order by message_seq desc) m ) where rnum between %s and %s"
								, where
								, map.get("begin")
								, map.get("end"));
			rs = stat.executeQuery(sql);
			
			ArrayList<MessageDTO> list = new ArrayList<MessageDTO>();
			
			while(rs.next()) {
				MessageDTO dto = new MessageDTO();
				
				dto.setSeq(rs.getString("rnum"));;
				dto.setContent(rs.getString("content"));
				dto.setSenderId(rs.getString("sender_id"));
				dto.setReceiverId(rs.getString("receiver_id"));
				dto.setSendTime(rs.getString("sendtime"));
				dto.setIsCheck(rs.getString("is_check"));
				dto.setSenderNickname(rs.getString("sender_nickname"));
				dto.setReceiverNickname(rs.getString("receiver_nickname"));
				dto.setMessageSeq(rs.getString("message_seq"));
				dto.setIsNew(rs.getDouble("isnew"));
				list.add(dto);
			}
			
			return list;
		} catch (Exception e) {
			System.out.println("MessageDAO.list()");
			e.printStackTrace();
		}
		return null;
	}

	public MessageDTO getMessage(String seq) {
		try {
			String sql = "select * from vwMessage where message_seq = ?";
			
			pstat = conn.prepareStatement(sql);
			pstat.setString(1, seq);
			
			rs = pstat.executeQuery();
			
			if (rs.next()) {
				MessageDTO dto = new MessageDTO();
				dto.setSenderId(rs.getString("sender_id"));
				dto.setReceiverId(rs.getString("receiver_id"));
				dto.setSendTime(rs.getString("sendtime"));
				dto.setContent(rs.getString("content"));
				dto.setIsCheck(rs.getString("is_check"));
				dto.setSenderNickname(rs.getString("sender_nickname"));
				dto.setReceiverNickname(rs.getString("receiver_nickname"));
				dto.setMessageSeq(rs.getString("message_seq"));
				
				return dto;
			}
		} catch (Exception e) {
			System.out.println("MessageDAO.getInDetail()");
			e.printStackTrace();
		}
		return null;
	}

	public void check(String seq) {
		try {
			String sql = "update tblMessage set is_check = 'Y'  where message_seq = ?";
			pstat = conn.prepareStatement(sql);
			pstat.setString(1, seq);
			
			pstat.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	public String add(MessageDTO dto) {
		try {
			String sql = "insert into tblMessage values (message_seq.nextVal, ?, ?, ?, sysdate+0.375, 'N')";
			pstat = conn.prepareStatement(sql);
			
			pstat.setString(1, dto.getSenderId());
			pstat.setString(2, dto.getReceiverId());
			pstat.setString(3, dto.getContent());
			
			pstat.executeUpdate();
			
			sql = "select message_seq from tblMessage where sender_id = ? and rownum = 1 order by message_seq desc";
			pstat = conn.prepareStatement(sql);

			pstat.setString(1, dto.getSenderId());
			
			rs = pstat.executeQuery();
			
			if(rs.next()) {
				return rs.getString("message_seq");
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		return null;
	}

	public int getTotalCount(HashMap<String, String> map) {
		try {
			String where = String.format("where %s_id = '%s'" 
									, map.get("position")
									, map.get("user"));	
			
			String sql = String.format("select count(*) as cnt from vwMessage %s", where);
			rs = stat.executeQuery(sql);
			
			if (rs.next()) {
				return rs.getInt("cnt");
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		return 0;
	}

	public int del(String seq) {
		try {
			String sql = "delete from tblMessage where message_seq = ?";
			pstat = conn.prepareStatement(sql);
			pstat.setString(1, seq);
			
			return pstat.executeUpdate();
		} catch (Exception e) {
			
		}
		return 0;
	}
}
