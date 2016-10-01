package com.atsmxy.xwr.beans;

import java.util.Date;

public class Questions {
	private int questionID;
	private Users userID;
	private Date Qtime;
	private QType QTypeID;
	private int isShow;
	public Questions() {
		super();
	}

	public Questions(int questionID, Users userID, Date qtime, QType qTypeID, int isShow) {
		super();
		this.questionID = questionID;
		this.userID = userID;
		Qtime = qtime;
		QTypeID = qTypeID;
		this.isShow = isShow;
	}

	public int getQuestionID() {
		return questionID;
	}

	public void setQuestionID(int questionID) {
		this.questionID = questionID;
	}

	public Users getUserID() {
		return userID;
	}

	public void setUserID(Users userID) {
		this.userID = userID;
	}

	public Date getQtime() {
		return Qtime;
	}

	public void setQtime(Date qtime) {
		Qtime = qtime;
	}

	public QType getQTypeID() {
		return QTypeID;
	}

	public void setQTypeID(QType qTypeID) {
		QTypeID = qTypeID;
	}

	public int getIsShow() {
		return isShow;
	}

	public void setIsShow(int isShow) {
		this.isShow = isShow;
	}

	@Override
	public String toString() {
		return "Questions [questionID=" + questionID + ", userID=" + userID + ", Qtime=" + Qtime + ", QTypeID="
				+ QTypeID + ", isShow=" + isShow + "]";
	}

	
}
