package models;

import java.sql.*;
import java.util.*;
import bos.Requestobj;

public class Report 
{
   public ArrayList<Requestobj> getReports(String email)
   {
	   ArrayList<Requestobj> listReports= new ArrayList<Requestobj>();
	   try
	   {
		 DataSource_Connector dts = new DataSource_Connector("root", "pass");
		 java.sql.Connection con = dts.Access_DataSource();
	     PreparedStatement pstmt = con.prepareStatement("select * from blood_requests,transactions where transactions.email=? and transactions.req_id=blood_requests.req_id and transactions.action=?");
	     pstmt.setString(1,email);
	     pstmt.setString(2,"donated");
	     ResultSet rs=pstmt.executeQuery();
	   	 while(rs.next())
	   	  {
	   	    listReports.add(new Requestobj(rs.getString("patient_name"), rs.getString("req_name"),rs.getString("blood_group"),rs.getString("units"),rs.getString("required_date"),rs.getString("blood_or_platelet"),rs.getString("hospital_address"),rs.getString("phone"),rs.getString("email"),rs.getString("additional_details"),rs.getString("location")));
	   	  }
	   	con.close();
	   }
	   catch(Exception e)
	   {
		   
	   }
	   return listReports;
   }
}
