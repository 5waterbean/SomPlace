package com.somplace.domain;

import java.io.Serializable;
import java.util.Date;

@SuppressWarnings("serial")
public class Member implements Serializable {
	private String memberId;
	private String pw;
	private String name;
	private int studentNumber;
	private String major;
	private String phone;
	private int good;
	private int bad;
	private Date birth;
	
	public Member() {
		super();
	}
	
	public Member(String memberId, String pw, String name, int studentNumber, String major, String phone, int good,
			int bad, Date birth) {
		super();
		this.memberId = memberId;
		this.pw = pw;
		this.name = name;
		this.studentNumber = studentNumber;
		this.major = major;
		this.phone = phone;
		this.good = good;
		this.bad = bad;
		this.birth = birth;
	}

	public String getMemberId() {
		return memberId;
	}
	public void setMemberId(String memberId) {
		this.memberId = memberId;
	}
	public String getPw() {
		return pw;
	}
	public void setPw(String pw) {
		this.pw = pw;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public int getStudentNumber() {
		return studentNumber;
	}
	public void setStudentNumber(int studentNumber) {
		this.studentNumber = studentNumber;
	}
	public String getMajor() {
		return major;
	}
	public void setMajor(String major) {
		this.major = major;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public int getGood() {
		return good;
	}
	public void setGood(int good) {
		this.good = good;
	}
	public int getBad() {
		return bad;
	}
	public void setBad(int bad) {
		this.bad = bad;
	}
	public Date getBirth() {
		return birth;
	}
	public void setBirth(Date birth) {
		this.birth = birth;
	}
}
