package com.caltech.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import com.caltech.dbUtil.DbUtil;


public class registerDAO {
	// insert method
			public int insert(int participant_id,int batch_id,String participantName) throws ClassNotFoundException, SQLException {
				Connection con = DbUtil.getDbConn();
				if(con != null) {
					System.out.println("DB connection is Established");
				}
				else {
					System.out.println("Db connection failed");
				}
				
				String sql = "insert into mapping values(?,?,?)";
				PreparedStatement ps = con.prepareStatement(sql);
				ps.setInt(1,participant_id);
				ps.setInt(2,batch_id );
				ps.setString(3,participantName );
				return ps.executeUpdate();
			}
}
