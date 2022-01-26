package com.test.main.admin;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;

import com.test.jdbc.DBUtil;

public class ConnDAO {
	
	private Connection conn;
	private Statement stat;
	private PreparedStatement pstat;
	private ResultSet rs;
	
	public ConnDAO() {
		
		try {
			//conn = DBUtil.open();
			conn = DBUtil.open("goguma", "java1234");
			stat = conn.createStatement();
			
		} catch (Exception e) {
			System.out.println("ConnDAO.ConnDAO()");
			e.printStackTrace();
		}
	}

	public ArrayList<ConnDTO> MonthList() {

		try {
			
			String sql = "select v.*, rownum from (select to_char(regDate, 'YYYYMM') as month, sum(count) as cnt from tblvisit group by to_char(regDate, 'YYYYMM') order by month desc) v where rownum <= 12 order by rownum desc";
			
			ArrayList<ConnDTO> list = new ArrayList<ConnDTO>();
			
			rs = stat.executeQuery(sql);
						
			while (rs.next()) {
				
				ConnDTO dto = new ConnDTO();
				
				dto.setRegdate(rs.getString("month"));
				dto.setCount(rs.getInt("cnt"));
				
				list.add(dto);
				
			}
			
			return list;
			
		} catch (Exception e) {
			System.out.println("ConnDAO.list()");
			e.printStackTrace();
		}
		
		return null;
	}

	public ArrayList<ConnDTO> avgMonthList() {

		try {

			String sql = "select substr(month, 5, 2) as avgmonth, round(avg(cnt)) as avgcnt from (select to_char(v.regDate, 'YYYYMM') as month, sum(count) as cnt from tblvisit v group by to_char(v.regDate, 'YYYYMM')) group by substr(month, 5, 2) order by avgmonth";

			ArrayList<ConnDTO> list = new ArrayList<ConnDTO>();

			rs = stat.executeQuery(sql);

			while (rs.next()) {

				ConnDTO dto = new ConnDTO();

				dto.setRegdate(rs.getString("avgmonth"));
				dto.setCount(rs.getInt("avgcnt"));

				list.add(dto);

			}

			return list;

		} catch (Exception e) {
			System.out.println("ConnDAO.avgList()");
			e.printStackTrace();
		}

		return null;

	}

	public ArrayList<ConnDTO> daliyList() {
		
		try {
			
			String sql = "select a.*, rownum from (select regdate, count from tblVisit order by regdate desc) a where rownum <= 7";
			
			ArrayList<ConnDTO> list = new ArrayList<ConnDTO>();
			
			rs = stat.executeQuery(sql);
						
			while (rs.next()) {
				
				ConnDTO dto = new ConnDTO();
				
				dto.setRegdate(rs.getString("regdate"));
				dto.setCount(rs.getInt("count"));
				
				list.add(dto);
				
			}
			
			return list;
			
		} catch (Exception e) {
			System.out.println("ConnDAO.list()");
			e.printStackTrace();
		}
		
		return null;
	}

}
