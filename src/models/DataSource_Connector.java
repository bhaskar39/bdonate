package models;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DataSource_Connector {
	private String sql_user;
	private String password;
	java.sql.Connection con=null;
	
	public  DataSource_Connector(String user,String pwd){
		sql_user=user;
		password=pwd;
	}
	public Connection Access_DataSource(){
		try {
			
			Class.forName("com.mysql.jdbc.Driver").newInstance();
			con = DriverManager.getConnection("jdbc:mysql://localhost:3306/blood_db",sql_user,password);
			
		
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (InstantiationException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (IllegalAccessException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} 
		return con;
	}
}
