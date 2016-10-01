package com.atsmxy.xwr.beans;

public class ReportType {
	private int reportTypeID;
	private String reportTypeName;
	

	public ReportType() {
		super();
	}

	public ReportType(int reportTypeID, String reportTypeName) {
		super();
		this.reportTypeID = reportTypeID;
		this.reportTypeName = reportTypeName;
	}

	public int getReportTypeID() {
		return reportTypeID;
	}

	public void setReportTypeID(int reportTypeID) {
		this.reportTypeID = reportTypeID;
	}

	public String getReportTypeName() {
		return reportTypeName;
	}

	public void setReportTypeName(String reportTypeName) {
		this.reportTypeName = reportTypeName;
	}

	@Override
	public String toString() {
		return "ReportType [reportTypeID=" + reportTypeID + ", reportTypeName=" + reportTypeName + "]";
	}
	

}
