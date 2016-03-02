package models;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import bos.Requestobj;

public class Remind 
{
   public ArrayList<Requestobj> getReminders(String email)
   {
	   ArrayList<Requestobj> reminders = new ArrayList<Requestobj>();
	   try
	    {
		  DataSource_Connector dts= new DataSource_Connector("root", "pass");
		  Connection con=dts.Access_DataSource();
		  
	      String query="select blood_requests.* from blood_requests,transactions where transactions.email=? and transactions.req_id=blood_requests.req_id and blood_requests.required_date=CURDATE()";
	      
	      PreparedStatement pstmt = con.prepareStatement(query);
	      pstmt.setString(1,email);
	   	  ResultSet rs=pstmt.executeQuery(); 
	   	  while(rs.next())
	   	  {
	   		  reminders.add(new Requestobj(rs.getString("patient_name"),rs.getString("req_name"),rs.getString("blood_group"),rs.getString("units"),rs.getString("required_date"),rs.getString("blood_or_platelet"),rs.getString("hospital_address"),rs.getString("phone"),rs.getString("email"),rs.getString("additional_details"),rs.getString("location")));
	   	  }
	    }
	   catch(Exception e)
        {
		   System.out.println(e);
	    }
	   return reminders;
   }
}
