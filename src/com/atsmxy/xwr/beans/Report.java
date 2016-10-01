package com.atsmxy.xwr.beans;

public class Report {
	private Integer reportID;
	private Users reUser;
	private ReportType reportType;
	private String reContent;
	
	
	public Report() {
		super();
		
	}

	public Report(Integer reportID, Users reUser, ReportType reportType, String reContent) {
		super();
		this.reportID = reportID;
		this.reUser = reUser;
		this.reportType = reportType;
		this.reContent = reContent;
	}

	public Integer getReportID() {
		return reportID;
	}

	public void setReportID(Integer reportID) {
		this.reportID = reportID;
	}

	public Users getReUser() {
		return reUser;
	}

	public void setReUser(Users reUser) {
		this.reUser = reUser;
	}

	public ReportType getReportType() {
		return reportType;
	}

	public void setReportType(ReportType reportType) {
		this.reportType = reportType;
	}

	public String getReContent() {
		return reContent;
	}

	public void setReContent(String reContent) {
		this.reContent = reContent;
	}

	@Override
	public String toString() {
		return "Report [reportID=" + reportID + ", reUser=" + reUser + ", reportType=" + reportType + ", reContent="
				+ reContent + "]";
	}
}
