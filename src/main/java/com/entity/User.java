package com.entity;

public class User {
    private Integer uid;

    private String upwd;

    public Integer getUid() {
        return uid;
    }

    public void setUid(Integer uid) {
        this.uid = uid;
    }

    public User(Integer uid, String upwd) {
		super();
		this.uid = uid;
		this.upwd = upwd;
	}

	public String getUpwd() {
        return upwd;
    }

    public void setUpwd(String upwd) {
        this.upwd = upwd == null ? null : upwd.trim();
    }
}