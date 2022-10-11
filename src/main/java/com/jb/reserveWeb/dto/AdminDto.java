package com.jb.reserveWeb.dto;

public class AdminDto {

	
	private String id;
	private String pw;
	public AdminDto() {
		super();
		// TODO Auto-generated constructor stub
	}
	public AdminDto(String id, String pw) {
		super();
		this.id = id;
		this.pw = pw;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getPw() {
		return pw;
	}
	public void setPw(String pw) {
		this.pw = pw;
	}
	
	
	
}
