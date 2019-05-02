package com.nguyendinhqui.model;

import java.sql.Connection;
import java.sql.Date;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Vector;

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
		PreparedStatement stmt;
		Connection con= ConnectDatabase.getConnectDatabase();
		try {
			stmt = con.prepareStatement(sql);
			rs =stmt.executeQuery();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return rs;
	}
	
	public static ResultSet SelectWhere(String sql,Vector vt) {
		ResultSet rs =null;
		PreparedStatement stmt;
		Connection con= ConnectDatabase.getConnectDatabase();
		try {
			stmt = con.prepareStatement(sql);
			for(int i=0;i < vt.size();i++) {
				if(vt.get(i) instanceof Integer) {
					stmt.setInt(i+1,Integer.valueOf(vt.get(i).toString()));
				}else if(vt.get(i) instanceof Double) {
					stmt.setDouble(i+1,Double.valueOf(vt.get(i).toString()));
				}else if(vt.get(i) instanceof String) {
					stmt.setString(i+1,String.valueOf(vt.get(i).toString()));
				}else if(vt.get(i) instanceof Date) {
					stmt.setDate(i+1,Date.valueOf(vt.get(i).toString()));
				}else if(vt.get(i) instanceof Boolean) {
					stmt.setBoolean(i+1,Boolean.valueOf(vt.get(i).toString()));
				}
			}
			rs =stmt.executeQuery();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return rs;
	}
	
	public static int Update(String sql,Vector vt) {
		PreparedStatement stmt;
		Connection con= ConnectDatabase.getConnectDatabase();
		int rs= 0 ;
		try {
			stmt = con.prepareStatement(sql);
			for(int i=0;i < vt.size();i++) {
				if(vt.get(i) instanceof Integer) {
					stmt.setInt(i+1,Integer.valueOf(vt.get(i).toString()));
				}else if(vt.get(i) instanceof Double) {
					stmt.setDouble(i+1,Double.valueOf(vt.get(i).toString()));
				}else if(vt.get(i) instanceof String) {
					stmt.setString(i+1,String.valueOf(vt.get(i).toString()));
				}else if(vt.get(i) instanceof Date) {
					stmt.setDate(i+1,Date.valueOf(vt.get(i).toString()));
				}else if(vt.get(i) instanceof Boolean) {
					stmt.setBoolean(i+1,Boolean.valueOf(vt.get(i).toString()));
				}
			}
			rs = stmt.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return rs;	
	}
	
	public static int Insert(String sql, Vector vt) {
		PreparedStatement stmt;
		Connection con= ConnectDatabase.getConnectDatabase();
		int rs= 0 ;
		try {
			stmt = con.prepareStatement(sql);
			for(int i=0;i < vt.size();i++) {
				if(vt.get(i) instanceof Integer) {
					stmt.setInt(i+1,Integer.valueOf(vt.get(i).toString()));
				}else if(vt.get(i) instanceof Double) {
					stmt.setDouble(i+1,Double.valueOf(vt.get(i).toString()));
				}else if(vt.get(i) instanceof String) {
					stmt.setString(i+1,String.valueOf(vt.get(i).toString()));
				}else if(vt.get(i) instanceof Date) {
					stmt.setDate(i+1,Date.valueOf(vt.get(i).toString()));
				}else if(vt.get(i) instanceof Boolean) {
					stmt.setBoolean(i+1,Boolean.valueOf(vt.get(i).toString()));
				}
			}
			rs = stmt.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return rs;
	}
	
	public static int Delete(String sql, Vector vt) {
		PreparedStatement stmt;
		Connection con= ConnectDatabase.getConnectDatabase();
		int rs= 0 ;
		try {
			stmt = con.prepareStatement(sql);
			for(int i=0;i < vt.size();i++) {
				if(vt.get(i) instanceof Integer) {
					stmt.setInt(i+1,Integer.valueOf(vt.get(i).toString()));
				}else if(vt.get(i) instanceof Double) {
					stmt.setDouble(i+1,Double.valueOf(vt.get(i).toString()));
				}else if(vt.get(i) instanceof String) {
					stmt.setString(i+1,String.valueOf(vt.get(i).toString()));
				}else if(vt.get(i) instanceof Date) {
					stmt.setDate(i+1,Date.valueOf(vt.get(i).toString()));
				}else if(vt.get(i) instanceof Boolean) {
					stmt.setBoolean(i+1,Boolean.valueOf(vt.get(i).toString()));
				}
			}
			rs = stmt.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return rs;
	}
	
	
}
