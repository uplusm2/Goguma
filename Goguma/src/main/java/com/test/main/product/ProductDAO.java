package com.test.main.product;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.HashMap;

import com.test.jdbc.DBUtil;
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
//			conn = DBUtil.open("goguma","java1234");
			return conn;
		} catch (Exception e) {
			e.printStackTrace();
			return null;
		}
	}
	public ProductDAO() {
		conn = open();
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
				String where1 = "";
				String where2 = "";
				String where3 = "";
	
				
				if (map.get("searchmode").equals("y")) {
					where = String.format("and %s like '%%%s%%'"
									, map.get("column")
									, map.get("word").replace("'", "''"));
				}
				if (map.get("is_auction_ck").equals("y")) {
					where1 = String.format("and is_auction = '%s'"
							, map.get("is_auction"));
				}
				if (map.get("product_type_seq_ck").equals("y")) {
					where2 = String.format("and product_type_seq = '%s'"
							, map.get("product_type_seq"));
				}
				if (map.get("address_seq_ck").equals("y")) {
					where3 = String.format("and address_seq = '%s'"
							, map.get("address_seq"));
				}

			
				
				String sql = String.format("select * from (select rownum as rnum, a.* from (select * from tblProduct where is_deletion = 'n' and 1 = 1 %s %s %s %s  order by product_seq desc) a) where rnum between %s and %s order by product_seq desc", where, where1, where2, where3, map.get("begin"), map.get("end"));
				
				stat = conn.createStatement();
						
				rs = stat.executeQuery(sql);
				
				ArrayList<ProductDTO> list = new ArrayList<ProductDTO>();
				
				while (rs.next()) {
					//레코드 1줄 -> BoardDTO 1개
					ProductDTO dto = new ProductDTO();
					
					dto.setSeq(rs.getString("product_seq"));
					dto.setId(rs.getString("id"));
					dto.setAddress_seq(rs.getString("address_seq"));
					dto.setProduct_type_seq(rs.getString("product_type_seq"));
					dto.setName(rs.getString("name"));
					dto.setPrice(rs.getString("price"));
					dto.setIs_auction(rs.getString("is_auction"));
					dto.setContent(rs.getString("content"));
					dto.setRegdate(rs.getString("regdate"));
					dto.setIs_completion(rs.getString("is_completion"));
					dto.setReadcount(rs.getInt("readcount"));
					dto.setIs_deletion(rs.getString("is_deletion"));			
					dto.setMain_img(rs.getString("main_img"));			

					list.add(dto);
				}
				
				return list;

			} catch (Exception e) {
				System.out.println("ProductDAO.list()");
				e.printStackTrace();
			}
			
			return null;
		}
	  
	  public ArrayList<ProductAddressDTO> addresslist() {
			
			try {

				String sql = String.format("select * from tbladdress");
				
				stat = conn.createStatement();
						
				rs = stat.executeQuery(sql);
				
				ArrayList<ProductAddressDTO> list = new ArrayList<ProductAddressDTO>();
				
				while (rs.next()) {
					//레코드 1줄 -> BoardDTO 1개
					ProductAddressDTO dto = new ProductAddressDTO();
					
					dto.setAddress_seq(rs.getString("address_seq"));
					dto.setSido(rs.getString("sido"));
					dto.setSgg(rs.getString("sgg"));
					dto.setEmd(rs.getString("emd"));
					
					list.add(dto);
				}
				
				return list;

			} catch (Exception e) {
				System.out.println("ProductDAO.addresslist()");
				e.printStackTrace();
			}
			
			return null;
		}
	  
	  
	  public ArrayList<BidDTO> bidlist(String product_seq) {
			
			try {

				String sql = "select * from tblbid where product_seq = ?";
				System.out.println(sql);
						

				pstat = conn.prepareStatement(sql);
	            pstat.setString(1, product_seq);

	            rs = pstat.executeQuery();
	            
				System.out.println("1");
				ArrayList<BidDTO> list = new ArrayList<BidDTO>();
				
				while (rs.next()) {
					System.out.println("2");
					//레코드 1줄 -> BoardDTO 1개
					BidDTO dto = new BidDTO();
					
					dto.setBid_seq(rs.getString("bid_seq"));
					dto.setId(rs.getString("id"));
					dto.setProduct_seq(rs.getString("product_seq"));
					dto.setPrice(rs.getString("price"));
					dto.setTime(rs.getString("Time"));
					
					list.add(dto);
					System.out.println("");
				}
				
				return list;

			} catch (Exception e) {
				System.out.println("ProductDAO.bidlist()");
				e.printStackTrace();
			}
			
			return null;
		}
		
	  
	  
	  public ArrayList<ProductTypeDTO> categorylist() {
			
			try {

				String sql = String.format("select * from tblproducttype");
				
				stat = conn.createStatement();
						
				rs = stat.executeQuery(sql);
				
				ArrayList<ProductTypeDTO> list = new ArrayList<ProductTypeDTO>();
				
				while (rs.next()) {
					//레코드 1줄 -> BoardDTO 1개
					ProductTypeDTO dto = new ProductTypeDTO();
					
					dto.setProduct_type_seq(rs.getString("product_type_seq"));
					dto.setName(rs.getString("name"));

					list.add(dto);
				}
				
				return list;

			} catch (Exception e) {
				System.out.println("ProductDAO.categorylist()");
				e.printStackTrace();
			}
			
			return null;
		}
		
		  public ArrayList<ProductImgDTO> imglist(String seq) {
		  
		  try {
		  
		  String sql = String.format("select * from tblproductimage where product_seq = ?");
		  
		  stat = conn.createStatement();
		  
		  rs = stat.executeQuery(sql);
		  pstat.setString(1, seq);
		  ArrayList<ProductImgDTO> list = new ArrayList<ProductImgDTO>();
		  
		  while (rs.next()) { //레코드 1줄 -> BoardDTO 1개 
			  ProductImgDTO dto = new ProductImgDTO();
		  
			  dto.setProduct_img_seq(rs.getString("product_img_seq"));
			  dto.setProduct_seq(rs.getString("product_seq"));
			  dto.setPath(rs.getString("path"));
		  
			  list.add(dto); 
		  	}
		  
		  	return list;
		  
		  } catch (Exception e) { System.out.println("ProductDAO.imglist()");
		  e.printStackTrace(); }
		  
		  return null; 
		  }
		 
	  
	  public ProductTypeDTO getProductType(ProductDTO dto) {
		  try {
				String sql = "select * from tblProductType where product_type_seq = ?";


				
				pstat = conn.prepareStatement(sql);

				pstat.setString(1, dto.getProduct_type_seq());

				rs = pstat.executeQuery();
				

				if (rs.next()) {
					ProductTypeDTO tdto = new ProductTypeDTO();
					tdto.setProduct_type_seq(rs.getString("product_type_seq"));
					tdto.setName(rs.getString("name"));

					return tdto;
				}
			} catch (Exception e) {
				System.out.println("ProductDAO.getProductType()");
				e.printStackTrace();
			}
			return null;
	  }
	  
	  public ProductAddressDTO getAddressName(ProductDTO dto) {
		  try {
				String sql = "select * from tblAddress where address_seq = ?";


				
				pstat = conn.prepareStatement(sql);

				pstat.setString(1, dto.getAddress_seq());

				rs = pstat.executeQuery();
				

				if (rs.next()) {
					ProductAddressDTO adto = new ProductAddressDTO();
					adto.setAddress_seq(rs.getString("address_seq"));
					adto.setSido(rs.getString("sido"));
					adto.setSgg(rs.getString("sgg"));
					adto.setEmd(rs.getString("emd"));

					return adto;
				}
			} catch (Exception e) {
				System.out.println("ProductDAO.getAddressName()");
				e.printStackTrace();
			}
			return null;
	  }
	 
	  
	// 레코드 받아오기
	public ProductDTO getProduct(String seq) {

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
				dto.setProduct_type_seq(rs.getString("product_type_seq"));
				dto.setName(rs.getString("name"));
				dto.setPrice(rs.getString("price"));
				dto.setIs_auction(rs.getString("is_auction"));
				dto.setContent(rs.getString("content"));
				dto.setRegdate(rs.getString("regdate"));
				dto.setIs_completion(rs.getString("is_completion"));
				dto.setReadcount(rs.getInt("readcount"));
				dto.setIs_deletion(rs.getString("is_deletion"));
				dto.setMain_img(rs.getString("main_img"));

				return dto;
			}
		} catch (Exception e) {
			System.out.println("ProductDAO.get()");
			e.printStackTrace();
		}
		return null;
	}
	
	public int delete(String seq) {
		try {
			String sql = "update tblProduct set is_deletion = 'y'  where product_seq = ?";
			pstat = conn.prepareStatement(sql);

			pstat.setString(1, seq);

			return pstat.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return 0;
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
			pstat.setString(5, dto.getProduct_type_seq());
			pstat.setString(6, dto.getContent());
			pstat.setString(7, dto.getSeq());

			return pstat.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return 0;
	}
	
	public int editIs_completion(String product_seq) {
		try {
			String sql = "update tblProduct set is_completion = 'y'  where product_seq = ?";
			pstat = conn.prepareStatement(sql);

			pstat.setString(1, product_seq);
			

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
			pstat.setString(3, dto.getProduct_type_seq());
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

	public String bidadd(BidDTO dto) {
		try {
			String sql = "insert into tblbid values (bid_seq.nextVal, ?, ?, ?, sysdate + 0.375)";
			pstat = conn.prepareStatement(sql);

			pstat.setString(1, dto.getId());
			pstat.setString(2, dto.getProduct_seq());
			pstat.setString(3, dto.getPrice());
			
			pstat.executeUpdate();

			sql = "select bid_seq from tblbid where rownum = 1 order by bid_seq desc";
			pstat = conn.prepareStatement(sql);

			rs = pstat.executeQuery();

			if (rs.next()) {
				return rs.getString("bid_seq");
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return null;
	}
	
	public String dealadd(ProductDealDTO dto) {
		try {
			String sql = "insert into tbldeal values (deal_seq.nextVal, ?, ?, ?, sysdate + 0.375)";
			pstat = conn.prepareStatement(sql);

			pstat.setString(1, dto.getId());
			pstat.setString(2, dto.getProduct_seq());
			pstat.setString(3, dto.getPrice());
			
			pstat.executeUpdate();

			sql = "select deal_seq from tblbid where rownum = 1 order by bid_seq desc";
			pstat = conn.prepareStatement(sql);

			rs = pstat.executeQuery();

			if (rs.next()) {
				return rs.getString("deal_seq");
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return null;
	}
	
	public BidDTO getbid(String seq) {
		try {
			String sql = "select * from tblbid where bid_seq = ?";


			
			pstat = conn.prepareStatement(sql);

			pstat.setString(1, seq);

			rs = pstat.executeQuery();

			if (rs.next()) {
				BidDTO dto = new BidDTO();
				dto.setBid_seq(rs.getString("bid_seq"));
				dto.setId(rs.getString("id"));
				dto.setProduct_seq(rs.getString("product_seq"));
				dto.setPrice(rs.getString("price"));
				dto.setTime(rs.getString("time"));

				return dto;
			}
		} catch (Exception e) {
			System.out.println("ProductDAO.get()");
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
	
	public int getTotalCount(HashMap<String, String> map) {
		
		try {

			String where = "";
			
			if (map.get("searchmode").equals("y")) {
				where = String.format("where %s like '%%%s%%'"
								, map.get("column")
								, map.get("word").replace("'", "''"));
			}
			
			String sql = "select count(*) as cnt from tblProduct" + where;
			
			rs = stat.executeQuery(sql);
			
			if (rs.next()) {
				return rs.getInt("cnt");
			}
			
		} catch (Exception e) {
			System.out.println("ProductDAO.getTotalCount()");
			e.printStackTrace();
		}
		
		return 0;
		
	}
}
