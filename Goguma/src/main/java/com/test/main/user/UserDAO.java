package com.test.main.user;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.HashMap;

import com.test.jdbc.DBUtil;


public class UserDAO {
	
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

	public UserProfileDTO getUserProfile(String userId) {
		
		
		String sql = "select * from tbluserprofile where id=?";
		try {
			conn = open();
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
			conn = open();
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
			conn = open();
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
			conn = open();
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
			conn = open();
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

	public UserDTO getUserData(String id) {
		String sql = "select * from tbluserinfo where id = 'user1'";
		try {
			conn = open();
			pstat = conn.prepareStatement(sql);
			
		}catch(Exception e) {
			System.out.println("UserDAO.getUserData");
			e.printStackTrace();
		}
		return null;
	}
	public UserDTO login(UserDTO dto) {
		try {

			String sql = "select * from vwUserALL WHERE id=? and password=?";
				
			conn = open();
			pstat = conn.prepareStatement(sql);
				
			pstat.setString(1, dto.getId()); //첫번째 ?
			pstat.setString(2, dto.getPw()); //두번째 ?
				
			rs = pstat.executeQuery();
					
			if (rs.next()) {
					
				UserDTO result = new UserDTO();
					
				result.setId(rs.getString("id"));
				result.setPw(rs.getString("password"));
				result.setNickname(rs.getString("nickname"));
				result.setLv(rs.getString("lv"));
					
				return result;
					
			}

		} catch (Exception e) {
			System.out.println("로그인 오류.login()");
			e.printStackTrace();
		}
		
		return null;
	}


	public int userregisterok(UserDTO dto) {
		
		try {
		String sql = "INSERT INTO tbluser VALUES (?, ?, 1)";	
		
		conn = open();
		pstat = conn.prepareStatement(sql);
			
		pstat.setString(1, dto.getId());
		pstat.setString(2, dto.getPw());
			
		return pstat.executeUpdate();
				
		}catch (Exception e) {
			System.out.println("회원가입 오류.login()");
			e.printStackTrace();
		}
		
		return -1;
			
		}
	
	public int userinforegisterok(UserDTO dto) {
		
		try {
		String sql = "INSERT INTO tbluserinfo (id, address_seq, name, address, tel, email, birth, gender) VALUES (?, 1, ?, ?, ?, ?, ?, ?)";	
		
		conn = open();
		pstat = conn.prepareStatement(sql);
			
		pstat.setString(1, dto.getId());
		pstat.setString(2, dto.getName());
		pstat.setString(3, dto.getAddress());
		pstat.setString(4, dto.getTel());
		pstat.setString(5, dto.getEmail());
		pstat.setString(6, dto.getBirth());
		pstat.setString(7, dto.getGender());
			
		return pstat.executeUpdate();
				
		}catch (Exception e) {
			System.out.println("회원가입 오류.login()");
			e.printStackTrace();
		}
		
		return -1;
			
		}
	
	
}
