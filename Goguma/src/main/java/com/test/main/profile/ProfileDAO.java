package com.test.main.profile;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.HashMap;

import com.test.jdbc.DBUtil;


public class ProfileDAO {
	
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
            return conn;
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }
	
	public ProfileDAO() {
//		conn = DBUtil.open("GOGUMA","java1234");
		conn = open();
	}
	public UserProfileDTO getUserProfile(String userId) {
		
		
		String sql = "select * from tbluserprofile where id=?";
		try {
			pstat = conn.prepareStatement(sql);
			pstat.setString(1, userId);
			rs = pstat.executeQuery();
			
			rs.next();
			UserProfileDTO userProfile = new UserProfileDTO();
			
			userProfile.setId(rs.getString("id"));
			userProfile.setNickName(rs.getString("nickname"));
			userProfile.setIntro(rs.getString("intro"));
			userProfile.setPath(rs.getString("path"));
				
			return userProfile;
		}catch(Exception e) {
			System.out.println("UserDAO > getUserProfile Method");
			e.printStackTrace();
		}
		return null;
	}

	public ArrayList<ReviewDTO> getPurchaseReviewList(String userId) {
		ArrayList<ReviewDTO> list = new ArrayList<ReviewDTO>();
		String sql = "select * from vwReceived_buyer_reviews where buyid = ?";
		try {
			pstat = conn.prepareStatement(sql);
			pstat.setString(1, userId);
			rs = pstat.executeQuery();
			
			while(rs.next()) {
				ReviewDTO dto = new ReviewDTO();
				
				dto.setBuyId(rs.getString("buyid"));
				dto.setSelId(rs.getString("selId"));
				dto.setProductcontent(rs.getString("productcontent"));
				dto.setRegdate(rs.getString("regdate"));
				dto.setScore(rs.getInt("score"));
				dto.setReviewcontent(rs.getString("reviewcontent"));
				
				list.add(dto);
			}
			
			return list;
		}catch(Exception e) {
			System.out.println("UserDAO > getPurchaseReviewList Method");
			e.printStackTrace();
		}
		
		return null;
	}

	public ArrayList<ReviewDTO> getSalesReviewList(String userId) {
		ArrayList<ReviewDTO> list = new ArrayList<ReviewDTO>();
		String sql = "select * from vwReceived_seller_reviews where selid = ?";
		try {
			pstat = conn.prepareStatement(sql);
			pstat.setString(1, userId);
			rs = pstat.executeQuery();
			
			while(rs.next()) {
				ReviewDTO dto = new ReviewDTO();
				
				dto.setBuyId(rs.getString("buyid"));
				dto.setSelId(rs.getString("selId"));
				dto.setProductcontent(rs.getString("productcontent"));
				dto.setRegdate(rs.getString("regdate"));
				dto.setScore(rs.getInt("score"));
				dto.setReviewcontent(rs.getString("reviewcontent"));
				
				list.add(dto);
			}
			
			return list;
		}catch(Exception e) {
			System.out.println("UserDAO > getSalesReviewList Method");
			e.printStackTrace();
		}
		
		return null;
	}
	

	public int getTotalPage(String userId) {
		String sql = "select count(*) as cnt from(select rownum as seq, a.* from (select * from vwReceived_buyer_reviews where buyid = 'userId' order by regdate) a)";
		try {
			rs = conn.prepareStatement(sql).executeQuery();
			rs.next();
			return rs.getInt("cnt");
		}catch(Exception e) {
			System.out.println("UserDAO.getTotalPage");
			e.printStackTrace();
		}
		return -1;
	}

	public int setProfile( HashMap<String,String> map) {
		
		String sql = "update tbluserprofile set intro = ? , nickname =? , path = 'default image.jpg' where id =?";
		
		try {
			pstat = conn.prepareStatement(sql);
			
			pstat.setString(1, map.get("intro"));
			pstat.setString(2, map.get("nickName"));
			pstat.setString(3, map.get("id"));
			
			return pstat.executeUpdate();
		}catch(Exception e) {
			System.out.println("UserDAO.setProfile");
			e.printStackTrace();
		}
		return 0;
		
	}

	public ArrayList<TransactionRecordDTO> getPurchaseRecord(String id) {
		ArrayList<TransactionRecordDTO> list = new ArrayList<TransactionRecordDTO>();
		String sql = "select * from vwPurchasedProduct where id = ?";
		try {
			
			pstat = conn.prepareStatement(sql);
			pstat.setString(1, id);
			rs = pstat.executeQuery();
			
			while(rs.next()) {
				TransactionRecordDTO dto = new TransactionRecordDTO();
				dto.setPRODUCT_SEQ(rs.getInt("product_seq"));
				dto.setContetnt(rs.getString("CONTENT"));
				dto.setNickname(rs.getString("NICKNAME"));
				dto.setId(rs.getString("id"));
				dto.setRegdate(rs.getString("REGDATE"));
				
				list.add(dto);
			}
			return list;
		}catch(Exception e) {
			e.printStackTrace();
		}
		return null;
		
	}
	
}
