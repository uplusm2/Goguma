package com.test.main.admin;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;

import com.test.main.community.ComCommentDTO;
import com.test.main.community.CommunityDTO;

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

	
	//TODO 판매상태 추가하기, 일반 or 경매 추가
	public ArrayList<DealRecordDTO> sellRecordList(String id) {

		try {
			
			String sql = "select p.product_seq, p.name, p.regdate, d.regdate as deal_date, d.id as dealer_id from tblProduct p left outer join tblDeal d on d.product_seq = p.product_seq where p.id = ? order by p.regdate desc, d.regdate desc";
			
			pstat = conn.prepareStatement(sql);
			pstat.setString(1, id);
			
			rs = pstat.executeQuery();
			
			ArrayList<DealRecordDTO> list = new ArrayList<DealRecordDTO>();
			
			while(rs.next()) {
			
				DealRecordDTO dto = new DealRecordDTO();
				
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

	//TODO 일반 or 경매 추가
	public ArrayList<DealRecordDTO> buyRecordList(String id) {
		
		try {
			
			String sql = "select p.product_seq, p.name, p.regdate, d.regdate as deal_date, p.id as dealer_id from tblProduct p inner join tblDeal d on d.product_seq = p.product_seq where d.id = ? order by p.regdate desc, d.regdate desc";
			
			pstat = conn.prepareStatement(sql);
			pstat.setString(1, id);
			
			rs = pstat.executeQuery();
			
			ArrayList<DealRecordDTO> list = new ArrayList<DealRecordDTO>();
			
			while(rs.next()) {
			
				DealRecordDTO dto = new DealRecordDTO();
				
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


	public ArrayList<CommunityDTO> communityRecordList(String id) {
		
		try {

			String sql = "select community_seq, title, regdate from tblCommunity where id = ?";

			pstat = conn.prepareStatement(sql);
			pstat.setString(1, id);

			rs = pstat.executeQuery();

			ArrayList<CommunityDTO> list = new ArrayList<CommunityDTO>();

			while (rs.next()) {

				CommunityDTO dto = new CommunityDTO();

				dto.setSeq(rs.getString("community_seq"));
				dto.setTitle(rs.getString("title"));
				dto.setRegDate(rs.getString("regdate"));

				list.add(dto);

			}

			return list;

		} catch (Exception e) {
			System.out.println("sellRecordList");
			e.printStackTrace();
		}

		return null;
	}


	public ArrayList<ComCommentDTO> comCommentRecordList(String id) {
		
		try {

			String sql = "select * from tblcomcomment where id = ?";

			pstat = conn.prepareStatement(sql);
			pstat.setString(1, id);

			rs = pstat.executeQuery();

			ArrayList<ComCommentDTO> list = new ArrayList<ComCommentDTO>();

			while (rs.next()) {

				ComCommentDTO dto = new ComCommentDTO();

				dto.setSeq(rs.getString("comcomment_seq"));
				dto.setCseq(rs.getString("community_seq"));
				dto.setContent(rs.getString("content"));
				dto.setRegDate(rs.getString("regdate"));

				list.add(dto);

			}

			return list;

		} catch (Exception e) {
			System.out.println("sellRecordList");
			e.printStackTrace();
		}

		return null;
	}


	public ArrayList<QuestionDTO> questionList(String id) {
		
		try {

			String sql = "select * from vwQuestion where id = ?";

			pstat = conn.prepareStatement(sql);
			pstat.setString(1, id);

			rs = pstat.executeQuery();

			ArrayList<QuestionDTO> list = new ArrayList<QuestionDTO>();

			while (rs.next()) {

				QuestionDTO dto = new QuestionDTO();

				dto.setQuestionSeq(rs.getString("question_seq"));
				dto.setType(rs.getString("type"));
				dto.setTitle(rs.getString("title"));
				dto.setRegDate(rs.getString("regdate"));
				dto.setAnswerSeq(rs.getString("answer_seq"));

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
