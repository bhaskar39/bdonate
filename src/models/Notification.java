package models;

import java.sql.*;
import java.util.ArrayList;

import bos.Requestobj;

public class Notification 
{
	
  public ArrayList<Requestobj> getNotificationsList(String bloodGroup,String email,String email1)
  {
	Requestobj[] arrayOfNotificationsObjects=new Requestobj[10];
	ArrayList<Requestobj> objects = new ArrayList<Requestobj>();
	try 
	 {
   		DataSource_Connector dts = new DataSource_Connector("root", "pass");
   		java.sql.Connection con = dts.Access_DataSource();
   		String stm = "";
   		ResultSet rs;
   		PreparedStatement pstmt=null;
        
   		if (email1!=null){
   			stm="select * from blood_requests where blood_requests.blood_group=? and blood_requests.req_id not in (select blood_requests.req_id from blood_requests,transactions where transactions.req_id=blood_requests.req_id and transactions.email=?)";
   			pstmt= con.prepareStatement(stm);
   			pstmt.setString(1,bloodGroup);
   			pstmt.setString(2, email1);
   		}
   		if(email==null && bloodGroup.charAt(0)=='S'){
   			stm = "select * from blood_requests where BLOOD_GROUP!=?";
   			bloodGroup=bloodGroup.substring(1, bloodGroup.length());
   			pstmt= con.prepareStatement(stm);
   			pstmt.setString(1,bloodGroup);
   		}
   		if (email!=null){
   			stm="select blood_requests.* from blood_requests,transactions where transactions.email=? and blood_requests.req_id=transactions.req_id and transactions.action='approved'";
   			pstmt= con.prepareStatement(stm);
   			pstmt.setString(1,email);
   		}
        
   		rs=pstmt.executeQuery(); 
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