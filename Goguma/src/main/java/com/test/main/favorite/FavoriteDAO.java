package com.test.main.favorite;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;

import com.test.jdbc.DBUtil;

public class FavoriteDAO {
	private Connection conn;
	private Statement stat; //매개변수X
	private PreparedStatement pstat; //매개변수O
	private ResultSet rs;
	
	public FavoriteDAO(){
		
		try {
			//conn = DBUtil.open();
			conn = DBUtil.open("goguma","java1234");
			stat = conn.createStatement();

		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	public ArrayList<FavoriteDTO> favoritelist(String id) {
		
		try {
			
			String sql = String.format("select * from vwfavproduct where favid = '%s'", id);
			
			rs = stat.executeQuery(sql);
			
			ArrayList<FavoriteDTO> list = new ArrayList<FavoriteDTO>();

			while (rs.next()) {
				FavoriteDTO dto = new FavoriteDTO();
				
				dto.setFavorite_seq(rs.getString("favorite_seq"));
				dto.setFavid(rs.getString("favid"));
				dto.setId(rs.getString("id"));
				dto.setRegdate(rs.getString("regdate"));
				dto.setName(rs.getString("name"));
				dto.setPrice(rs.getString("price"));
				dto.setIs_auction(rs.getString("is_auction"));
				dto.setProduct_seq(rs.getString("product_seq"));
				
				
				
				list.add(dto);
			}
			
			
			
			return list;
			
		} catch (Exception e) {
			System.out.println("FavoriteDAO.favoritelist()");
			e.printStackTrace();
		}
		
		
		return null;
	}

	public int favoritedel(FavoriteDTO dto) {
		try {
			String sql = "delete from tblfavorite where product_seq = ? and id = ?";
			
			pstat = conn.prepareStatement(sql);
			
			pstat.setString(1, dto.getProduct_seq());
			pstat.setString(2, dto.getFavid());
			
			return pstat.executeUpdate();
			
		} catch (Exception e) {
			System.out.println("FavoriteDAO.favoritedel()");
			e.printStackTrace();
		}
		return 0;
	}
	
	public int favoritedel(String seq) {
		try {
			String sql = "delete from tblfavorite where	favorite_seq = ?";
			
			pstat = conn.prepareStatement(sql);
			
			pstat.setString(1, seq);
			
			return pstat.executeUpdate();
			
		} catch (Exception e) {
			System.out.println("FavoriteDAO.favoritedel()");
			e.printStackTrace();
		}
		return 0;
	}

	public int favoriteadd(FavoriteDTO dto) {
		try {
			String checksql = "select * from tblfavorite where id = ? and product_seq = ?";
			
			pstat = conn.prepareStatement(checksql);
			
			pstat.setString(1, dto.getFavid());
			pstat.setString(2, dto.getProduct_seq());
			
			if(pstat.executeUpdate() == 0) {
				String sql = "insert into tblfavorite values(favorite_seq.nextVal, ?, ?)";
				
				pstat = conn.prepareStatement(sql);
				
				pstat.setString(1, dto.getFavid());
				pstat.setString(2, dto.getProduct_seq());
				
				return pstat.executeUpdate();
			}
			
		} catch (Exception e) {
			System.out.println("FavoriteDAO.favoriteadd()");
			e.printStackTrace();
		}
		return 0;
	}

	public int favoritecheck(FavoriteDTO dto) {
		try {
			
			String sql = String.format("select count(*) as cnt from tblfavorite where product_seq = %s and id = '%s'",dto.getProduct_seq(), dto.getFavid());
			
			rs = stat.executeQuery(sql);
			
			
			if(rs.next()) {
				System.out.println(rs.getInt("cnt"));
				return rs.getInt("cnt");
			}
			
		} catch (Exception e) {
			System.out.println("FavoriteDAO.favoritecheck()");
			e.printStackTrace();
		}
		return 0;
	}
	
	
	
	
	
	
	
	
	
	
}