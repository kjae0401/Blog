package Toy.Blog.DTO;

public class UserDTO {
	private String id;
	private String pwd;
	private String email;
	private String rank;
	private boolean auth;
	
	public String getId() { return id; }
	public void setId(String id) { this.id = id; }
	
	public String getPwd() { return pwd; }
	public void setPwd(String pwd) { this.pwd = pwd; }
	
	public String getEmail() { return email; }
	public void setEmail(String email) { this.email = email; }
	
	public String getRank() { return rank; }
	public void setRank(String rank) { this.rank = rank; }
	
	public boolean isAuth() { return auth; }
	public void setAuth(boolean auth) { this.auth = auth; }	
}