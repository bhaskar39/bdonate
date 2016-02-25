package models;

import java.sql.PreparedStatement;
import java.sql.SQLException;

public class Marker_Record {
	public Marker_Record(String name,String address,String lat,String lng){
		DataSource_Connector dts = new DataSource_Connector("root", "pass");
		java.sql.Connection con = dts.Access_DataSource();
		String stm ="INSERT INTO MARKERS(NAME,ADDRESS,LAT,LNG) VALUES(?,?,?,?)";
		try {
			PreparedStatement pd = con.prepareStatement(stm);
			pd.setString(1, name);
			pd.setString(2, address);
			pd.setString(3, lat);
			pd.setString(4, lng);
			pd.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	}
}
