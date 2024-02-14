package com.shx.pojo;



public class User {
	private Integer userid;
	private String  username;
	private String userpwd;
	
	
	public User( String username, String userpwd) {
		super();
		this.username = username;
		this.userpwd = userpwd;
		
	}

	public User() {}
	
	public User(Integer userid, String username, String userpwd, String truename, String classid) {
		super();
		this.userid = userid;
		this.username = username;
		this.userpwd = userpwd;
		
	}

	public Integer getUserid() {
		return userid;
	}

	public void setUserid(Integer userid) {
		this.userid = userid;
	}

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getUserpwd() {
		return userpwd;
	}

	public void setUserpwd(String userpwd) {
		this.userpwd = userpwd;
	}

	@Override
	public String toString() {
		return "User [userid=" + userid + ", username=" + username + ", userpwd=" + userpwd + ", truename="
				+ ", classid=" + "]";
	}
		public void printUser() {
			System.out.println(toString());
			
		}	
	}
	
	
	
	
	

