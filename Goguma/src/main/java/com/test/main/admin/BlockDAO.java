package com.test.main.admin;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.HashMap;

//import com.test.jdbc2.DBUtil;

public class BlockDAO {

	private Connection conn;
	private Statement stat; //매개변수X
	private PreparedStatement pstat; //매개변수O
	private ResultSet rs;
	
	public BlockDAO() {
		
		try {
			
			conn = open();
			//conn = DBUtil.open("localhost","goguma", "java1234");
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
			
			String sql = "select * from vwBlock where id = ?";
			
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
			
			String sql = "delete from tblBlock where id = ?";
			
			pstat = conn.prepareStatement(sql);
			pstat.setString(1, id);
			
			return pstat.executeUpdate();
			
		} catch (Exception e) {
			System.out.println("BlockDAO.unblock()");
			e.printStackTrace();
		}
		
		return 0;
	}

	public ArrayList<BlockDTO> list(HashMap<String, String> map) {

		try {

			String where = "";

			if (map.get("searchmode").equals("y")) {
				where = String.format("where %s like '%%%s%%'", map.get("column"), map.get("word").replace("'", "''"));
			}

			String sql = String.format(
					"select * from (select rownum as rnum, a.* from (select * from vwBlock %s) a) where rnum between %s and %s order by regdate desc",
					where, map.get("begin"), map.get("end"));

			rs = stat.executeQuery(sql);

			ArrayList<BlockDTO> list = new ArrayList<BlockDTO>();

			while (rs.next()) {
				// 레코드 1줄 -> BoardDTO 1개
				BlockDTO dto = new BlockDTO();

				dto.setId(rs.getString("id"));
				dto.setName(rs.getString("name"));
				dto.setRegDate(rs.getString("regdate"));
				dto.setType(rs.getString("type"));

				list.add(dto);

			}

			return list;

		} catch (Exception e) {
			System.out.println("BlockDAO.list()");
			e.printStackTrace();
		}

		return null;
	}

	public int getTotalCount(HashMap<String, String> map) {
		
		try {
			
			String where = "";
			
			if(map.get("searchmode").equals("y")) {
				where = String.format("where %s like '%%%s%%'"
								, map.get("column")
								, map.get("word").replace("'", "''"));
			}
			
			String sql = "select count(*) as cnt from vwBlock" + where;
			rs = stat.executeQuery(sql);
			
			if(rs.next()) {
				return rs.getInt("cnt");
			}
			
		} catch (Exception e) {
			System.out.println("BlockDAO.getTotalCount()");
			e.printStackTrace();
		}
		
		return 0;
	}

	public int unblock2(String id) {
		
		try {
			
			String sql = "delete from tblBlock where id = ?";
			
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
