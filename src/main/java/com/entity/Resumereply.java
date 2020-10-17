package com.entity;

public class Resumereply {
	private Integer enid;

	private Integer uid;

	private String enname;

	private String message;

	public Integer getUid() {
		return uid;
	}

	public void setUid(Integer uid) {
		this.uid = uid;
	}

	public Integer getEnid() {
		return enid;
	}

	public void setEnid(Integer enid) {
		this.enid = enid;
	}

	public String getEnname() {
		return enname;
	}

	public void setEnname(String enname) {
		this.enname = enname == null ? null : enname.trim();
	}

	public String getMessage() {
		return message;
	}

	public void setMessage(String message) {
		this.message = message == null ? null : message.trim();
	}

	public Resumereply(Integer enid, String enname, Integer uid,String message) {
		super();
		this.enid = enid;
		this.enname = enname;
		this.uid = uid;
		this.message = message;
	}

	public Resumereply() {
		super();
	}

}