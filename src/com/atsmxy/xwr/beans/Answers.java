package com.atsmxy.xwr.beans;

import java.util.Date;
public class Answers {
	private int answerID;
	private int questionID;
	private Users userID;
	private String AnsContent;
	private Users AtUserID;
	private Date AnsTime;
	private int isShow;
	
	public Answers() {
		super();
		
	}

	public Answers(int answerID, int questionID, Users userID, String ansContent, Users atUserID, Date ansTime,
			int isShow) {
		super();
		this.answerID = answerID;
		this.questionID = questionID;
		this.userID = userID;
		AnsContent = ansContent;
		AtUserID = atUserID;
		AnsTime = ansTime;
		this.isShow = isShow;
	}

	public int getAnswerID() {
		return answerID;
	}

	public void setAnswerID(int answerID) {
		this.answerID = answerID;
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

	public String getAnsContent() {
		return AnsContent;
	}

	public void setAnsContent(String ansContent) {
		AnsContent = ansContent;
	}

	public Users getAtUserID() {
		return AtUserID;
	}

	public void setAtUserID(Users atUserID) {
		AtUserID = atUserID;
	}

	public Date getAnsTime() {
		return AnsTime;
	}

	public void setAnsTime(Date ansTime) {
		AnsTime = ansTime;
	}

	public int getIsShow() {
		return isShow;
	}

	public void setIsShow(int isShow) {
		this.isShow = isShow;
	}

	@Override
	public String toString() {
		return "Answers [answerID=" + answerID + ", questionID=" + questionID + ", userID=" + userID + ", AnsContent="
				+ AnsContent + ", AtUserID=" + AtUserID + ", AnsTime=" + AnsTime + ", isShow=" + isShow + "]";
	}

	
}
