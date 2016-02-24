package models;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class Register {

	public String register(String name, String bloodgroup, String gender, String dob, String mobile, String altmobile, String email, String location, String address, String password, String zipcode, String availability) {
		
		DataSource_Connector dts = new DataSource_Connector("root", "pass");
		java.sql.Connection con = dts.Access_DataSource();
		
		Statement st;
		try {
			st = con.createStatement();
			ResultSet usersCount=st.executeQuery("SELECT count(`email`) FROM `users`;");
			usersCount.next();
			int count = Integer.parseInt(usersCount.getString(1));
			String nw = "INSERT INTO `users`(`name`, `bloodgroup`, `dob`, `gender`, `mobile`, `altmobile`, `email`, `location`, `address`,`zipcode`, `availability`) VALUES (?,?,?,?,?,?,?,?,?,?,?);";
			PreparedStatement ps = con.prepareStatement(nw);
			ps.setString(1, name);
			ps.setString(2, bloodgroup);
			ps.setString(3, dob);
			ps.setString(4, gender);
			ps.setString(5, mobile);
			ps.setString(6, altmobile);
			ps.setString(7, email);
			ps.setString(8, location);
			ps.setString(9, address);
			ps.setString(10, zipcode);
			ps.setString(11, availability);
			ps.executeUpdate();
			ResultSet usersNewCount=st.executeQuery("SELECT count(`email`) FROM `users`;");
			usersNewCount.next();
			int newcount = Integer.parseInt(usersNewCount.getString(1));
			
			ResultSet loginUsersCount=st.executeQuery("SELECT count(`email`) FROM `credentials`;");
			loginUsersCount.next();
			int l_count = Integer.parseInt(loginUsersCount.getString(1));
			String insertCredentials = "INSERT INTO `credentials` (`email`, `password`, `name`, `zipcode`) VALUES (?,?,?,?);";
			PreparedStatement ps1 = con.prepareStatement(insertCredentials);
			ps1.setString(1, email);
			ps1.setString(2, password);
			ps1.setString(3, name);
			ps1.setString(4, zipcode);
			ps1.executeUpdate();
			ResultSet loginUsersNewCount=st.executeQuery("SELECT count(`email`) FROM `credentials`;");
			loginUsersNewCount.next();
			int l_newcount = Integer.parseInt(loginUsersNewCount.getString(1));
			if((newcount-count==1)&&(l_newcount-l_count==1)) {
				return "success";
			}
			else {
				return "failure";
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} 
		return "failure";
	}
}