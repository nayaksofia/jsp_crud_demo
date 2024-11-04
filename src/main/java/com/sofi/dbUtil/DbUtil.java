package com.sofi.dbUtil;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;



public class DbUtil {
	

	
	
	public static Connection getDbConn() throws ClassNotFoundException, SQLException {
		
		//register the vendor driver
		
		Class.forName(DbUtilHelperConstant.DRIVER_CLASS);
		
		//establish communication with the db
		
		Connection con=DriverManager.getConnection(DbUtilHelperConstant.DB_URL,DbUtilHelperConstant.USERNAME,DbUtilHelperConstant.PASSWORD);
		
		
		return con;
	}

}

