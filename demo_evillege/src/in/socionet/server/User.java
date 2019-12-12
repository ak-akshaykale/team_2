package in.socionet.server;

public class User {
	private int id;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	private String uname;
	private String upass;
	private String uemail;
	private String umobileno;
	public String getUname() {
		return uname;
	}
	public void setUname(String uname) {
		this.uname = uname;
	}
	public String getUpass() {
		return upass;
	}
	public void setUpass(String upass) {
		this.upass = upass;
	}
	public String getUemail() {
		return uemail;
	}
	public void setUemail(String uemail) {
		this.uemail = uemail;
	}
	public String getUmobileno() {
		return umobileno;
	}
	public void setUmobileno(String umobileno) {
		this.umobileno = umobileno;
	}
	
}
