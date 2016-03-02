package models;

import java.sql.PreparedStatement;
import java.sql.SQLException;
import bos.Requestobj;
import java.util.Calendar;
public class Request
{
	java.sql.Connection con=null;
	public String recard_Request (Requestobj req){
		try {
			Calendar calendar = Calendar.getInstance();
			DataSource_Connector dts = new DataSource_Connector("root", "pass");
			java.sql.Connection con = dts.Access_DataSource();
			String SQL = "INSERT INTO blood_requests" + "(patient_name,req_name,blood_group,units,blood_or_platelet,required_date,phone,email,hospital_address,additional_details,timestamp,location) VALUES(?,?,?,?,?,?,?,?,?,?,?,?)";
			PreparedStatement preparedStatement = con.prepareStatement(SQL);
			preparedStatement.setString(1, req.getPatientname());
			preparedStatement.setString(2, req.getUsername());
			preparedStatement.setString(3, req.getBloodgroup());
			preparedStatement.setString(4, req.getUnits());
			preparedStatement.setString(5, req.getBorp());
			preparedStatement.setString(6, req.getDate());
			preparedStatement.setString(7, req.getPhone());
			preparedStatement.setString(8, req.getEmail());
			preparedStatement.setString(9, req.getHospital());
			preparedStatement.setString(10, req.getAd());
			java.sql.Timestamp ourJavaTimestampObject = new java.sql.Timestamp(calendar.getTime().getTime());
			preparedStatement.setTimestamp(11, ourJavaTimestampObject);
			preparedStatement.setString(12, req.getLocation());
			// execute insert SQL statement
			int r=preparedStatement.executeUpdate();
			if (r==1)
				return "success";
			con.close();
			} 
		
		catch (SQLException e)
		{
			e.printStackTrace();
		} 
		return "failed";
	}
}