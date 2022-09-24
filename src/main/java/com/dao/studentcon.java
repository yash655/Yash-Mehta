package com.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import com.bean.studentbean;
import com.bean.userbean;

public class studentcon {
	public void insert(studentbean s)
	{
		try {
			Connection	con = dbcon.getConnection();
			PreparedStatement pstm = con.prepareStatement("insert into student(sid ,s_name,c_id ,c_name ,password ,10th ,12th ,sem1 ,sem2 ,sem3 ,sem4  "
					+ ",sem5 ,sem6 ,sem7  ,sem8 ,tech,email ) values (?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)");
		
		
			
			pstm.setInt(1, s.getC_id() );
			pstm.setString(2, s.getS_name() );
			pstm.setInt(3, s.getC_id());
			pstm.setString(4,s.getC_name() );
			pstm.setString(4, s.getPassword());

			pstm.setInt(5, s.getStd10());
			pstm.setInt(6, s.getStd12());
			pstm.setInt(7, s.getSem1());
			pstm.setInt(8, s.getSem2());
			pstm.setInt(9, s.getSem3());
			pstm.setInt(10, s.getSem4());
			pstm.setInt(11, s.getSem5());
			pstm.setInt(12, s.getSem6());
			pstm.setInt(13, s.getSem7());
			pstm.setInt(14, s.getSem8());
			pstm.setInt(15, s.getTechround());
			pstm.setString(16, s.getEmail());

			
			


	
			pstm.executeUpdate();
		}
		catch(Exception e)
		{
			
			System.out.println(e);


		
			System.out.println("dBNotConnected..user");
			
		}
	}
	
	public ArrayList<studentbean> getAllUsers() {
		ArrayList<studentbean> student = new ArrayList<studentbean>();
			try {
			Connection con = dbcon.getConnection();
			PreparedStatement pstmt = con.prepareStatement("select * from student");
			ResultSet rs = pstmt.executeQuery();//

			while (rs.next()) // true false
			{
				studentbean u = new studentbean();
				u.setSid(rs.getInt("sid"));
				u.setS_name(rs.getString("s_name"));
				u.setC_id(rs.getInt("c_id"));
				u.setC_name(rs.getString("c_name"));
			
				u.setPassword(rs.getString("password"));
				u.setStd10(rs.getInt("10th"));
				u.setStd12(rs.getInt("12th"));
				u.setSem1(rs.getInt("sem1"));
				u.setSem2(rs.getInt("sem2"));
				u.setSem3(rs.getInt("sem3"));

				u.setSem4(rs.getInt("sem4"));
				u.setSem5(rs.getInt("sem5"));

				u.setSem6(rs.getInt("sem6"));
				u.setSem7(rs.getInt("sem7"));
				u.setSem8(rs.getInt("sem8"));
				u.setTechround(rs.getInt("tech"));
				u.setEmail(rs.getString("email"));
				
				
				
				
				
				
			

				
				
				
				student.add(u);

			}

		} catch (Exception e) {
           e.printStackTrace();
		}
		return student;
	}
}
