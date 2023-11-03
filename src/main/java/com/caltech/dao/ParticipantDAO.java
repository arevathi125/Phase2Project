package com.caltech.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.caltech.dbUtil.DbUtil;
import com.caltech.pojo.Participant;


public class ParticipantDAO {
	// insert method
		public int insert(Participant participant) throws ClassNotFoundException, SQLException {
			Connection con = DbUtil.getDbConn();
			if(con != null) {
				System.out.println("DB connection is Established");
			}
			else {
				System.out.println("Db connection failed");
			}
			
			String sql = "insert into participant values(?,?,?,?,?)";
			PreparedStatement ps = con.prepareStatement(sql);
			ps.setInt(1,participant.getP_id());
			ps.setString(2, participant.getP_name());
			ps.setString(3, participant.getP_password());
			ps.setString(4, participant.getP_phone());
			ps.setString(5, participant.getP_email());
			return ps.executeUpdate();
		}
		
		//retrieve method
		public List<Participant> displayParticipant() throws ClassNotFoundException, SQLException{
			Connection con = DbUtil.getDbConn();
			if(con != null) {
				System.out.println("DB connection is Established");
			}
			else {
				System.out.println("Db connection failed");
			}
			
			String sql = "select * from participant";
			PreparedStatement ps = con.prepareStatement(sql);
			List<Participant> list = new ArrayList<>();
			ResultSet rs = ps.executeQuery();
			
			while(rs.next()) {
				Participant participant = new Participant();
				participant.setP_id(rs.getInt("p_id"));
				participant.setP_name(rs.getString("p_name"));
				participant.setP_password(rs.getString("p_password"));
				participant.setP_phone(rs.getString("p_phone"));
				participant.setP_email(rs.getString("p_email"));
				list.add(participant);
			}
			return list;
		}
		
		//update method
		public int edit(Participant participant) throws ClassNotFoundException, SQLException {
			Connection con = DbUtil.getDbConn();
			if(con != null) {
				System.out.println("DB connection is Established");
			}
			else {
				System.out.println("Db connection failed");
			}
			
			String sql = "update participant set p_name = ?,p_password = ? where p_id = ?";
			PreparedStatement ps = con.prepareStatement(sql);
			ps.setString(1, participant.getP_name());
			ps.setString(2, participant.getP_password());
			ps.setInt(3, participant.getP_id());
					
			return ps.executeUpdate();
		}
		
		//delete method
		public int delete(Participant participant) throws ClassNotFoundException, SQLException{
			Connection con = DbUtil.getDbConn();
			if(con != null) {
				System.out.println("DB connection is Established");
			}
			else {
				System.out.println("Db connection failed");
			}
			
			String sql = "delete from participant where p_id=?";
			PreparedStatement ps = con.prepareStatement(sql);
			ps.setInt(1, participant.getP_id());
			
			return ps.executeUpdate();
		}
}
