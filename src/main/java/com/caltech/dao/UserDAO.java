package com.caltech.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;


import com.caltech.dbUtil.DbUtil;


public class UserDAO {
     
	public boolean login(String userName,String passWord) throws ClassNotFoundException, SQLException{
		Connection con = DbUtil.getDbConn();
		if(con != null) {
			System.out.println("DB connection is Established");
		}
		else {
			System.out.println("Db connection failed");
		}
		String sql="select count(*) as recordCount from participant where p_name=? and p_password=? ";
		
		PreparedStatement ps = con.prepareStatement(sql);
		ps.setString(1, userName);
		ps.setString(2, passWord);
		ResultSet rs = ps.executeQuery();
		if(rs.next()) {
			int count = rs.getInt("recordCount");
				if(count >0) {
					return true;
			}
		}
		return false;
	}
	
	public int getParticipantId(String userName,String passWord) throws ClassNotFoundException, SQLException{
		Connection con = DbUtil.getDbConn();
		if(con != null) {
			System.out.println("DB connection is Established");
		}
		else {
			System.out.println("Db connection failed");
		}
		String sql="select p_id from participant where p_name=? and p_password=? ";
		
		PreparedStatement ps = con.prepareStatement(sql);
		ps.setString(1, userName);
		ps.setString(2, passWord);
		ResultSet rs = ps.executeQuery();
		if(rs.next()) {
			return rs.getInt("p_id");
		}
		return 0;
	}
	
	public String getParticipantName(String userName,String passWord) throws ClassNotFoundException, SQLException{
		Connection con = DbUtil.getDbConn();
		if(con != null) {
			System.out.println("DB connection is Established");
		}
		else {
			System.out.println("Db connection failed");
		}
		String sql="select p_name from participant where p_name=? and p_password=? ";
		
		PreparedStatement ps = con.prepareStatement(sql);
		ps.setString(1, userName);
		ps.setString(2, passWord);
		ResultSet rs = ps.executeQuery();
		if(rs.next()) {
			return rs.getString("p_name");
		}
		return null;
	}
	

}
