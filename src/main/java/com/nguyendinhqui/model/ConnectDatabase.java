package com.nguyendinhqui.model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;

public class ConnectDatabase {
	public static Connection con =null;
	private String url ="jdbc:sqlserver://localhost:1433;database=QLBANSUA;";
	private String user="sa";
	private String password ="123456";
	private ConnectDatabase() {
		try {
			DriverManager.registerDriver(new com.microsoft.sqlserver.jdbc.SQLServerDriver());
			con = DriverManager.getConnection(url, user, password);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	public static Connection getConnectDatabase() {
		if(con == null) {
			new ConnectDatabase();
		}
		return con;
	}
	
	public static ResultSet Select(String sql) {
		ResultSet rs =null;
		
		return rs;
	}
}
