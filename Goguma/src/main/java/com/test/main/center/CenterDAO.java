package com.test.main.center;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.HashMap;

import com.test.jdbc.DBUtil;

public class CenterDAO {

	
	private Connection conn;
	private Statement stat; //매개변수X
	private PreparedStatement pstat; //매개변수O
	private ResultSet rs;
	
	public CenterDAO(){
		
		try {

			conn = DBUtil.open("goguma","java1234");
			stat = conn.createStatement();

		} catch (Exception e) {
			e.printStackTrace();
		}
		
	}
	
	

	public ArrayList<CenterDTO> faqlist(HashMap<String, String> map) {
		try {
			
			if(map.get("search") == null || map.get("search").equals("")) {
				map.replace("search", "1");
			}
			
			String sql  = String.format("select * from (select rownum as rnum, a.* from tblfaq a where question_type_seq = %s) where rnum between %s and %s order by faq_seq",map.get("search"),map.get("begin"),map.get("end"));
			
			
			rs = stat.executeQuery(sql);
			
			ArrayList<CenterDTO> list = new ArrayList<CenterDTO>();
			
			
			while (rs.next()) {
				CenterDTO dto = new CenterDTO();
				dto.setSeq(rs.getString("FAQ_SEQ"));
				dto.setQuestionseq(rs.getString("question_type_seq"));
				dto.setTitle(rs.getString("title"));
				dto.setContent(rs.getString("contents"));
			
	
				list.add(dto);
			}
			
			return list;
		
		}catch (Exception e) {
			e.printStackTrace();
		}
		
		return null;
	}
	
	public int getTotalCount(String search) {
		
		try {
						
			String sql  = String.format("select count(*) as cnt from tblfaq where question_type_seq = %s", search);
			
			rs = stat.executeQuery(sql);
			
			
			if (rs.next()) {
				return rs.getInt("cnt");
			}
			
		} catch (Exception e) {
			System.out.println("CenterDAO.getTotalCount()");
			e.printStackTrace();
		}
		
		return 0;
		
	}



	public int add(CenterDTO dto) {
		try {

			String sql = "insert into tblfaq (faq_seq, question_type_seq ,title, contents) values (faq_seq.nextVal, ?, ?, ?)";
			pstat = conn.prepareStatement(sql);
			
			pstat.setString(1, dto.getType());  //X
			pstat.setString(2, dto.getTitle()); //O
			pstat.setString(3, dto.getContent()); //O
				
			return pstat.executeUpdate();
			
			
		} catch (Exception e) {
			System.out.println("BoardDAO.add()");
			e.printStackTrace();
		}
		
		return 0;
	}



	public CenterDTO get(String seq) {
		try {

			String sql = "select * from tblfaq where faq_seq = ?";
			
			pstat = conn.prepareStatement(sql);
			
			pstat.setString(1, seq);
			
			rs = pstat.executeQuery();
			
			
			if (rs.next()) {
				CenterDTO dto = new CenterDTO();
				
				dto.setSeq(rs.getString("faq_seq"));
				dto.setTitle(rs.getString("title"));
				dto.setContent(rs.getString("contents"));
				dto.setType(rs.getString("question_type_seq"));
				
				return dto;
			}

		} catch (Exception e) {
			System.out.println("CenterDAO.get()");
			e.printStackTrace();
		}
		
		return null;
	}



	public int edit(CenterDTO dto) {
		try {

			String sql = "update tblfaq set title = ?, contents = ?, question_type_seq = ? where faq_seq = ?";
			
			pstat = conn.prepareStatement(sql);
			
			pstat.setString(1, dto.getTitle());
			pstat.setString(2, dto.getContent());
			pstat.setString(3, dto.getType());
			pstat.setString(4, dto.getSeq());
			
			return pstat.executeUpdate();

		} catch (Exception e) {
			System.out.println("CenterDAO.edit()");
			e.printStackTrace();
		}
		
		return 0;
	}



	public int del(String seq) {
		try {

			String sql = "delete from tblfaq where faq_seq = ?";
			
			pstat = conn.prepareStatement(sql);
			
			pstat.setString(1, seq);
			
			return pstat.executeUpdate();
			
		} catch (Exception e) {
			System.out.println("CenterDAO.del()");
			e.printStackTrace();
		}
		
		return 0;
	}


