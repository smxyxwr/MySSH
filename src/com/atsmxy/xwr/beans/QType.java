package com.atsmxy.xwr.beans;

public class QType {
	private int QTypeID;
	private String QTypeName;
	public QType() {
		super();
		
	}
	
	
	public QType(int qTypeID, String qTypeName) {
		super();
		QTypeID = qTypeID;
		QTypeName = qTypeName;
	}

	public int getQTypeID() {
		return QTypeID;
	}

	public void setQTypeID(int qTypeID) {
		QTypeID = qTypeID;
	}

	public String getQTypeName() {
		return QTypeName;
	}

	public void setQTypeName(String qTypeName) {
		QTypeName = qTypeName;
	}


	@Override
	public String toString() {
		return "QType [QTypeID=" + QTypeID + ", QTypeName=" + QTypeName + "]";
	}
	
}
