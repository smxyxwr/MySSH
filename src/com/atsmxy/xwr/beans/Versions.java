package com.atsmxy.xwr.beans;

public class Versions {
	private int versionID;
	private String version;
	private String description;
	
	
	public Versions() {
		super();
	}

	public Versions(int versionID, String version, String description, String url, String isForce) {
		super();
		this.versionID = versionID;
		this.version = version;
		this.description = description;
		this.url = url;
		this.isForce = isForce;
	}

	private String url;
	private String isForce;
	

	public int getVersionID() {
		return versionID;
	}

	public void setVersionID(int versionID) {
		this.versionID = versionID;
	}

	public String getVersion() {
		return version;
	}

	public void setVersion(String version) {
		this.version = version;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public String getUrl() {
		return url;
	}

	public void setUrl(String url) {
		this.url = url;
	}

	public String getIsForce() {
		return isForce;
	}

	public void setIsForce(String isForce) {
		this.isForce = isForce;
	}

	@Override
	public String toString() {
		return "Versions [versionID=" + versionID + ", version=" + version + ", description=" + description + ", url="
				+ url + ", isForce=" + isForce + "]";
	}

}
