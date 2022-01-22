package com.test.main.admin;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.HashMap;

import com.test.jdbc.DBUtil;


/**
 * 회원 정보 데이터를 입출력하는 DAO
 * @author 이혜인
 *
 */
public class UserDAO {

	private Connection conn;
	private Statement stat; //매개변수X
	private PreparedStatement pstat; //매개변수O
	private ResultSet rs;
	
	public UserDAO() {
		try {
			//TODO dbutil로 바꾸기
			//conn = DBUtil.open();
			conn = open();
			stat = conn.createStatement();
		} catch (Exception e) {
			System.out.println("UserDAO.UserDAO()");
			e.printStackTrace();
		}
	}
	
	/**
	 * 
	 * @param map 검색할 컬럼, 단어, 검색 여부, 페이지 시작과 끝 번호가 담긴 map을 받는다.
	 * @return select한 결과를 ArrayList<UserDTO> 담아 반환한다. 실패하면 null을 반환한다.
	 */
	public ArrayList<UserDTO> list(HashMap<String, String> map) {
		
		try {
			
			String where = "";
			
			if(map.get("searchmode").equals("y")) {
				where = String.format("where %s like '%%%s%%'"
								, map.get("column")
								, map.get("word").replace("'", "''"));
			}
			
			String sql = String.format("select * from (select rownum as rnum, a.* from (select id, name, since, score, state from vwUserAll %s order by since desc) a) where rnum between %s and %s order by since desc", where, map.get("begin"), map.get("end"));
			
			rs = stat.executeQuery(sql);
			
			ArrayList<UserDTO> list = new ArrayList<UserDTO>();
			
			while (rs.next()) {
				//레코드 1줄 -> BoardDTO 1개
				UserDTO dto = new UserDTO();
				
				dto.setId(rs.getString("id"));
				dto.setName(rs.getString("name"));
				dto.setSince(rs.getString("since"));
				dto.setScore(rs.getDouble("score"));
				dto.setState(rs.getString("state"));
				
				list.add(dto);
				
			}
			
			return list;
			
		} catch (Exception e) {
			System.out.println("UserDAO.list()");
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
			
			String sql = "select count(*) as cnt from vwUserAll" + where;
			rs = stat.executeQuery(sql);
			
			if(rs.next()) {
				return rs.getInt("cnt");
			}
			
		} catch (Exception e) {
			System.out.println("BoardDAO.getTotalCount()");
			e.printStackTrace();
		}
		
		return 0;
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

	//Block 서블릿이 id를 주면 tblBlock에 insert
	public int block(String id) {
		
		try {
			
			String sql = "insert into tblBlock (id, block_type_seq, regdate) values (?, 1, default)";
			
			pstat = conn.prepareStatement(sql);
			pstat.setString(1, id);
			
			return pstat.executeUpdate();
			
		} catch (Exception e) {
			System.out.println("UserDAO.block()");
			e.printStackTrace();
		}
		
		return 0;
	}
}
