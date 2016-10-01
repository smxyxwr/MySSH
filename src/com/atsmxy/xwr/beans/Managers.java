package com.atsmxy.xwr.beans;

import java.util.Date;

import javax.persistence.Column;

public class Managers {
	private int managerID;
	private String managerName;
	private String mangerPassword;
	private int mprimary;
	private String mangerSex;
	private String phoneNumber;
	private String email;
	private int authority;
	private Date regtime;
	private int mcondition;
		
	public Managers() {
		super();
	}

	public Managers(int managerID, String managerName, String mangerPassword, int mprimary, String mangerSex,
			String phoneNumber, String email, int authority, Date regtime, int mcondition) {
		super();
		this.managerID = managerID;
		this.managerName = managerName;
		this.mangerPassword = mangerPassword;
		this.mprimary = mprimary;
		this.mangerSex = mangerSex;
		this.phoneNumber = phoneNumber;
		this.email = email;
		this.authority = authority;
		this.regtime = regtime;
		this.mcondition = mcondition;
	}



	public int getManagerID() {
		return managerID;
	}



	public void setManagerID(int managerID) {
		this.managerID = managerID;
	}



	public String getManagerName() {
		return managerName;
	}



	public void setManagerName(String managerName) {
		this.managerName = managerName;
	}



	public String getMangerPassword() {
		return mangerPassword;
	}



	public void setMangerPassword(String mangerPassword) {
		this.mangerPassword = mangerPassword;
	}



	public int getMprimary() {
		return mprimary;
	}



	public void setMprimary(int mprimary) {
		this.mprimary = mprimary;
	}



	public String getMangerSex() {
		return mangerSex;
	}



	public void setMangerSex(String mangerSex) {
		this.mangerSex = mangerSex;
	}



	public String getPhoneNumber() {
		return phoneNumber;
	}



	public void setPhoneNumber(String phoneNumber) {
		this.phoneNumber = phoneNumber;
	}



	public String getEmail() {
		return email;
	}



	public void setEmail(String email) {
		this.email = email;
	}



	public int getAuthority() {
		return authority;
	}



	public void setAuthority(int authority) {
		this.authority = authority;
	}



	public Date getRegtime() {
		return regtime;
	}



	public void setRegtime(Date regtime) {
		this.regtime = regtime;
	}



	public int getMcondition() {
		return mcondition;
	}



	public void setMcondition(int mcondition) {
		this.mcondition = mcondition;
	}



	@Override
	public String toString() {
		return "Managers [managerID=" + managerID + ", managerName=" + managerName + ", mangerPassword="
				+ mangerPassword + ", mprimary=" + mprimary + ", mangerSex=" + mangerSex + ", phoneNumber="
				+ phoneNumber + ", email=" + email + ", authority=" + authority + ", regtime=" + regtime
				+ ", mcondition=" + mcondition + "]";
	}



	
}
