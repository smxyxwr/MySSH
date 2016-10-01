package com.atsmxy.xwr.beans;

import java.util.Date;

public class AgriInfo {
	private int massageID;
	private String author;
	private String title;
	private String picture;
	private String content;
	// 农业信息分类，单项一对多的关系
	private AgriInfoType massageTypeID;
	private Date updatetime;
	private Integer isShow;

	public AgriInfo(){
		super();
	}
	
	
	public AgriInfo(int massageID, String author, String title, String picture, String content,
			AgriInfoType massageTypeID, Date updatetime, Integer isShow) {
		super();
		this.massageID = massageID;
		this.author = author;
		this.title = title;
		this.picture = picture;
		this.content = content;
		this.massageTypeID = massageTypeID;
		this.updatetime = updatetime;
		this.isShow = isShow;
	}

	public int getMassageID() {
		return massageID;
	}

	public void setMassageID(int massageID) {
		this.massageID = massageID;
	}

	public String getAuthor() {
		return author;
	}

	public void setAuthor(String author) {
		this.author = author;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getPicture() {
		return picture;
	}

	public void setPicture(String picture) {
		this.picture = picture;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public AgriInfoType getMassageTypeID() {
		return massageTypeID;
	}

	public void setMassageTypeID(AgriInfoType massageTypeID) {
		this.massageTypeID = massageTypeID;
	}

	public Date getUpdatetime() {
		return updatetime;
	}

	public void setUpdatetime(Date updatetime) {
		this.updatetime = updatetime;
	}

	public Integer getIsShow() {
		return isShow;
	}

	public void setIsShow(Integer isShow) {
		this.isShow = isShow;
	}

	@Override
	public String toString() {
		return "AgriInfo [massageID=" + massageID + ", author=" + author + ", title=" + title + ", picture=" + picture
				+ ", content=" + content + ", massageTypeID=" + massageTypeID + ", updatetime=" + updatetime
				+ ", isShow=" + isShow + "]";
	}
	

}
