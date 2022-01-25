package com.test.main.admin;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;

public class RecordDAO {

	private Connection conn;
	private Statement stat; //매개변수X
	private PreparedStatement pstat; //매개변수O
	private ResultSet rs;
	
	public RecordDAO() {
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


	public ArrayList<SellRecordDTO> sellRecordList(String id) {

		try {
			
			String sql = "select p.product_seq, p.id, p.name, p.regdate, d.regdate as deal_date, d.id as dealer_id from tblProduct p left outer join tblDeal d on d.product_seq = p.product_seq where p.id = ? order by p.regdate desc, d.regdate desc";
			
			pstat = conn.prepareStatement(sql);
			pstat.setString(1, id);
			
			rs = pstat.executeQuery();
			
			ArrayList<SellRecordDTO> list = new ArrayList<SellRecordDTO>();
			
			while(rs.next()) {
			
				SellRecordDTO dto = new SellRecordDTO();
				
				dto.setProductSeq(rs.getString("product_seq"));
				dto.setName(rs.getString("name"));
				dto.setRegDate(rs.getString("regdate"));
				dto.setDealDate(rs.getString("deal_date"));
				dto.setDealerId(rs.getString("dealer_id"));
				
				list.add(dto);

			}
			
			return list;
			
		} catch (Exception e) {
			System.out.println("sellRecordList");
			e.printStackTrace();
		}
		return null;
	}

}
