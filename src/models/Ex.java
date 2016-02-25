package models;

import java.io.IOException;
import java.io.StringReader;
import java.net.MalformedURLException;
import java.net.URL;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.json.Json;
import javax.json.JsonObject;
import javax.json.JsonObjectBuilder;
import javax.json.JsonReader;

import org.apache.catalina.connector.InputBuffer;

import com.mysql.jdbc.Util;
import com.sun.java_cup.internal.runtime.Scanner;
import com.sun.net.ssl.HttpsURLConnection;
import com.sun.xml.internal.org.jvnet.mimepull.MIMEMessage;

import sun.org.mozilla.javascript.internal.json.JsonParser;
import com.google.gson.*;

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
				String s2="16.44,81.394";
				String[] kk = s2.split(",");
				for(int i1=0;i1<kk.length;i1++)
					System.out.println(kk[i1]);
				/*
				URL url = new URL("https://maps.googleapis.com/maps/api/distancematrix/json?origins=16.544893,81.521240&destinations=16.750504,82.023003|16.517454,81.725342|16.543297,81.602432&key=AIzaSyCCFx1Ulkn-qmvA97aj0Qp1CBh_xeC7knc");
				java.util.Scanner sc = new java.util.Scanner(url.openStream());
				String response = sc.useDelimiter("\\Z").next();
				
				com.google.gson.JsonParser jp = new com.google.gson.JsonParser();
				com.google.gson.JsonObject ob = jp.parse(response).getAsJsonObject();
				
				System.out.println(ob.getAsJsonArray("destination_addresses").get(0));
				
				
				System.out.println(response);
				sc.close();
				*/
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
	}

}