	//공지사항리스트 가져오기
	public ArrayList<CenterDTO> noticelist(HashMap<String, String> map) {
		try {
					
			String sql  = String.format("select * from (select rownum as rnum, a.* from (select * from tblnotice order by notice_seq desc) a) where rnum between %s and %s",map.get("begin"),map.get("end"));
			

			rs = stat.executeQuery(sql);
			
			ArrayList<CenterDTO> list = new ArrayList<CenterDTO>();
			
			while (rs.next()) {
				CenterDTO dto = new CenterDTO();
				dto.setSeq(rs.getString("notice_seq"));
				dto.setTitle(rs.getString("title"));
				dto.setContent(rs.getString("content"));
				dto.setRegdate(rs.getString("regdate"));
				
				list.add(dto);
			}
			
			return list;
		
		}catch (Exception e) {
			e.printStackTrace();
		}
		return null;
	}
	
	public int getTotalCount() {
		
		try {
						
			String sql  = "select count(*) as cnt from tblnotice";
			
			rs = stat.executeQuery(sql);
			
			
			if (rs.next()) {
				return rs.getInt("cnt");
			}
			
		} catch (Exception e) {
			System.out.println("CenterDAO.getTotalCount()");
			e.printStackTrace();
		}
		
		return 0;
		
	}
	
	public CenterDTO noticeGet(String seq) {
		try {

			String sql = "select * from tblnotice where notice_seq = ?";
			
			pstat = conn.prepareStatement(sql);
			
			pstat.setString(1, seq);
			
			rs = pstat.executeQuery();
			
			
			if (rs.next()) {
				CenterDTO dto = new CenterDTO();
				
				dto.setSeq(rs.getString("notice_seq"));
				dto.setTitle(rs.getString("title"));
				dto.setContent(rs.getString("content"));
				dto.setRegdate(rs.getString("regdate"));
				/* dto.Img(rs.getString("path")); */
				
				return dto;
			}

		} catch (Exception e) {
			System.out.println("CenterDAO.get()");
			e.printStackTrace();
		}
		
		return null;
	}



	public int noticeedit(CenterDTO dto) {
		try {

			String sql = "update tblnotice set title = ?, content = ? where notice_seq = ?";
			
			pstat = conn.prepareStatement(sql);
			
			pstat.setString(1, dto.getTitle());
			pstat.setString(2, dto.getContent());
			pstat.setString(3, dto.getSeq());
			
			return pstat.executeUpdate();

		} catch (Exception e) {
			System.out.println("CenterDAO.edit()");
			e.printStackTrace();
		}
		
		return 0;
	}



	public int noticeDel(String seq) {
		try {
			
			
			String sql = "delete from tblnotice where notice_seq = ?";
			
			pstat = conn.prepareStatement(sql);
			
			pstat.setString(1, seq);
			
			return pstat.executeUpdate();
			
		} catch (Exception e) {
			System.out.println("CenterDAO.noticeDel()");
			e.printStackTrace();
		}
		
		return 0;
	}



	public ArrayList<CenterDTO> questionlist(HashMap<String, String> map) {
		try {
			
			String sql  = String.format("select * from (select rownum as rnum, a.* from (select * from tblquestion order by regdate desc) a where question_type_seq = %s order by regdate desc) where rnum between %s and %s",map.get("search"),map.get("begin"),map.get("end"));
			
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
		
		}catch (Exception e) {
			e.printStackTrace();
		}
		return null;
	}
	public int getqTotalCount(String search) {
		
		try {
						
			String sql  = String.format("select count(*) as cnt from tblquestion where question_type_seq = %s", search);
			
			rs = stat.executeQuery(sql);
			
			
			if (rs.next()) {
				return rs.getInt("cnt");
			}
			
		} catch (Exception e) {
			System.out.println("CenterDAO.getqTotalCount()");
			e.printStackTrace();
		}
		
		return 0;
		
	}



