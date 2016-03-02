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
		
		DataSource_Connector dts = new DataSource_Connector("root", "pass");
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
	public User changeProfile(String id, String value, String username) {
		
		DataSource_Connector dts = new DataSource_Connector("root", "pass");
		java.sql.Connection con = dts.Access_DataSource();
		
		try {
			boolean flag = false;
			boolean flag2 = false;
			String nw = "UPDATE `users` SET `"+id+"`=? WHERE (`email`=?)";
			PreparedStatement ps = con.prepareStatement(nw);
			ps.setString(1, value);
			ps.setString(2, username);
			int count = ps.executeUpdate();
			if(id.equals("name")||id.equals("email")||id.equals("zipcode")){
				flag = true;
				String nw1 = "UPDATE `credentials` SET `"+id+"`=? WHERE (`email`=?)";
				PreparedStatement ps1 = con.prepareStatement(nw1);
				ps1.setString(1, value);
				ps1.setString(2, username);
				int newcount = ps1.executeUpdate();
				if(newcount>0) {
					flag2 = true;
				}
				else {
					return null;
				}
			}
			//System.out.println("Count "+count);
			//System.out.println(flag2);
			if(((flag==false)&&(count==1))||((flag==true)&&(flag2==true)&&(count==1))) {
				
				String collectDetails = "SELECT * FROM `users` WHERE `email`= ?";
				PreparedStatement pst = con.prepareStatement(collectDetails);
				pst.setString(1, username);
				ResultSet userDetails= pst.executeQuery();
				userDetails.next();
				String name = userDetails.getString("name");
				String bloodgroup = userDetails.getString("bloodgroup");
				String gender = userDetails.getString("gender");
				String dob = userDetails.getString("dob");
				String mobile = userDetails.getString("mobile");
				String altmobile = userDetails.getString("altmobile");
				String email = userDetails.getString("email");
				String location = userDetails.getString("location");
				String address = userDetails.getString("address");
				String zipcode = userDetails.getString("zipcode");
				String availability = userDetails.getString("availability");

				User user = new User(name, bloodgroup, gender, dob, mobile, altmobile, email, location, address, zipcode, availability);
				return user;
			}
			else {
				return null;
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} 
		return null;
	}

	public User changeProfile(String name, String mobile, String altmobile, String email, String location, String zipcode, String address) {
		
		DataSource_Connector dts = new DataSource_Connector("root", "pass");
		java.sql.Connection con = dts.Access_DataSource();
		
		try {
			String nw = "UPDATE `users` SET `name`=?,`mobile`=?,`altmobile`=?,`email`=?,`location`=?,`address`=?,`zipcode`=? WHERE (`email`=?)";
			PreparedStatement ps = con.prepareStatement(nw);
			ps.setString(1, name);
			ps.setString(2, mobile);
			ps.setString(3, altmobile);
			ps.setString(4, email);
			ps.setString(5, location);
			ps.setString(6, address);
			ps.setString(7, zipcode);
			ps.setString(8, email);
			int count = ps.executeUpdate();
			
			String nw1 = "UPDATE `credentials` SET `name`=?,`email`=?,`zipcode`=? WHERE (`email`=?)";
			PreparedStatement ps1 = con.prepareStatement(nw1);
			ps1.setString(1, name);
			ps1.setString(2, email);
			ps1.setString(3, zipcode);
			ps1.setString(4, email);
			int newcount = ps1.executeUpdate();
			
			if((count==1)&&(newcount==1)) {
				String collectDetails = "SELECT * FROM `users` WHERE `email`= ?";
				PreparedStatement pst = con.prepareStatement(collectDetails);
				pst.setString(1, email);
				ResultSet userDetails= pst.executeQuery();
				userDetails.next();
				String user_name = userDetails.getString("name");
				String user_bloodgroup = userDetails.getString("bloodgroup");
				String user_gender = userDetails.getString("gender");
				String user_dob = userDetails.getString("dob");
				String user_mobile = userDetails.getString("mobile");
				String user_altmobile = userDetails.getString("altmobile");
				String user_email = userDetails.getString("email");
				String user_location = userDetails.getString("location");
				String user_address = userDetails.getString("address");
				String user_zipcode = userDetails.getString("zipcode");
				String user_availability = userDetails.getString("availability");
				
				User user = new User(user_name, user_bloodgroup, user_gender, user_dob, user_mobile, user_altmobile, user_email, user_location, user_address, user_zipcode, user_availability);
				return user;
			}
			else {
				return null;
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} 
		return null;
	}
}