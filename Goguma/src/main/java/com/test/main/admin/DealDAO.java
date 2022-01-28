package com.test.main.admin;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;

import com.test.jdbc.DBUtil;

public class DealDAO {

	private Connection conn;
	private Statement stat;
	private PreparedStatement pstat;
	private ResultSet rs;

	public DealDAO() {

		try {

			conn = DBUtil.open("goguma", "java1234");
			stat = conn.createStatement();

		} catch (Exception e) {
			System.out.println("DealDAO.DealDAO()");
			e.printStackTrace();
		}
	}

	public ArrayList<DealDTO> totalList() {
		
		try {
			
			String sql = "select (select name from tblproducttype where product_type_seq = p.product_type_seq) as type, sum(d.price) as amount from tblProduct p inner join tblDeal d on d.product_seq = p.product_seq group by p.product_type_seq";

			ArrayList<DealDTO> list = new ArrayList<DealDTO>();

			rs = stat.executeQuery(sql);

			while (rs.next()) {

				DealDTO dto = new DealDTO();

				dto.setType(rs.getString("type"));
				dto.setAmount(rs.getInt("amount"));

				list.add(dto);

			}

			return list;
			
		} catch (Exception e) {
			System.out.println("DealDAO.totalList()");
			e.printStackTrace();
		}
		return null;
	}
	
	
}
