package models;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import bos.User;

public class Authenticator {

	public User authenticate(String username, String password) {
		
		DataSource_Connector dts = new DataSource_Connector("root", "pass");
		java.sql.Connection con = dts.Access_DataSource();
		try {
			String checkCredentials = "SELECT count(email) FROM `credentials` WHERE `email`= ? AND `password`=?";
			PreparedStatement ps = con.prepareStatement(checkCredentials);
			ps.setString(1, username);
			ps.setString(2, password);
			ResultSet usersCount= ps.executeQuery();
			usersCount.next();
			int count = Integer.parseInt(usersCount.getString(1));			
			if(count==1) {
				String collectDetails = "SELECT * FROM `users` WHERE `email`= ?";
				PreparedStatement ps1 = con.prepareStatement(collectDetails);
				ps1.setString(1, username);
				ResultSet userDetails= ps1.executeQuery();
				userDetails.next();
				String name = userDetails.getString(1);
				String bloodgroup = userDetails.getString(2);
				String gender = userDetails.getString(4);
				String dob = userDetails.getString(3);
				String mobile = userDetails.getString(5);
				String altmobile = userDetails.getString(6);
				String email = userDetails.getString(7);
				String location = userDetails.getString(8);
				String address = userDetails.getString(9);
				String zipcode = userDetails.getString(10);
				String availability = userDetails.getString(11);

				User user = new User(name, bloodgroup, gender, dob, mobile, altmobile, email, location, address, zipcode, availability);
				return user;
			}
			else {
				return null;
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} 
		return null;
	}
	public String changePwd(String email, String oldpwd, String newpwd) {
		
		DataSource_Connector dts = new DataSource_Connector("root", "");
		java.sql.Connection con = dts.Access_DataSource();
		
		try {
			
			String nw = "UPDATE `credentials` SET `password`=? WHERE (`email`=? AND `password`=?)";
			PreparedStatement ps = con.prepareStatement(nw);
			ps.setString(1, newpwd);
			ps.setString(2, email);
			ps.setString(3, oldpwd);
			int count = ps.executeUpdate();
			System.out.println(count);
			if(count>0) {
				return "success";
			}
			else {
				return "failure";
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} 
		return "failure";
	}
	public String changeProfile(String email, String oldpwd, String newpwd) {
		
		DataSource_Connector dts = new DataSource_Connector("root", "");
		java.sql.Connection con = dts.Access_DataSource();
		
		try {
			
			String nw = "UPDATE `credentials` SET `password`=? WHERE (`email`=? AND `password`=?)";
			PreparedStatement ps = con.prepareStatement(nw);
			ps.setString(1, newpwd);
			ps.setString(2, email);
			ps.setString(3, oldpwd);
			int count = ps.executeUpdate();
			System.out.println(count);
			if(count>0) {
				return "success";
			}
			else {
				return "failure";
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} 
		return "failure";
	}
}