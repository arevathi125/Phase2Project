package com.caltech.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.caltech.dbUtil.DbUtil;
import com.caltech.pojo.Batch;

public class BatchDAO {
	    // insert method
			public int insert(Batch batch) throws ClassNotFoundException, SQLException {
				Connection con = DbUtil.getDbConn();
				if(con != null) {
					System.out.println("DB connection is Established");
				}
				else {
					System.out.println("Db connection failed");
				}
				
				String sql = "insert into batch values(?,?,?,?,?)";
				PreparedStatement ps = con.prepareStatement(sql);
				ps.setInt(1,batch.getB_id());
				ps.setString(2, batch.getB_name());
				ps.setString(3, batch.getB_instructor());
				ps.setString(4, batch.getB_date());
				ps.setString(5, batch.getB_time());
				return ps.executeUpdate();
			}
			
			//retrieve method
			public List<Batch> displayBatch() throws ClassNotFoundException, SQLException{
				Connection con = DbUtil.getDbConn();
				if(con != null) {
					System.out.println("DB connection is Established");
				}
				else {
					System.out.println("Db connection failed");
				}
				
				String sql = "select * from batch";
				PreparedStatement ps = con.prepareStatement(sql);
				List<Batch> list = new ArrayList<>();
				ResultSet rs = ps.executeQuery();
				
				while(rs.next()) {
					Batch batch = new Batch();
					batch.setB_id(rs.getInt("b_id"));
					batch.setB_name(rs.getString("b_name"));
					batch.setB_instructor(rs.getString("b_instructor"));
					batch.setB_date(rs.getString("b_date"));
					batch.setB_time(rs.getString("b_time"));
					list.add(batch);
				}
				return list;
			}
			
			//update method
			public int edit(Batch batch) throws ClassNotFoundException, SQLException {
				Connection con = DbUtil.getDbConn();
				System.out.println(batch.getB_id());
				System.out.println(batch.getB_name());
				System.out.println(batch.getB_instructor());
				if(con != null) {
					System.out.println("DB connection is Established");
				}
				else {
					System.out.println("Db connection failed");
				}
				
				String sql = "update batch set b_name = ?,b_instructor = ? where b_id = ?";
				PreparedStatement ps = con.prepareStatement(sql);
				ps.setString(1, batch.getB_name());
				ps.setString(2, batch.getB_instructor());
				ps.setInt(3, batch.getB_id());
						
				return ps.executeUpdate();
			}
			
			//delete method
			public int delete(Batch batch) throws ClassNotFoundException, SQLException{
				Connection con = DbUtil.getDbConn();
				if(con != null) {
					System.out.println("DB connection is Established");
				}
				else {
					System.out.println("Db connection failed");
				}
				
				String sql = "delete from batch where b_id=?";
				PreparedStatement ps = con.prepareStatement(sql);
				ps.setInt(1, batch.getB_id());
				
				return ps.executeUpdate();
			}
}
