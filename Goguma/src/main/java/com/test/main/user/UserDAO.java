package com.test.main.user;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;

import mylibrary.DBUtil;


public class UserDAO {
	
	private Connection conn;
	private Statement stat;
	private PreparedStatement pstat;
	private ResultSet rs;

	public UserProfileDTO getUserProfile(String userId) {
		String sql = "select * from tbluserprofile where id=?";
		try {
			conn = DBUtil.open();
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
		}catch(Exception e) {
			System.out.println("UserDAO > getUserProfile Method");
			e.printStackTrace();
		}
		return null;
	}
	
}
