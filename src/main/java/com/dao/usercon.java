package com.dao;


import java.sql.Connection;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import com.bean.userbean;


public class usercon {
	public void insert(userbean u)
	{
		try {
			Connection	con = dbcon.getConnection();
			PreparedStatement pstm = con.prepareStatement("insert into user(name,c_name,email,password) values (?,?,?,?)");
		
		
			
			pstm.setString(1, u.getFirstname() );
			pstm.setString(2, u.getLastname() );
			pstm.setString(3, u.getEmailid() );
			pstm.setString(4, u.getPassword() );

	
			pstm.executeUpdate();
		}
		catch(Exception e)
		{
			
			System.out.println(e);


		
			System.out.println("dBNotConnected..user");
			
		}
	}
	
	public ArrayList<userbean> getAllUsers() {
		ArrayList<userbean> users = new ArrayList<userbean>();
			try {
			Connection con = dbcon.getConnection();
			PreparedStatement pstmt = con.prepareStatement("select * from user");
			ResultSet rs = pstmt.executeQuery();//

			while (rs.next()) // true false
			{
				userbean u = new userbean();
				u.setUid(rs.getInt("uid"));
				u.setFirstname( rs.getString("name"));
				u.setLastname( rs.getString("c_name"));
				u.setEmailid(rs.getString("email"));

				u.setPassword( rs.getString("password"));

				users.add(u);

			}

		} catch (Exception e) {
           e.printStackTrace();
		}
		return users;
	}
}
