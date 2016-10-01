package com.atsmxy.xwr.beans;

import java.util.Date;

public class AgriLeaveMsg {
	private int msgID;
	private int massageID;
	private Users msgUserID;
	private String msgContent;
	private Date msgAddTime;
	private int isShow;
	
	public AgriLeaveMsg() {
		super();
		
	}

	public AgriLeaveMsg(int msgID, int massageID, Users msgUserID, String msgContent, Date msgAddTime, int isShow) {
		super();
		this.msgID = msgID;
		this.massageID = massageID;
		this.msgUserID = msgUserID;
		this.msgContent = msgContent;
		this.msgAddTime = msgAddTime;
		this.isShow = isShow;
	}

	public int getMsgID() {
		return msgID;
	}

	public void setMsgID(int msgID) {
		this.msgID = msgID;
	}

	public int getMassageID() {
		return massageID;
	}

	public void setMassageID(int massageID) {
		this.massageID = massageID;
	}

	public Users getMsgUserID() {
		return msgUserID;
	}

	public void setMsgUserID(Users msgUserID) {
		this.msgUserID = msgUserID;
	}

	public String getMsgContent() {
		return msgContent;
	}

	public void setMsgContent(String msgContent) {
		this.msgContent = msgContent;
	}

	public Date getMsgAddTime() {
		return msgAddTime;
	}

	public void setMsgAddTime(Date msgAddTime) {
		this.msgAddTime = msgAddTime;
	}

	public int getIsShow() {
		return isShow;
	}

	public void setIsShow(int isShow) {
		this.isShow = isShow;
	}

	@Override
	public String toString() {
		return "AgriLeaveMsg [msgID=" + msgID + ", massageID=" + massageID + ", msgUserID=" + msgUserID
				+ ", msgContent=" + msgContent + ", msgAddTime=" + msgAddTime + ", isShow=" + isShow + "]";
	}

	

}
