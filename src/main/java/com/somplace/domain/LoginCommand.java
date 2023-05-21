package com.somplace.domain;

public class LoginCommand {
	String memberId;
	String password;
	
	public LoginCommand() {
		super();
	}
	
	public LoginCommand(String memberId, String password) {
		super();
		this.memberId = memberId;
		this.password = password;
	}
	
	public String getMemberId() {
		return memberId;
	}
	public void setMemberId(String memberId) {
		this.memberId = memberId;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	
}
