package models;

import java.sql.*;
import java.util.ArrayList;

import bos.NotificationObjects;
import bos.Requestobj;

public class Notification 
{
  public ArrayList<Requestobj> getNotificationsList(String bloodGroup)
  {
	Requestobj[] arrayOfNotificationsObjects=new Requestobj[10];
	ArrayList<Requestobj> objects = new ArrayList<Requestobj>();
	try 
	 {
   		DataSource_Connector dts = new DataSource_Connector("root", "pass");
   		java.sql.Connection con = dts.Access_DataSource();
   		String stm = "select * from blood_requests where BLOOD_GROUP=?";
   		if(bloodGroup.charAt(0)=='S'){
   			stm = "select * from blood_requests where BLOOD_GROUP!=?";
   			bloodGroup=bloodGroup.substring(1, bloodGroup.length());
   		}
        PreparedStatement pstmt = con.prepareStatement(stm);
        pstmt.setString(1,bloodGroup);
   		ResultSet rs=pstmt.executeQuery(); 
   	    int index=0;
   	    
   		while(rs.next())
   		 {
   			Requestobj ob = new Requestobj(rs.getString("patient_name"), rs.getString("req_name"),rs.getString("blood_group"),rs.getString("units"),rs.getString("required_date"),rs.getString("blood_or_platelet"),rs.getString("hospital_address"),rs.getString("phone"),rs.getString("email"),rs.getString("additional_details"),rs.getString("location"));
   			ob.setReq_id(rs.getInt("req_id"));
   			objects.add(ob);
   			//System.out.println(ob.getReq_id()+ob.getPatientname()+ob.getDate());
   		   arrayOfNotificationsObjects[index++]=new Requestobj(rs.getString("patient_name"), rs.getString("req_name"),rs.getString("blood_group"),rs.getString("units"),rs.getString("required_date"),rs.getString("blood_or_platelet"),rs.getString("hospital_address"),rs.getString("phone"),rs.getString("email"),rs.getString("additional_details"),rs.getString("location"));            
  	     }
   		con.close();
       }
  	catch(Exception e) 
	   {  		 
  	   }
	return objects;
        //return arrayOfNotificationsObjects;
   }
}