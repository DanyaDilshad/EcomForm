package com.gap;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import java.sql.Statement;



public class Dao {
	
	String url = "jdbc:mysql://localhost:3306/Gap";
	
	Connection con = null;
	
	public void connect() {
		try {
			Class.forName("com.mysql.jdbc.Driver");
			

		 con = DriverManager.getConnection(url,"root", "Danya@123");
	
		} catch (Exception e) {
			System.out.println(e.getMessage());	
		}
		
	}	
	public boolean check(String name, String password) throws Exception {
		
		
		connect();
		
		String query = "Select * from customer where username = ? and password = ?";

		PreparedStatement st = con.prepareStatement(query);
		
		st.setString(1, name);
		st.setString(2, password);
		
		ResultSet rs = st.executeQuery();
		
		if(rs.next()) {
			return true;
		}
		
		
		return false;

	}
	
	
	public boolean register(String uname, String passw, String full_name, String mail, String phone, String addr) {
		
		
		try {
			String query = "insert into customer values(?,?,?,?,?,?)";
			
			connect();
			
			PreparedStatement st = con.prepareStatement(query);
			
			st.setString(1, uname);
			st.setString(2, passw);
			st.setString(3, full_name);
			st.setString(4, mail);
			st.setString(5, phone);
			st.setString(6, addr);
			
			int count = st.executeUpdate();
			if(count>0)
				return true;
			
		} catch (Exception e) {
			
			System.out.println(e.getMessage());
		}
		
		
		return false;
		
	}
	
	public ResultSet getDetails(String type) {
		
		ResultSet resultSet = null;
		
		String query = "Select * from product";
		
		if(!type.equals("all")) {
			
			query += " where producttype = '" + type + "'";
			
		}
		
		
		connect();
		
		try {
			Statement st = con.createStatement();
			resultSet = st.executeQuery(query);
		}
		
		catch (SQLException e) {
			System.out.println(e.getMessage());
		}
		
		
		
		
		return resultSet;
		
		
	}
			
	
}
