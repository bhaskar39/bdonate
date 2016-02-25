package bos;

public class Marker {
	private int id;
	private String name;
	private String address;
	private String lat;
	private String lng;
	
	public Marker(int id,String name,String address,String lat,String lng){
		this.id=id;
		this.name=name;
		this.address=address;
		this.lat=lat;
		this.lng=lng;
	}
	public int getId(){
		return id;
	}
	public String getName(){
		return name;
	}
	public String getAddress(){
		return address;
	}
	public String getLat(){
		return lat;
	}
	public String getLng(){
		return lng;
	}
	
	public void setName(String name){
		this.name=name;
	}
	public void setAddress(String address){
		this.address=address;
	}
	public void setLat(String lat){
		this.lat=lat;
	}
	public void setLng(String lng){
		this.lng=lng;
	}

}
