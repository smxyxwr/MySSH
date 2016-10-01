package com.atsmxy.xwr.beans;

public class AgriInfoType {
	private int massageTypeID;
	private String TypeName;
	

	public AgriInfoType() {
		super();
		
	}

	public AgriInfoType(int massageTypeID, String typeName) {
		super();
		this.massageTypeID = massageTypeID;
		TypeName = typeName;
	}

	public int getMassageTypeID() {
		return massageTypeID;
	}

	public void setMassageTypeID(int massageTypeID) {
		this.massageTypeID = massageTypeID;
	}

	public String getTypeName() {
		return TypeName;
	}

	public void setTypeName(String typeName) {
		TypeName = typeName;
	}

	@Override
	public String toString() {
		return "AgriInfoType [massageTypeID=" + massageTypeID + ", TypeName=" + TypeName + "]";
	}
	
}
