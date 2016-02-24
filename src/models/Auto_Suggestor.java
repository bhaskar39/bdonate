package models;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

public class Auto_Suggestor {
	
	public Auto_Suggestor(){
		super();
	}
	public ArrayList<String> get_Suggestions(String table,String field,String con_field,String val){
		DataSource_Connector dts= new DataSource_Connector("root", "pass");
		java.sql.Connection con = dts.Access_DataSource();
		String qry = "SELECT distinct("+field+") FROM "+table+" WHERE "+con_field+" LIKE ? OR zipcode LIKE ?";
		ArrayList<String> results = new ArrayList<String>();
		try {
			PreparedStatement pst = con.prepareStatement(qry);
			//pst.setString(1, field);
			//pst.setString(2, table);
			//pst.setString(2, con_field);
			pst.setString(1, "%"+val+"%");
			pst.setString(2, "%"+val+"%");
			ResultSet rs = pst.executeQuery();
			while(rs.next()){
				results.add(rs.getString(1));
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
//		String qry = "SELECT distinct("+field+") FROM "+table+" WHERE "+con_field+" LIKE %"+val+"%";
		return results;
		
	}

}
