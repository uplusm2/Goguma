package com.test.main.user;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.HashMap;

import com.test.jdbc.DBUtil;
import com.test.main.profile.ReviewDTO;
import com.test.main.profile.UserProfileDTO;


public class UserDAO {
	
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
            
            //conn = DriverManager.getConnection(url, id, pw);
			//conn = DBUtil.open();
			conn = DBUtil.open("goguma", "java1234");
            return conn;
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }

	
	public UserDTO login(UserDTO dto) {
		try {

			String sql = "select * from tbluser u LEFT JOIN tbluserinfo i ON u.id = i.id LEFT JOIN tbluserprofile p ON u.id = p.id  WHERE u.id = ? and u.password = ?";
				
			conn = open();
			pstat = conn.prepareStatement(sql);
				
			pstat.setString(1, dto.getId()); //첫번째 ?
			pstat.setString(2, dto.getPw()); //두번째 ?
				
			rs = pstat.executeQuery();
					
			if (rs.next()) {
					
				UserDTO result = new UserDTO();
					
				result.setId(rs.getString("id"));
				result.setPw(rs.getString("password"));
				result.setNickname(rs.getString("nickname"));
				result.setLv(rs.getString("user_level"));
					
				return result;
					
			}

		} catch (Exception e) {
			System.out.println("로그인 오류.login()");
			e.printStackTrace();
		}
		
		return null;
	}


	public int userregisterok(UserDTO dto) {
		
		try {
		String sql = "INSERT INTO tbluser VALUES (?, ?, 1)";	
		
		conn = open();
		pstat = conn.prepareStatement(sql);
			
		pstat.setString(1, dto.getId());
		pstat.setString(2, dto.getPw());
			
		return pstat.executeUpdate();
				
		}catch (Exception e) {
			System.out.println("회원가입 오류.login()");
			e.printStackTrace();
		}
		
		return -1;
			
		}
	
public int userinforegisterok(UserDTO dto) {
		
		try {
		String sql = "INSERT INTO tbluserinfo (id, address_seq, name, address, tel, email, birth, gender) VALUES (?, ?, ?, ?, ?, ?, ?, ?)";	
		
		conn = open();
		pstat = conn.prepareStatement(sql);
		
		pstat.setString(1, dto.getId());
		pstat.setString(2, dto.getAddress_seq());
		pstat.setString(3, dto.getName());
		pstat.setString(4, dto.getAddress());
		pstat.setString(5, dto.getTel());
		pstat.setString(6, dto.getEmail());
		pstat.setString(7, dto.getBirth().substring(1, 2)
							+ "/"
							+ dto.getBirth().substring(3, 4)
							+ "/"
							+ dto.getBirth().substring(5, 6));
		pstat.setString(8, dto.getGender());

			
		return pstat.executeUpdate();
				
		}catch (Exception e) {
			System.out.println("회원가입 오류.login()");
			e.printStackTrace();
		}
		
		return -1;
			
		}
	
		public int checkId(String id) {
			int result = 0;
				try {
						String sql = "SELECT count(*) as cnt FROM tbluser WHERE id = ?";	
						
						
							conn = open();
							pstat = conn.prepareStatement(sql);
			
							pstat.setString(1, id);
			
							rs = pstat.executeQuery();
							
							if(rs.next()) {
								return rs.getInt("cnt");
							} else {
								
							}
				
					}catch (Exception e) {
							System.out.println("ID 중복체크 오류.login()");
								e.printStackTrace();
						}
				return result;
		
					
			
		}

		public int userdelete(String id) {
			
			try {
				String sql = "DELETE FROM tbluser WHERE id = ?";	
				
				
					conn = open();
					pstat = conn.prepareStatement(sql);
	
					pstat.setString(1, id);
	
					return pstat.executeUpdate();
		
			}catch (Exception e) {
					System.out.println("ID 중복체크 오류.login()");
						e.printStackTrace();
				}
			return 0;
		}
		
		public int userinfodelete(String id) {
			
			try {
				String sql = "DELETE FROM tbluserinfo WHERE id = ?";	
				
				
					conn = open();
					pstat = conn.prepareStatement(sql);
	
					pstat.setString(1, id);
	
					return pstat.executeUpdate();
		
			}catch (Exception e) {
					System.out.println("ID 중복체크 오류.login()");
						e.printStackTrace();
				}
			return 0;
		}
		
		
		public String findid(String name, String email) {
			
			String id = null;
			
			try {

				String sql = "SELECT id FROM tbluserinfo WHERE name = ? AND email = ?";
					
				conn = open();
				pstat = conn.prepareStatement(sql);
					
				pstat.setString(1, name); //첫번째 ?
				pstat.setString(2, email); //두번째 ?
					
				rs = pstat.executeQuery();
						
				if (rs.next()) {
					
					id = rs.getString("id");
							
				}

			} catch (Exception e) {
				System.out.println("아이디 찾기 오류()");
				e.printStackTrace();
			}
			
			return id;
		}
	

		public int repw(UserDTO dto) {
			
			try {

				String sql = "UPDATE tbluser SET password = ? WHERE id = ?";
					
				conn = open();
				pstat = conn.prepareStatement(sql);
				
				pstat.setString(1, dto.getPw());					
				pstat.setString(2, dto.getId());
						
				return pstat.executeUpdate();
				
			}	catch (Exception e) {
				System.out.println("회원가입 오류.login()");
				e.printStackTrace();
			}
			
			
			return -1;
				
			}
		public UserDTO findpw(UserDTO dto) {
			
			try {
				String sql = "SELECT * FROM tbluserinfo WHERE name = ? AND email = ? AND id = ?";	
				
				conn = open();
				pstat = conn.prepareStatement(sql);
				
				pstat.setString(1, dto.getId());
				pstat.setString(2, dto.getName());
				pstat.setString(3, dto.getEmail());
					
				rs = pstat.executeQuery();
						
				}catch (Exception e) {
					System.out.println("비밀번호 찾기 오류.login()");
					e.printStackTrace();
				}
				
				return dto;
				
				
				
				
		}
		
	
}
