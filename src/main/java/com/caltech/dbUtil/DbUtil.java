package com.caltech.dbUtil;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DbUtil {
  
	public static Connection getDbConn() throws SQLException, ClassNotFoundException {
		
		// 1. Register the vendor driver
		
		Class.forName(DbUtilHelperConstant.DRIVER_CLASS);
		
		//2. Establish Connection with the DB
		
		Connection con = DriverManager.getConnection(DbUtilHelperConstant.DB_URL, DbUtilHelperConstant.USERNAME,DbUtilHelperConstant.PASSWORD);
		
		return con;
	}
}
