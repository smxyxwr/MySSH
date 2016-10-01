package com.atsmxy.xwr.beans;

import java.util.Date;

public class Users {
	private int userID;
	private int accountNumber;
	private String userName;
	private String userPassword;
	private String userSex;
	private String phoneNumber;
	private String email;
	private int points;
	private Date regTime;
	private String picture;
	private int ucondition;

	public Users() {
		super();
	}

	public Users(int userID, int accountNumber, String userName, String userPassword, String userSex,
			String phoneNumber, String email, int points, Date regTime, String picture, int ucondition) {
		super();
		this.userID = userID;
		this.accountNumber = accountNumber;
		this.userName = userName;
		this.userPassword = userPassword;
		this.userSex = userSex;
		this.phoneNumber = phoneNumber;
		this.email = email;
		this.points = points;
		this.regTime = regTime;
		this.picture = picture;
		this.ucondition = ucondition;
	}

	public int getUserID() {
		return userID;
	}

	public void setUserID(int userID) {
		this.userID = userID;
	}

	public int getAccountNumber() {
		return accountNumber;
	}

	public void setAccountNumber(int accountNumber) {
		this.accountNumber = accountNumber;
	}

	public String getUserName() {
		return userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}

	public String getUserPassword() {
		return userPassword;
	}

	public void setUserPassword(String userPassword) {
		this.userPassword = userPassword;
	}

	public String getUserSex() {
		return userSex;
	}

	public void setUserSex(String userSex) {
		this.userSex = userSex;
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

	public int getPoints() {
		return points;
	}

	public void setPoints(int points) {
		this.points = points;
	}

	public Date getRegTime() {
		return regTime;
	}

	public void setRegTime(Date regTime) {
		this.regTime = regTime;
	}

	public String getPicture() {
		return picture;
	}

	public void setPicture(String picture) {
		this.picture = picture;
	}

	public int getUcondition() {
		return ucondition;
	}

	public void setUcondition(int ucondition) {
		this.ucondition = ucondition;
	}

	@Override
	public String toString() {
		return "Users [userID=" + userID + ", accountNumber=" + accountNumber + ", userName=" + userName
				+ ", userPassword=" + userPassword + ", userSex=" + userSex + ", phoneNumber=" + phoneNumber
				+ ", email=" + email + ", points=" + points + ", regTime=" + regTime + ", picture=" + picture
				+ ", ucondition=" + ucondition + "]";
	}

}
