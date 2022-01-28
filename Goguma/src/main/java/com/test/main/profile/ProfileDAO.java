package com.test.main.profile;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.HashMap;

import com.test.jdbc.DBUtil;
import com.test.main.center.CenterDTO;
import com.test.main.community.CommunityDTO;
import com.test.main.product.ProductDTO;
import com.test.main.user.UserDTO;

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
//		conn = DBUtil.open("localhost","GOGUMA", "java1234");
		conn = DBUtil.open("GOGUMA", "java1234");
//		conn = open();
		try {
			stat = conn.createStatement();
		} catch (SQLException e) {
			e.printStackTrace();
		}
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
		} catch (Exception e) {
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

			while (rs.next()) {
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
		} catch (Exception e) {
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

			while (rs.next()) {
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
		} catch (Exception e) {
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
		} catch (Exception e) {
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
		} catch (Exception e) {
			System.out.println("UserDAO.getTotalPage");
			e.printStackTrace();
		}
		return -1;
	}

	public int setProfile(HashMap<String, String> map) {

		String sql = "update tbluserprofile set intro = ? , nickname =? , path = ? where id =?";

		try {
			pstat = conn.prepareStatement(sql);

			pstat.setString(1, map.get("intro"));
			pstat.setString(2, map.get("nickName"));
			pstat.setString(3, map.get("path"));
			pstat.setString(4, map.get("id"));

			return pstat.executeUpdate();
		} catch (Exception e) {
			System.out.println("UserDAO.setProfile");
			e.printStackTrace();
		}
		return 0;

	}

	public ArrayList<TransactionRecordDTO> getPurchaseRecord(HashMap<String, String> map) {
		ArrayList<TransactionRecordDTO> list = new ArrayList<TransactionRecordDTO>();
		String sql = "select \r\n"
				+ "     *\r\n"
				+ "from(select a.* , rownum as rnum from( select \r\n"
				+ "p.Product_seq,p.content,p.nickname,p.id,p.selid,p.regdate,re.deal_seq,re.type,re.CONTENT as review\r\n"
				+ "from (VWPURCHASEDPRODUCT p left outer join tblreview re on p.DEAL_SEQ = re.deal_seq)\r\n"
				+ "		 where type = 'B' and id = ? order by p.regdate) a) where rnum between ? and ?";// --
																													// 구매한것
		try {

			pstat = conn.prepareStatement(sql);
			pstat.setString(1, map.get("id"));
			pstat.setInt(2, Integer.parseInt(map.get("begin")));
			pstat.setInt(3, Integer.parseInt(map.get("end")));
			rs = pstat.executeQuery();

			while (rs.next()) {
				TransactionRecordDTO dto = new TransactionRecordDTO();

				dto.setProduct_seq(rs.getInt("product_seq"));
				dto.setContetnt(rs.getString("CONTENT"));
				dto.setNickname(rs.getString("NICKNAME"));
				dto.setId(rs.getString("id"));
				dto.setSelid(rs.getString("selid"));
				dto.setRegdate(rs.getString("REGDATE"));
				dto.setDeal_seq(rs.getInt("DEAL_SEQ"));
				dto.setType(rs.getString("type"));

				dto.setReview(rs.getString("review"));
				dto.setRnum(rs.getInt("rnum"));

				list.add(dto);
			}
			return list;
		} catch (Exception e) {
			e.printStackTrace();
		}
		return null;

	}

	public int getPurchaseRecordTotalPage(HashMap<String, String> map) {
		String sql = "select \r\n"
				+ "     count(*) as cnt\r\n"
				+ "from(select a.* , rownum as rnum from( select \r\n"
				+ "p.Product_seq,p.content,p.nickname,p.id,p.selid,p.regdate,re.type,re.deal_seq,re.CONTENT as review\r\n"
				+ "from (VWPURCHASEDPRODUCT p left outer join tblreview re on p.DEAL_SEQ = re.deal_seq)\r\n"
				+ "		 where type = 'B' and id = ? order by p.regdate) a)";
		try {
			pstat = conn.prepareStatement(sql);
			pstat.setString(1, map.get("id"));
			rs = pstat.executeQuery();
			rs.next();
			return rs.getInt("cnt");
		} catch (Exception e) {
			System.out.println("UserDAO.getTotalPage");
			e.printStackTrace();
		}
		return -1;
	}

	public ArrayList<TransactionRecordDTO> getSalesRecord(HashMap<String, String> map) {
		ArrayList<TransactionRecordDTO> list = new ArrayList<TransactionRecordDTO>();
		String sql = "select \r\n"
				+ "     *\r\n"
				+ "from(select a.* , rownum as rnum from( select \r\n"
				+ "p.Product_seq,p.content,p.nickname,p.id,p.BUYID,p.regdate,re.type,re.deal_seq,re.CONTENT as review\r\n"
				+ "from (vwproductsold p left outer join tblreview re on p.DEAL_SEQ = re.deal_seq)\r\n"
				+ "		 where type = 'S' and id = ? order by p.regdate) a) where rnum between ? and ?";// 판매한것
		try {

			pstat = conn.prepareStatement(sql);
			pstat.setString(1, map.get("id"));
			pstat.setInt(2, Integer.parseInt(map.get("begin")));
			pstat.setInt(3, Integer.parseInt(map.get("end")));
			rs = pstat.executeQuery();

			while (rs.next()) {
				TransactionRecordDTO dto = new TransactionRecordDTO();

				dto.setProduct_seq(rs.getInt("product_seq"));
				dto.setContetnt(rs.getString("CONTENT"));
				dto.setNickname(rs.getString("NICKNAME"));
				dto.setId(rs.getString("id"));
				dto.setSelid(rs.getString("buyid"));
				dto.setRegdate(rs.getString("REGDATE"));
				dto.setDeal_seq(rs.getInt("DEAL_SEQ"));
				dto.setType(rs.getString("type"));

				dto.setReview(rs.getString("review"));
				dto.setRnum(rs.getInt("rnum"));


				list.add(dto);
			}
			return list;
		} catch (Exception e) {
			e.printStackTrace();
		}
		return null;

	}

	public int getSalesRecordTotalPage(HashMap<String, String> map) {
		String sql = "select \r\n"
				+ "     count(*) as cnt\r\n"
				+ "from(select a.* , rownum as rnum from( select \r\n"
				+ "p.Product_seq,p.content,p.nickname,p.id,p.BUYID,p.regdate,re.type,re.deal_seq,re.CONTENT as review\r\n"
				+ "from (vwproductsold p left outer join tblreview re on p.DEAL_SEQ = re.deal_seq)\r\n"
				+ "		 where type = 'S' and id = ? order by p.regdate) a)";
		try {
			pstat = conn.prepareStatement(sql);
			pstat.setString(1, map.get("id"));
			rs = pstat.executeQuery();
			rs.next();
			return rs.getInt("cnt");
		} catch (Exception e) {
			System.out.println("UserDAO.getTotalPage");
			e.printStackTrace();
		}
		return -1;
	}

	public int getMyCommunityTotalCount(HashMap<String, String> map) {
		try {
			String where = "";
			if (map.get("searchmode").equals("y")) {
				where += String.format(" and %s like '%%%s%%'"
								, map.get("column")
								, map.get("word"));	
			}

			String sql = "select count(*) as cnt from vwCommunity where id =? "+where;

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

	public ArrayList<CommunityDTO> myCommunitylist(HashMap<String, String> map) {
		try {
			String where = "";
			
			if (map.get("searchmode").equals("y")) {
				where = String.format("and %s like '%%%s%%'"
							, map.get("column")
							, map.get("word").replace("'","''"));
			}
			String sql = String.format("select * from (select c.* , rownum as rnum from (select * from vwCommunity where id = ?   %s  order by community_seq desc) c ) where rnum between ? and ?",where);

			pstat = conn.prepareStatement(sql);
			pstat.setString(1, map.get("id"));
			pstat.setString(2, map.get("begin"));
			pstat.setString(3, map.get("end"));

			rs = pstat.executeQuery();

			ArrayList<CommunityDTO> list = new ArrayList<CommunityDTO>();

			while (rs.next()) {
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
		String sql2 = "select avg(SCORE) as avg , count(score) as cnt from vwReceived_buyer_reviews where BUYID = ?";
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
		} catch (Exception e) {
			e.printStackTrace();
		}
		return null;
	}

	public int setPurchaseReview(HashMap<String, String> map) {
		String sql = "update tblReview set score= ?,content=? where type=? and deal_seq=?";
		try {
			pstat = conn.prepareStatement(sql);
			pstat.setString(1, map.get("score"));
			pstat.setString(2, map.get("content"));
			pstat.setString(3, map.get("type"));
			pstat.setString(4, map.get("deal_seq"));

			return pstat.executeUpdate();

		} catch (Exception e) {
			e.printStackTrace();
		}
		return 0;
	}

	public int setSalesReview(HashMap<String, String> map) {
		String sql = "update tblReview set score= ?,content=? where type=? and deal_seq=?";
		try {
			pstat = conn.prepareStatement(sql);
			pstat.setString(1, map.get("score"));
			pstat.setString(2, map.get("content"));
			pstat.setString(3, map.get("type"));
			pstat.setString(4, map.get("deal_seq"));

			return pstat.executeUpdate();

		} catch (Exception e) {
			e.printStackTrace();
		}
		return 0;
	}

	public int getMyQuestionListCount(HashMap<String, String> map) {
		try {
			String where = "";

			if (map.get("searchmode").equals("y")) {
				where = String.format(" and title like '%%%s%%'", map.get("word").replace("'", "''"));
			}
			stat = conn.createStatement();
			String sql = String.format("select count(*) as cnt from tblquestion where question_type_seq = %s and id = '%s' ",map.get("search"),map.get("id").toLowerCase());
			sql = sql + where;

			rs = stat.executeQuery(sql);

			if (rs.next()) {
				return rs.getInt("cnt");
			}

		} catch (Exception e) {
			System.out.println("profile.getqTotalCount()");
			e.printStackTrace();
		}

		return 0;
	}

	public ArrayList<CenterDTO> myQuestionList(HashMap<String, String> map) {
		try {

			String where = "";

			if (map.get("searchmode").equals("y")) {
				where = String.format("where %s like '%%%s%%'", map.get("column"), map.get("word").replace("'", "''"));
			}

			System.out.println(where);

			String sql = String.format(
					"select * from (select rownum as rnum, a.* from (select * from tblquestion %s order by regdate desc) a where question_type_seq = %s order by regdate desc) where rnum between %s and %s and id = '%s'",
					where, map.get("search"), map.get("begin"), map.get("end"),map.get("id"));

			System.out.println(sql);

			rs = stat.executeQuery(sql);

			ArrayList<CenterDTO> list = new ArrayList<CenterDTO>();

			while (rs.next()) {

				CenterDTO dto = new CenterDTO();

				dto.setSeq(rs.getString("question_seq"));
				dto.setUser(rs.getString("id"));
				dto.setType(rs.getString("question_type_seq"));
				dto.setTitle(rs.getString("title"));
				dto.setContent(rs.getString("content"));
				dto.setRegdate(rs.getString("regdate"));
				dto.setRnum(rs.getString("rnum"));
				list.add(dto);
			}

			return list;

		} catch (Exception e) {
			e.printStackTrace();
		}
		return null;
	}
	public UserDTO getAllUserData(String id) {
		
		try {
		String sql = "select \r\n"
				+ "    v.id\r\n"
				+ "    ,v.name\r\n"
				+ "    ,v.nickname\r\n"
				+ "    ,case when tbluserinfo.gender = 'm' then '남성'\r\n"
				+ "          when tbluserinfo.gender = 'f' then '여성'\r\n"
				+ "          end as gender\r\n"
				+ "    ,v.tel"
				+ "    ,v.email\r\n"
				+ "    ,v.address\r\n"
				+ "    ,TO_CHAR(v.birth, 'YYYY-MM-DD') as birth \r\n"
				+ "from vwuserall v inner join tbluserinfo on v.id = tbluserinfo.id \r\n"
				+ "    where v.id=?";	
		
		pstat = conn.prepareStatement(sql);
		
		pstat.setString(1, id);
		
		rs = pstat.executeQuery();
		
		UserDTO dto = new UserDTO();
		
		if(rs.next()) {
			dto.setId(rs.getString("id"));
			dto.setName(rs.getString("name"));
			dto.setNickname(rs.getString("nickname"));
			dto.setGender(rs.getString("gender"));
			dto.setTel(rs.getString("tel"));
			dto.setEmail(rs.getString("email"));
			dto.setAddress(rs.getString("address"));
			dto.setBirth(rs.getString("birth"));
		}
		return dto ;
		}catch (Exception e) {
			System.out.println("회원가입 오류.login()");
			e.printStackTrace();
		}
		
		return null;
			
		}

	public int setMemberData(UserDTO dto) {
		int check = 0;
		String updatePw = "update tbluser set password = ? where id = ?";
		String UpdateInfo= "update tbluserinfo set address = ? , email = ? ,gender= ? where id = ?";
		
		try {
			
			pstat = conn.prepareStatement(updatePw);
			pstat.setString(1, dto.getPw());
			pstat.setString(2, dto.getId());
			check += pstat.executeUpdate();
			
			
			pstat = conn.prepareStatement(UpdateInfo);
			pstat.setString(1, dto.getAddress());
			pstat.setString(2, dto.getEmail());
			pstat.setString(3, dto.getGender());
			pstat.setString(4, dto.getId());
			check += pstat.executeUpdate();
			
			return check;
		}catch(Exception e) {
			e.printStackTrace();
		}
		return -1;
	}

	public int addSecessionUser(HashMap<String, String> map) {
		String sql = "insert into tblWithdraw (id, withdraw_type_seq, time) values (?, ?, default)";
		try {
			pstat = conn.prepareStatement(sql);
			pstat.setString(1, map.get("id"));
			pstat.setString(2, map.get("withdrawtype"));
			
			return pstat.executeUpdate();
		}catch(Exception e) {
			e.printStackTrace();
		}
		return -1;
	}

	public int getMyProductTotalPage(HashMap<String, String> map) {
		String sql = "select count(*) as cnt from(select a.*,rownum as num from( select * from tblproduct where id = ? order by regdate desc) a)";
		try {
			pstat = conn.prepareStatement(sql);
			pstat.setString(1, map.get("id"));
			rs = pstat.executeQuery();
			
			rs.next();
			
			return rs.getInt("cnt");
		}catch(Exception e ) {
			e.printStackTrace();
		}
		return 0;
	}

	public ArrayList<ProductDTO> getMyProductList(HashMap<String, String> map) {
		String sql = "select * from(select a.*,rownum as rnum from( select * from tblproduct where id = ? order by regdate desc) a) where rnum between ? and ?";
		try {
			ArrayList<ProductDTO> list = new ArrayList<ProductDTO>();
			
			pstat = conn.prepareStatement(sql);
			pstat.setString(1, map.get("id"));
			pstat.setString(2, map.get("begin"));
			pstat.setString(3, map.get("end"));
			rs = pstat.executeQuery();
			
			while(rs.next()) {
				ProductDTO dto = new ProductDTO();
				
				dto.setSeq(rs.getString("PRODUCT_SEQ"));
				dto.setId(rs.getString("ID"));
				dto.setAddress_seq(rs.getString("ADDRESS_SEQ"));
				dto.setProduct_type_seq(rs.getString("PRODUCT_TYPE_SEQ"));
				dto.setName(rs.getString("NAME"));
				dto.setPrice(rs.getString("PRICE"));
				dto.setIs_auction(rs.getString("IS_AUCTION"));
				dto.setContent(rs.getString("CONTENT"));
				dto.setRegdate(rs.getString("REGDATE"));
				dto.setIs_completion(rs.getString("IS_COMPLETION"));
				dto.setReadcount(rs.getInt("READCOUNT"));
				dto.setIs_deletion(rs.getString("IS_DELETION"));		
				list.add(dto);
			}
			return list;
		}catch(Exception e) {
			e.printStackTrace();
		}
		return null;
	}

	public String setProductData(HashMap<String, String> map) {
		String sql1 = "insert into tblProduct \r\n"
				+ "(product_seq, id, address_seq, product_type_seq, name, price, is_auction, content, regdate, is_completion, readcount, is_deletion) \r\n"
				+ "values (product_seq.nextVal+100, ?, ?, ?, ?, ?, ?, ?, DEFAULT, DEFAULT, DEFAULT, DEFAULT)";
		String sql2 = "select max(product_seq) as max from tblProduct";
		try {
			
			pstat = conn.prepareStatement(sql1);
			System.out.println(map.toString());
//			pstat.setString(1, map.get("product_seq+100"));
			pstat.setString(1, map.get("id"));
			pstat.setString(2, map.get("address_seq"));
			pstat.setString(3, map.get("product_type_seq"));
			pstat.setString(4, map.get("name"));
			pstat.setString(5, map.get("price"));
			pstat.setString(6, map.get("is_auction"));
			pstat.setString(7, map.get("content"));
//			pstat.setString(9, map.get("regdate"));
//			pstat.setString(10, map.get("is_completion"));
//			pstat.setString(11, map.get("readcount"));
//			pstat.setString(12, map.get("is_deletion"));
			
			int i = pstat.executeUpdate();
			
			if(i==0) System.out.println("ProfileDAO.setProductData");
			
			pstat = conn.prepareStatement(sql2);
			rs=pstat.executeQuery();
			
			rs.next();
			
			return rs.getString("max");
		}catch(Exception e) {
			e.printStackTrace();
		}
		return null;
	}

	public int setProductImage(HashMap<String, String> map2) {
		String sql = "INSERT INTO TBLPRODUCTIMAGE (PRODUCT_IMG_SEQ, PRODUCT_SEQ, PATH) \r\n"
				+ "VALUES (product_img_seq.nextval+200, ?, ?)";
		try {
			System.out.println(map2.toString());
			pstat = conn.prepareStatement(sql);
//			pstat.setString(1, map2.get("PRODUCT_IMG_SEQ"));
			pstat.setString(1, map2.get("PRODUCT_SEQ"));
			pstat.setString(2, map2.get("PATH"));
			
			return pstat.executeUpdate();
		}catch(Exception e) {
			e.printStackTrace();
		}
		return 0;
	}
}































