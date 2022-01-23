package com.test.main.admin;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;

public class BlockDAO {

	private Connection conn;
	private Statement stat; //매개변수X
	private PreparedStatement pstat; //매개변수O
	private ResultSet rs;
	
	public BlockDAO() {
		
		try {
			
			conn = open();
			stat = conn.createStatement();
			
		} catch (Exception e) {
			System.out.println("BlockDAO.BlockDAO()");
			e.printStackTrace();
		}
	}
	
	//TODO DBUtil 오류나서 잠깐 사용 나중에 지우기
	public static Connection open() {

		Connection conn = null;
		
		String url="jdbc:oracle:thin:@goguma_medium?TNS_ADMIN=C:/Wallet_goguma";
		String id = "admin";
		String pw = "Goguma970928";
		
//		String url = "jdbc:oracle:thin:@localhost:1521:xe";
//		String id = "goguma";
//		String pw = "java1234";
		
		try {
			
			Class.forName("oracle.jdbc.driver.OracleDriver");
			
			conn = DriverManager.getConnection(url, id, pw);
			
			return conn;
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return null;
	}

	public int block(BlockDTO dto) {

		try {
			
			String sql = "insert into tblBlock (id, block_type_seq, regdate) values (?, ?, default)";
			
			pstat = conn.prepareStatement(sql);
			pstat.setString(1, dto.getId());
			pstat.setString(2, dto.getBlockTypeSeq());
			
			int result = pstat.executeUpdate();
			
			System.out.println(result);
			
			return result;
			
		} catch (Exception e) {
			System.out.println("BlockDTO.block()");
			e.printStackTrace();
		}
		
		return 0;
		
	}

	public BlockDTO getBlockUser(String id) {

		try {
			
			String sql = "select b.id, b.regdate, (select type from tblBlockType where block_type_seq = b.block_type_seq) as type from tblBlock b where id = ?";
			
			pstat = conn.prepareStatement(sql);
			pstat.setString(1, id);
			rs = pstat.executeQuery();
			
			if(rs.next()) {
				
				BlockDTO dto = new BlockDTO();
				
				dto.setId(rs.getString("id"));
				dto.setRegDate(rs.getString("regdate"));
				dto.setType(rs.getString("type"));
				
				return dto;
			}
						
		} catch (Exception e) {
			System.out.println("BlockDAO().getBlockUser");
			e.printStackTrace();
		}
		
		return null;
	}

	public int unblock(String id) {
		
		try {
			
			String sql = "delete from tblBlock where id =";
			
			pstat = conn.prepareStatement(sql);
			pstat.setString(1, id);
			
			return pstat.executeUpdate();
			
		} catch (Exception e) {
			System.out.println("BlockDAO.unblock()");
			e.printStackTrace();
		}
		
		return 0;
	}


}
