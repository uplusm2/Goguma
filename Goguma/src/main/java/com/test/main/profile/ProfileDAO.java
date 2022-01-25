package com.test.main.profile;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.HashMap;

import com.test.jdbc.DBUtil;
import com.test.main.community.CommunityDTO;


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

	public ArrayList<ReviewDTO> getPurchaseReviewList(HashMap<String, String> map) {
		ArrayList<ReviewDTO> list = new ArrayList<ReviewDTO>();
		String sql = "select * from(select a.*,rownum as rnum from (select * from vwReceived_buyer_reviews where buyid = ? order by regdate) a) where rnum between ? and ?";
		try {
			pstat = conn.prepareStatement(sql);
			pstat.setString(1, map.get("id"));
			pstat.setString(2, map.get("begin"));
			pstat.setString(3, map.get("end"));
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

	public ArrayList<ReviewDTO> getSalesReviewList(HashMap<String, String> map) {
		
		ArrayList<ReviewDTO> list = new ArrayList<ReviewDTO>();
		String sql = "select * from(select a.*,rownum as rnum from (select * from vwReceived_seller_reviews where selid = ? order by regdate) a) where rnum between ? and ?";
		try {
			pstat = conn.prepareStatement(sql);
			pstat.setString(1, map.get("id"));
			pstat.setString(2, map.get("begin"));
			pstat.setString(3, map.get("end"));
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

	public int getPurchaseTotalPage(HashMap<String, String> map) {
		String sql = "select max(rnum) as cnt from(select a.*,rownum as rnum from (select * from vwReceived_buyer_reviews where buyid = ? order by regdate) a)";
		try {
			pstat = conn.prepareStatement(sql);
			pstat.setString(1, map.get("id"));
			rs = pstat.executeQuery();
			rs.next();
			return rs.getInt("cnt");
		}catch(Exception e) {
			System.out.println("UserDAO.getTotalPage");
			e.printStackTrace();
		}
		return -1;
	}
	
	public int getSalesTotalPage(HashMap<String, String> map) {
		String sql = "select max(rnum) as cnt from(select a.*,rownum as rnum from (select * from vwReceived_seller_reviews where selid = ? order by regdate) a)";
		try {
			pstat = conn.prepareStatement(sql);
			pstat.setString(1, map.get("id"));
			rs = pstat.executeQuery();
			rs.next();
			return rs.getInt("cnt");
		}catch(Exception e) {
			System.out.println("UserDAO.getTotalPage");
			e.printStackTrace();
		}
		return -1;
	}

	public int setProfile( HashMap<String,String> map) {
		
		String sql = "update tbluserprofile set intro = ? , nickname =? , path = ? where id =?";
		
		try {
			pstat = conn.prepareStatement(sql);
			
			pstat.setString(1, map.get("intro"));
			pstat.setString(2, map.get("nickName"));
			pstat.setString(3, map.get("path"));
			pstat.setString(4, map.get("id"));
			
			return pstat.executeUpdate();
		}catch(Exception e) {
			System.out.println("UserDAO.setProfile");
			e.printStackTrace();
		}
		return 0;
		
	}

	public ArrayList<TransactionRecordDTO> getPurchaseRecord(HashMap<String, String> map) {
		ArrayList<TransactionRecordDTO> list = new ArrayList<TransactionRecordDTO>();
		String sql = "select * from(select a.* , rownum as rnum from( select * from (VWPURCHASEDPRODUCT p left outer join tblreview re on p.DEAL_SEQ = re.deal_seq)\r\n"
				+ "where id = ? order by p.regdate) a) where rnum between ? and ? and type = 'B' or type is null";//-- 구매한것
		try {
			
			pstat = conn.prepareStatement(sql);
			pstat.setString(1, map.get("id"));
			pstat.setString(2, map.get("begin"));
			pstat.setString(3, map.get("end"));
			rs = pstat.executeQuery();
			
			while(rs.next()) {
				TransactionRecordDTO dto = new TransactionRecordDTO();
				
				dto.setProduct_seq(rs.getInt("product_seq"));
				dto.setContetnt(rs.getString("CONTENT"));
				dto.setNickname(rs.getString("NICKNAME"));
				dto.setId(rs.getString("id"));
				dto.setSelid(rs.getString("selid"));
				dto.setRegdate(rs.getString("REGDATE"));
				dto.setDeal_seq(rs.getInt("DEAL_SEQ"));
				dto.setType(rs.getString("type"));
				
				dto.setRnum(rs.getInt("rnum"));
				
				list.add(dto);
			}
			return list;
		}catch(Exception e) {
			e.printStackTrace();
		}
		return null;
		
	}

	public int getPurchaseRecordTotalPage(HashMap<String, String> map) {
		String sql = "select -- 구매한것\r\n"
				+ "    count(*) as cnt\r\n"
				+ " from(select a.*,rownum as rnum from(select * from VWPURCHASEDPRODUCT where id = ? order by regdate) a) a\r\n"
				+ "             left outer join tblreview re on a.DEAL_SEQ = re.deal_seq where type = 'B' or type is null";
		try {
			pstat = conn.prepareStatement(sql);
			pstat.setString(1, map.get("id"));
			rs = pstat.executeQuery();
			rs.next();
			return rs.getInt("cnt");
		}catch(Exception e) {
			System.out.println("UserDAO.getTotalPage");
			e.printStackTrace();
		}
		return -1;
	}
	
	public ArrayList<TransactionRecordDTO> getSalesRecord(HashMap<String, String> map) {
		ArrayList<TransactionRecordDTO> list = new ArrayList<TransactionRecordDTO>();
		String sql = "select * from(select a.* , rownum as rnum from( select * from (vwproductsold p left outer join tblreview re on p.DEAL_SEQ = re.deal_seq)\r\n"
				+ "where id = ? order by p.regdate) a) where rnum between ? and ?  and type = 'S' or type is null" ;//판판매한것
		try {
			
			pstat = conn.prepareStatement(sql);
			pstat.setString(1, map.get("id"));
			pstat.setString(2, map.get("begin"));
			pstat.setString(3, map.get("end"));
			rs = pstat.executeQuery();
			
			while(rs.next()) {
				TransactionRecordDTO dto = new TransactionRecordDTO();
				
				dto.setProduct_seq(rs.getInt("product_seq"));
				dto.setContetnt(rs.getString("CONTENT"));
				dto.setNickname(rs.getString("NICKNAME"));
				dto.setId(rs.getString("id"));
				dto.setRegdate(rs.getString("REGDATE"));
				dto.setDeal_seq(rs.getInt("DEAL_SEQ"));
				dto.setType(rs.getString("type"));
				
				dto.setRnum(rs.getInt("rnum"));
				
				list.add(dto);
			}
			return list;
		}catch(Exception e) {
			e.printStackTrace();
		}
		return null;
		
	}

	public int getSalesRecordTotalPage(HashMap<String, String> map) {
		String sql = "select -- 판매한것\r\n"
				+ "    count(*) as cnt\r\n"
				+ " from(select a.*,rownum as rnum from(select * from vwproductsold where id = ? order by regdate) a) a\r\n"
				+ "             left outer join tblreview re on a.DEAL_SEQ = re.deal_seq  where type = 'S' or type is null";
		try {
			pstat = conn.prepareStatement(sql);
			pstat.setString(1, map.get("id"));
			rs = pstat.executeQuery();
			rs.next();
			return rs.getInt("cnt");
		}catch(Exception e) {
			System.out.println("UserDAO.getTotalPage");
			e.printStackTrace();
		}
		return -1;
	}

	public int getMyCommunityTotalCount(HashMap<String, String> map) {
		try {
			String where = "";
			
			String sql = "select count(*) as cnt from vwCommunity where id =?";
			
			pstat = conn.prepareStatement(sql);
			pstat.setString(1, map.get("id"));
			
			rs = pstat.executeQuery();
			
			if (rs.next()) {
				return rs.getInt("cnt");
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		return 0;
	}
	
	public ArrayList<CommunityDTO> myCommunitylist(HashMap<String, String> map){
		try {
			String where = "";

//			if (map.get("searchMod").equals("y")) {
//				where = String.format("where %s like '%%%s%%'"
//							, map.get("column")
//							, map.get("word").replace("'","''"));
//			}
			String sql = "select * from (select c.* , rownum as rnum from (select * from vwCommunity where id = ?  order by community_seq desc) c ) where rnum between ? and ?";
			
			pstat = conn.prepareStatement(sql);
			pstat.setString(1, map.get("id"));
			pstat.setString(2, map.get("begin"));
			pstat.setString(3, map.get("end"));
			
			rs = pstat.executeQuery();

			ArrayList<CommunityDTO> list = new ArrayList<CommunityDTO>();
			
			while(rs.next()){
				CommunityDTO dto = new CommunityDTO();
				dto.setSeq(rs.getString("community_seq"));
				dto.setId(rs.getString("id"));
				dto.setTitle(rs.getString("title"));
				dto.setRegDate(rs.getString("regDate"));
				dto.setReadcount(rs.getInt("readcount"));
				dto.setNickname(rs.getString("nickname"));
				dto.setIsNew(rs.getDouble("isnew"));
				dto.setCommentCount(rs.getInt("commentCount"));
				
				list.add(dto);
			}
			return list;
		} catch (Exception e) {
			e.printStackTrace();
		}
		return null;
	}

	public HashMap<String, Integer> getAvgScore(String id) {
		
		HashMap<String, Integer> map = new HashMap<String, Integer>();
		
		String sql1 = "select avg(SCORE) as avg , count(score) as cnt from vwReceived_seller_reviews where selid = ?";
		String sql2 = "select avg(SCORE) as avg , count(score) as cnt from vwReceived_buyer_reviews where selid = ?";
		try {
			pstat = conn.prepareStatement(sql1);
			pstat.setString(1, id);
			rs = pstat.executeQuery();
			rs.next();
			map.put("purchaseAvg", rs.getInt("avg"));
			map.put("purchaseCnt", rs.getInt("cnt"));

			pstat = conn.prepareStatement(sql2);
			pstat.setString(1, id);
			rs = pstat.executeQuery();
			rs.next();
			map.put("salesAvg", rs.getInt("avg"));
			map.put("salesCnt", rs.getInt("cnt"));
			
			return map;
		}catch(Exception e) {
			e.printStackTrace();
		}
		return null;
	}
}
