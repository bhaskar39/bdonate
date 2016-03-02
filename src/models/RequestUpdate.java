package models;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class RequestUpdate 
{
	public int getRequestUpdateObject(String req_id,String email,String action)
	{
		   int rs=0;
	       try
	       {
	    	    int req_ids=Integer.parseInt(req_id);
	    	    DataSource_Connector dts = new DataSource_Connector("root", "pass");
	    	    java.sql.Connection con = dts.Access_DataSource();
	    	    String stm = "insert into transactions(req_id,email,action) values(?,?,?)";
	    	    if (!action.equals("approved")){
	    	    	stm="update transactions set action=? where email=? and req_id=?";
	    	    }
	    	    PreparedStatement pstmt = con.prepareStatement(stm);
	    	    pstmt.setInt(1,req_ids);
		        pstmt.setString(2,email);
		        pstmt.setString(3, action);
		        if (!action.equals("approved")){
		        	pstmt.setInt(3,req_ids);
			        pstmt.setString(2,email);
			        pstmt.setString(1, action);
		        }
		   		rs =pstmt.executeUpdate();
		        
	       }
	       catch(Exception e)
	       {	    	   
	       }
	       return rs;
	}
}