package models;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class RequestUpdate 
{
	public int getRequestUpdateObject(String req_id,String email)
	{
		   int rs=0;
	       try
	       {
	    	    int req_ids=Integer.parseInt(req_id);
	    	    DataSource_Connector dts = new DataSource_Connector("root", "pass");
	    	    java.sql.Connection con = dts.Access_DataSource();
		        PreparedStatement pst=con.prepareStatement("select * from transactions where email=? and req_id=?");
		        pst.setString(1,email);
		        pst.setInt(2, req_ids);
		        ResultSet rst=pst.executeQuery();
		        while(rst.next())
		        {
		        	rs=0;
		        	return rs;
		        }
		        PreparedStatement pstmt = con.prepareStatement("insert into transactions(req_id,email,action) values(?,?,?)");
		        
		        pstmt.setInt(1,req_ids);
		        pstmt.setString(2,email);
		        pstmt.setString(3, "ACTIVE");
		   		//rs =pstmt.executeUpdate();
		        rs=0;
	       }
	       catch(Exception e)
	       {	    	   
	       }
	       return rs;
	}
}