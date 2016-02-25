package models;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

public class Get_NearPlace {

	@SuppressWarnings("null")
	public ArrayList<String> get_NearestPlaces(String lat, String lng, int r) {
		// TODO Auto-generated method stub
		ArrayList<String> places= new ArrayList<String>();
		DataSource_Connector dts = new DataSource_Connector("root", "pass");
		java.sql.Connection con = dts.Access_DataSource();
		String stmnt = "SELECT name, ( 6371 * acos( cos( radians("+lat+") ) * cos( radians( lat ) ) * cos( radians( lng ) - radians("+lng+") ) + sin( radians("+lat+") ) * sin( radians( lat ) ) ) ) AS distance FROM markers HAVING distance < "+r+" ORDER BY distance";
		PreparedStatement pd;
		try {
			pd = con.prepareStatement(stmnt);
			ResultSet rs = pd.executeQuery(stmnt);
			while(rs.next()){
				String rst=rs.getString(1)+" "+rs.getString(2);
				places.add(rst);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
		return places;
	}
	

}
