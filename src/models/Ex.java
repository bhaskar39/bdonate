package models;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.sun.xml.internal.org.jvnet.mimepull.MIMEMessage;


public class Ex {
	public static void main(String s[]){
			DataSource_Connector dts = new DataSource_Connector("root", "pass");
			java.sql.Connection con= dts.Access_DataSource();
			String SQL = "SELECT * FROM testing WHERE name=?";
			PreparedStatement st;
			try {
				st = con.prepareStatement(SQL);
				st.setString(1, "kishore");
				ResultSet rs=st.executeQuery();
				
				String s1="SAB+";
				System.out.println(s1.subSequence(1, s1.length()));
				int i=0;
				while(rs.next()){
					System.out.println(++i+rs.getString(1));
				}
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
	}

}