	public CenterDTO questionGet(String seq) {
		try {

			String sql = "select * from tblquestion where question_seq = ?";
			
			pstat = conn.prepareStatement(sql);
			
			pstat.setString(1, seq);
			
			rs = pstat.executeQuery();
			
			
			if (rs.next()) {
				CenterDTO dto = new CenterDTO();
				
				dto.setSeq(rs.getString("question_seq"));
				dto.setUser(rs.getString("id"));
				dto.setType(rs.getString("question_type_seq"));
				dto.setTitle(rs.getString("title"));
				dto.setContent(rs.getString("content"));
				dto.setRegdate(rs.getString("regdate"));
				
				return dto;
			}

		} catch (Exception e) {
			System.out.println("CenterDAO.questionget()");
			e.printStackTrace();
		}
		
		return null;
	}



	public CenterDTO replyGet(String seq) {
		try {
			
			String sql = "select * from tblquestionandanswer where question_seq = ?";
			
			pstat = conn.prepareStatement(sql);
			
			pstat.setString(1, seq);
			
			rs = pstat.executeQuery();
			
			
			if (rs.next()) {
				CenterDTO dto = new CenterDTO();
				
				dto.setSeq(rs.getString("question_seq"));
				dto.setRegdate(rs.getString("regdate"));
				dto.setContent(rs.getString("content"));
				
				return dto;
				
			}

		} catch (Exception e) {
			System.out.println("CenterDAO.questionreplyget()");
			e.printStackTrace();
		}
		
		return null;
	}



	public int questionadd(CenterDTO dto) {
		
		try {

			String sql = "insert into tblquestion (question_seq, id, question_type_seq ,title, content, regdate) values (question_seq.nextVal, ?, ?, ?, ?, default)";
			pstat = conn.prepareStatement(sql);
			
			
			pstat.setString(1, dto.getUser());  //X
			pstat.setString(2, dto.getType());  //X
			pstat.setString(3, dto.getTitle()); //O
			pstat.setString(4, dto.getContent()); //O
				
			return pstat.executeUpdate();
			
			
		} catch (Exception e) {
			System.out.println("BoardDAO.add()");
			e.printStackTrace();
		}
		
		return 0;
	}



	public int questionedit(CenterDTO dto) {
		try {

			String sql = "update tblquestion set title = ?, content = ?, question_type_seq = ? where question_seq = ?";
			
			pstat = conn.prepareStatement(sql);
			
			pstat.setString(1, dto.getTitle());
			System.out.println(dto.getTitle());
			pstat.setString(2, dto.getContent());
			pstat.setString(3, dto.getType());
			pstat.setString(4, dto.getSeq());
			
			return pstat.executeUpdate();

		} catch (Exception e) {
			System.out.println("CenterDAO.questionedit()");
			e.printStackTrace();
		}
		
		return 0;
	}



	public int questionDel(String seq) {
		try {
			
			
			String sql = "delete from tblquestion where question_seq = ?";
			
			pstat = conn.prepareStatement(sql);
			
			pstat.setString(1, seq);
			
			return pstat.executeUpdate();
			
		} catch (Exception e) {
			System.out.println("CenterDAO.noticeDel()");
			e.printStackTrace();
		}
		
		return 0;
	}



	public int replyadd(CenterDTO dto) {
		try {

			String sql = "insert into tblquestionandanswer (question_seq, content, regdate) values (?, ?, default)";
			pstat = conn.prepareStatement(sql);
			
			
			pstat.setString(1, dto.getSeq());  //X
			pstat.setString(2, dto.getContent()); //O
				
			return pstat.executeUpdate();
			
			
		} catch (Exception e) {
			System.out.println("CenterDAO.replyadd()");
			e.printStackTrace();
		}
		
		return 0;
	}



	public int replyedit(CenterDTO dto) {
		try {

			String sql = "update tblquestionandanswer set content = ? where question_seq = ?";
			
			pstat = conn.prepareStatement(sql);
			
			
			pstat.setString(1, dto.getContent());
			pstat.setString(2, dto.getSeq());
			
			return pstat.executeUpdate();

		} catch (Exception e) {
			System.out.println("CenterDAO.questionedit()");
			e.printStackTrace();
		}
		
		return 0;
	}

}
	

