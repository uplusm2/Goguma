package com.test.main.main;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.HashMap;

import com.test.jdbc.DBUtil;
import com.test.main.main.ProductDTO;

public class ProductDAO {

	private Connection conn;
	private Statement stat;
	private PreparedStatement pstat;
	private ResultSet rs;

	public ProductDAO() {
		try {
			conn = DBUtil.open("goguma","java1234");
			stat = conn.createStatement();
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	public ArrayList<ProductDTO> newList() {
		try {
			String sql = "select * from vwNewProduct order by interval";
			System.out.println("rs 전");
			
			rs = stat.executeQuery(sql);
			System.out.println("rs 후");
			ArrayList<ProductDTO> list = new ArrayList<ProductDTO>();
			System.out.println("list 후");
			
			for(int i=0; i<10; i++) {
				rs.next();
				ProductDTO dto = new ProductDTO();
				dto.setSeq(rs.getString("product_seq"));
				dto.setName(rs.getString("name"));
				dto.setPrice(rs.getString("price"));
				dto.setImgPath(rs.getString("img_path"));
				dto.setInterval(rs.getString("interval"));
				
				list.add(dto);
			}
			return list;
		} catch (Exception e) {
			e.printStackTrace();
			System.out.println("ProductDAO.list()");
		}
		return null;
	}
}

	
