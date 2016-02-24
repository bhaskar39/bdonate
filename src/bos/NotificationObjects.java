package bos;

public class NotificationObjects 
{
     private String RID;
     private String PNAME;
     private String UNITS;
     private String BLOODORPLATELET;     
 	public NotificationObjects(String RID, String PNAME, String UNITS, String BLOODORPLATELET)
 	   {
		this.RID = RID;
		this.PNAME = PNAME;
		this.UNITS = UNITS;
		this.BLOODORPLATELET = BLOODORPLATELET;
 	   }
	public String getRid() 
	{
		return RID;
	}	
	public String getPname() 
	{
		return PNAME;
	}
	public String getUnits() 
	{
		return UNITS;
	}	
	public String getBloodOrPlatelet() 
	{
		return BLOODORPLATELET;
	}     
}
