package bos;

public class User {

	private String name;
	private String bloodgroup;
	private String gender;
	private String dob;
	private String mobile;
	private String altmobile;
	private String email;
	private String location;
	private String address;
	private String zipcode;
	private String availability;
	
	public User(){
		super();
	}
	public User(String name, String bloodgroup, String gender, String dob, String mobile, String altmobile, String email, String location, String address, String zipcode, String availability){
		this.name = name;
		this.bloodgroup = bloodgroup;
		this.gender = gender;
		this.dob = dob;
		this.mobile = mobile;
		this.altmobile = altmobile;
		this.email = email;
		this.location = location;
		this.address = address;
		this.zipcode = zipcode;
		this.availability = availability;
	}
	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getBloodgroup() {
		return bloodgroup;
	}
	
	public void setBloodgroup(String bloodgroup) {
		this.bloodgroup = bloodgroup;
	}
	
	public String getGender() {
		return gender;
	}
	
	public void setGender(String gender) {
		this.gender = gender;
	}
	
	public String getDob() {
		return dob;
	}
	
	public void setDob(String dob) {
		this.dob = dob;
	}
	
	public String getMobile() {
		return mobile;
	}
	
	public void setMobile(String mobile) {
		this.mobile = mobile;
	}
	
	public String getAltmobile() {
		return altmobile;
	}
	
	public void setAltmobile(String altmobile) {
		this.altmobile = altmobile;
	}
	
	public String getEmail() {
		return email;
	}
	
	public void setEmail(String email) {
		this.email = email;
	}
	
	public String getLocation() {
		return location;
	}
	
	public void setLocation(String location) {
		this.location = location;
	}
	
	public String getAddress() {
		return address;
	}
	
	public void setAddress(String address) {
		this.address = address;
	}
	
	public String getAvailability() {
		return availability;
	}
	
	public void setAvailability(String availability) {
		this.availability = availability;
	}

	public String getZipcode() {
		return zipcode;
	}
	
	public void setZipcode(String zipcode) {
		this.zipcode = zipcode;
	}
}