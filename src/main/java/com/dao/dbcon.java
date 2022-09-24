package com.dao;



import java.sql.Connection;
import java.sql.DriverManager;

public class dbcon {

	public static Connection getConnection() {

		String driver = "com.mysql.cj.jdbc.Driver";
		String url =  "jdbc:mysql://localhost:3306/daiict_2022";
		String userName = "root";
		String password = "root";

		try {
			Class.forName(driver);
			Connection con = DriverManager.getConnection(url, userName, password);
			
			
			
			if(con == null) {
				System.out.println("dBNotConnected.. con");
			}else {
				System.out.println("dbConnected...");
			}
			return con;
		} catch (Exception e) {
			e.printStackTrace();
			System.out.println("dBNotConnected.. connnn");
		}
		return null;
	}
}