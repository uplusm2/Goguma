package com.test.main.main;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;

import com.test.jdbc.DBUtil;

public class NoticeDAO {

	private Connection conn;
	private Statement stat;
	private PreparedStatement pstat;
	private ResultSet rs;

	public NoticeDAO() {
		try {
			conn = DBUtil.open("goguma","java1234");
			stat = conn.createStatement();
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	public NoticeDTO newNotice() {
		try {
			String sql = "select * from tblNotice where rownum = 1 order by notice_seq desc";
			System.out.println("rs 전");
			
			rs = stat.executeQuery(sql);
			System.out.println("rs 후");
			
			System.out.println("list 후");
			
			if (rs.next()) {
				NoticeDTO dto = new NoticeDTO();
				dto.setSeq(rs.getString("notice_seq"));
				dto.setTitle(rs.getString("title"));
				dto.setRegdate(rs.getString("regdate"));
				
				return dto;
			}
		} catch (Exception e) {
			e.printStackTrace();
			System.out.println("ProductDAO.list()");
		}
		return null;
	}

}
