package models;



import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import bos.User;

public class Search_Results {

	public ArrayList<User> Search_Query(String blood_group, String location) {
		// TODO Auto-generated method stub
		
		DataSource_Connector dts = new DataSource_Connector("root", "pass");
		java.sql.Connection con= dts.Access_DataSource();
		
		String sql_stmnt;
		if (blood_group.equals("Any")){
			sql_stmnt="SELECT * FROM USERS WHERE location LIKE ? OR zipcode LIKE ?";
		}
		else
			sql_stmnt="SELECT * FROM USERS WHERE (location LIKE ? OR zipcode LIKE ?) AND bloodgroup='"+blood_group+"'";
//			System.out.println(sql_stmnt);
		try {
			PreparedStatement pst = con.prepareStatement(sql_stmnt);
			pst.setString(1, "%"+location+"%");
			pst.setString(2, "%"+location+"%");
			ResultSet rslt=pst.executeQuery();
			
			ArrayList<User> users = new ArrayList<>();
			String name,group,mobile_no,location1,dob,gender,altmobile,address,zipcode,email,availability;
			while(rslt.next()){
				name=rslt.getString("name");
				group=rslt.getString("bloodgroup");
				mobile_no=rslt.getString("mobile");
				location1=rslt.getString("location");
				
				dob=rslt.getString("dob");
				gender=rslt.getString("gender");
				altmobile=rslt.getString("altmobile");
				address=rslt.getString("address");
				zipcode=rslt.getString("zipcode");
				email=rslt.getString("email");
				availability = rslt.getString("availability");
				
				users.add(new User(name,group,gender,dob,mobile_no,altmobile,email,location1,address,zipcode,availability));
			}
			
			return users;
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
		
		return null;
	}
	

}
