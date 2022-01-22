package com.test.main.message;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;

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

	public ArrayList<MessageDTO> listIn(String id) {
		try {
			String sql = "select m.*, rownum from vwMessage m where receiver_id = ?";
			pstat = conn.prepareStatement(sql);
			pstat.setString(1, id);
			rs = pstat.executeQuery();
			
			ArrayList<MessageDTO> list = new ArrayList<MessageDTO>();
			
			while(rs.next()) {
				MessageDTO dto = new MessageDTO();
				
				dto.setSeq(rs.getString("rownum"));;
				dto.setContent(rs.getString("content"));
				dto.setSenderId(rs.getString("sender_id"));
				dto.setReceiverId(rs.getString("receiver_id"));
				dto.setSendTime(rs.getString("sendtime"));
				dto.setIsCheck(rs.getString("is_check"));
				dto.setSenderNickname(rs.getString("sender_nickname"));
				dto.setReceiverNickname(rs.getString("receiver_nickname"));
				
				list.add(dto);
			}
			
			return list;
		} catch (Exception e) {
			System.out.println("MessageDAO.list()");
			e.printStackTrace();
		}
		return null;
	}
	public ArrayList<MessageDTO> listOut(String id) {
		try {
			String sql = "select m.*, rownum from vwMessage m where sender_id = ?";
			pstat = conn.prepareStatement(sql);
			pstat.setString(1, id);
			rs = pstat.executeQuery();
			
			ArrayList<MessageDTO> list = new ArrayList<MessageDTO>();
			
			while(rs.next()) {
				MessageDTO dto = new MessageDTO();
				
				dto.setSeq(rs.getString("rownum"));;
				dto.setContent(rs.getString("content"));
				dto.setSenderId(rs.getString("sender_id"));
				dto.setReceiverId(rs.getString("receiver_id"));
				dto.setSendTime(rs.getString("sendtime"));
				dto.setIsCheck(rs.getString("is_check"));
				dto.setSenderNickname(rs.getString("sender_nickname"));
				dto.setReceiverNickname(rs.getString("receiver_nickname"));
				
				list.add(dto);
			}
			
			return list;
		} catch (Exception e) {
			System.out.println("MessageDAO.list()");
			e.printStackTrace();
		}
		return null;
	}
	
}
