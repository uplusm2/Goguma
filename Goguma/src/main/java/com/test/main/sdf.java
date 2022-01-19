package com.test.main;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class sdf {
	
	private static Connection conn;
    private static Statement stat;
    private static PreparedStatement pstat;
    private static ResultSet rs;
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

    public static void main(String[] args) throws SQLException {

        conn = open();
        stat = conn.createStatement();

        String sql = "select count() from tblUser";
        rs = stat.executeQuery(sql);

        while (rs.next()) {
            System.out.println(rs.getString("count()"));

        }
    }

}
