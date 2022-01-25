package com.test.main.product;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.HashMap;

import com.test.main.product.ProductComDTO;
import com.test.main.product.ProductDTO;

public class ProductDAO {

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
	
	//댓글리스트 가져오기
	public ArrayList<ProductComDTO> productlistComment(String seq) {
		
		try {

			String sql = "select tblProductComment.*, (select name from tblUser where id = tblProductComment.id) as name from tblProductComment where bseq = ? order by seq desc";
			
			pstat = conn.prepareStatement(sql);
			pstat.setString(1, seq);
			
			rs = pstat.executeQuery();
			
			ArrayList<ProductComDTO> clist = new ArrayList<ProductComDTO>();
			
			while (rs.next()) {
				//레코드 1줄 > DTO 1개
				ProductComDTO dto = new ProductComDTO();
				
				dto.setSeq(rs.getString("product_comment_seq"));
				dto.setProduct_seq(rs.getString("product_seq"));
				dto.setId(rs.getString("id"));
				dto.setComments(rs.getString("comments"));
				dto.setTime(rs.getString("time"));
				
				clist.add(dto);
			}
			
			return clist;

		} catch (Exception e) {
			System.out.println("ProductDAO.listComment()");
			e.printStackTrace();
		}
		
		return null;
	}
	  
	 
	//게시물리스트
	  public ArrayList<ProductDTO> productlist(HashMap<String, String> map) {
			
			try {

				String where = "";
				
				if (map.get("searchmode").equals("y")) {
					where = String.format("and %s like '%%%s%%'"
									, map.get("column")
									, map.get("word").replace("'", "''"));
				}
				
				String sql = String.format("select * from (select rownum as rnum, a.* from (select * from tblProduct order by seq desc) a) where rnum between %s and %s %s order by seq desc", map.get("begin"), map.get("end"), where);
				
				rs = stat.executeQuery(sql);
				
				ArrayList<ProductDTO> list = new ArrayList<ProductDTO>();
				
				while (rs.next()) {
					//레코드 1줄 -> BoardDTO 1개
					ProductDTO dto = new ProductDTO();
					
					dto.setSeq(rs.getString("product_seq"));
					dto.setId(rs.getString("id"));
					dto.setAddress_seq(rs.getString("address_seq"));
					dto.setProduct_type(rs.getString("product_type"));
					dto.setName(rs.getString("name"));
					dto.setPrice(rs.getString("price"));
					dto.setIs_auction(rs.getString("is_auction"));
					dto.setContent(rs.getString("content"));
					dto.setRegdate(rs.getString("regdate"));
					dto.setIs_completion(rs.getString("is_completion"));
					dto.setReadcount(rs.getInt("readcount"));
					dto.setIs_deletion(rs.getString("is_deletion"));			
					
					list.add(dto);
				}
				
				return list;

			} catch (Exception e) {
				System.out.println("ProductDAO.list()");
				e.printStackTrace();
			}
			
			return null;
		}

	// 레코드 받아오기
	public ProductDTO get(String seq) {

		try {
			String sql = "select * from tblProduct where product_seq = ?";

			pstat = conn.prepareStatement(sql);

			pstat.setString(1, seq);

			rs = pstat.executeQuery();

			if (rs.next()) {
				ProductDTO dto = new ProductDTO();
				dto.setSeq(rs.getString("product_seq"));
				dto.setId(rs.getString("id"));
				dto.setAddress_seq(rs.getString("address_seq"));
				dto.setProduct_type(rs.getString("product_type"));
				dto.setName(rs.getString("name"));
				dto.setPrice(rs.getString("price"));
				dto.setIs_auction(rs.getString("is_auction"));
				dto.setContent(rs.getString("content"));
				dto.setRegdate(rs.getString("regdate"));
				dto.setIs_completion(rs.getString("is_completion"));
				dto.setReadcount(rs.getInt("readcount"));
				dto.setIs_deletion(rs.getString("is_deletion"));

				return dto;
			}
		} catch (Exception e) {
			System.out.println("ProductDAO.get()");
			e.printStackTrace();
		}
		return null;
	}

	// 수정하기
	public int edit(ProductDTO dto) {
		try {
			String sql = "update tblProduct set name = ?, price = ?, is_auction = ?, address_seq = ?, product_type = ?, content = ?  where product_seq = ?";
			pstat = conn.prepareStatement(sql);

			pstat.setString(1, dto.getName());
			pstat.setString(2, dto.getPrice());
			pstat.setString(3, dto.getIs_auction());
			pstat.setString(4, dto.getAddress_seq());
			pstat.setString(5, dto.getProduct_type());
			pstat.setString(6, dto.getContent());
			pstat.setString(7, dto.getSeq());

			return pstat.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return 0;
	}

	// 추가하기
	public String add(ProductDTO dto) {
		try {
			String sql = "insert into tblProduct values (product_seq.nextVal, ?, ?, ?, ?, ?, ?, ?, sysdate + 0.375, 'y', 0, 'n')";
			pstat = conn.prepareStatement(sql);

			pstat.setString(1, dto.getId());
			pstat.setString(2, dto.getAddress_seq());
			pstat.setString(3, dto.getProduct_type());
			pstat.setString(4, dto.getName());
			pstat.setString(5, dto.getPrice());
			pstat.setString(6, dto.getIs_auction());
			pstat.setString(7, dto.getContent());

			pstat.executeUpdate();

			sql = "select product_seq from tblProduct where rownum = 1 order by product_seq desc";
			pstat = conn.prepareStatement(sql);

			rs = pstat.executeQuery();

			if (rs.next()) {
				return rs.getString("product_seq");
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return null;
	}

	public void addReadCount(String seq) {
		try {
			String sql = "update tblProduct set readcount = readcount + 1 where product_seq = ?";
			pstat = conn.prepareStatement(sql);
			pstat.setString(1, seq);

			pstat.executeUpdate();
		} catch (Exception e) {
			System.out.println("ProductDAO.addReadCount()");
			e.printStackTrace();
		}
	}
	
	public int getqTotalCount(String search) {
		
		try {
						
			String sql  = String.format("select count(*) as cnt from tblProduct where product_seq = %s", search);
			
			rs = stat.executeQuery(sql);
			
			
			if (rs.next()) {
				return rs.getInt("cnt");
			}
			
		} catch (Exception e) {
			System.out.println("ProductDAO.getqTotalCount()");
			e.printStackTrace();
		}
		
		return 0;
		
	}
}
