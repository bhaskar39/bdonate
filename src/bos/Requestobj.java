package bos;
public class Requestobj {
	private String username;
	private String patientname;
	private String date;
	private String borp;
	private String hospital;
	private String phone;
	private String email;
	private String ad;
	private String bloodgroup;
	private String units;
	private String location;
	private int req_id;
	public Requestobj(String patientname, String username,String bloodgroup,String units,String date,String borp,String hospital,String phone,String email,String ad,String location){
		this.username = username;
		this.patientname = patientname;
		this.bloodgroup=bloodgroup;
		this.units=units;
		this.date=date;
		this.borp=borp;
		this.hospital=hospital;
		this.phone=phone;
		this.email=email;
		this.ad=ad;
		this.location=location;
	}
	public String getUsername() {
		return username;
	}
 
	public void setUsername(String username) {
		this.username = username;
	}
 
	public String getPatientname() {
		return patientname;
	}
 
	public void setPassword(String patientname) {
		this.patientname = patientname;
	}
	public String getBloodgroup() {
		return bloodgroup;
	}
 
	public void setBloodgroup(String bloodgroup) {
		this.bloodgroup = bloodgroup;
	}
	public String getUnits() {
		return units;
	}
 
	public void setUnits(String units) {
		this.units = units;
	}
	public String getBorp() {
		return borp;
	}
 
	public void setBorp(String borp) {
		this.borp = borp;
	}
	public String getDate() {
		return date;
	}
 
	public void setDate(String date) {
		this.date = date;
	}
	public String getHospital() {
		return hospital;
	}
 
	public void setHospital(String hospital) {
		this.hospital = hospital;
		
	}
	public String getPhone() {
		return phone;
	}
 
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public String getEmail() {
		return email;
	}
 
	public void setEmail(String email) {
		this.email = email;
	}
	public String getAd() {
		return ad;
	}
 
	public void setAd(String ad) {
		this.ad = ad;
	}
	public String getLocation() {
		return location;
	}
 
	public void setLocation(String ad) {
		this.location = ad;
	}
	public int getReq_id() {
		return req_id;
	}
 
	public void setReq_id(int ad) {
		this.req_id = ad;
	}
}