package com.test.main.product;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.HashMap;

import com.test.jdbc.DBUtil;

public class ProductComDAO {
	
	private Connection conn;
	private Statement stat;
	private PreparedStatement pstat;
	private ResultSet rs;
	
	public static Connection open() {
        Connection conn = null;

        String url = "jdbc:oracle:thin:@goguma_medium?TNS_ADMIN=C://Wallet_goguma";
        String id = "admin";
        String pw = "Goguma970928";

        try {
            Class.forName("oracle.jdbc.driver.OracleDriver");
            conn = DriverManager.getConnection(url, id, pw);
//            conn = DBUtil.open("goguma","java1234");
            return conn;
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }

	
	//레코드 받아오기
	public ProductComDTO get(String seq) {
		
		try {
			String sql = "select * from tblProductComment where product_comment_seq = ?";
			
			pstat = conn.prepareStatement(sql);
			
			pstat.setString(1, seq);
			
			rs = pstat.executeQuery();
			
			if (rs.next()){
				ProductComDTO dto = new ProductComDTO();
				dto.setSeq(rs.getString("product_comment_seq"));
				dto.setProduct_seq(rs.getString("product_seq"));
				dto.setId(rs.getString("id"));
				dto.setComments(rs.getString("comments"));
				dto.setTime(rs.getString("time"));
				
				return dto;
			}
		} catch (Exception e) {
			System.out.println("ProductComDAO.get()");
			e.printStackTrace();
		}
		return null;
	}
	
	//추가하기
	public String add(ProductComDTO dto) {
		try {
			String sql = "insert into tblProductComment values (product_comment_seq.nextVal, ?, ?, ?, sysdate + 0.375)";
			pstat = conn.prepareStatement(sql);
			
			pstat.setString(1, dto.getProduct_seq());
			pstat.setString(2, dto.getId());
			pstat.setString(3, dto.getComments());
			
			pstat.executeUpdate();
			
			sql = "select product_comment_seq from tblProduct where rownum = 1 order by product_comment_seq desc";
			pstat = conn.prepareStatement(sql);
			
			rs = pstat.executeQuery();
			
			if(rs.next()) {
				return rs.getString("product_comment_seq");
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return null;
	}

}