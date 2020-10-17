package com.entity;

public class Etuser {
    private Integer bid;

    private String bpwd;

    public Integer getBid() {
        return bid;
    }

    public void setBid(Integer bid) {
        this.bid = bid;
    }

    public String getBpwd() {
        return bpwd;
    }

    public void setBpwd(String bpwd) {
        this.bpwd = bpwd == null ? null : bpwd.trim();
    }

	public Etuser(Integer bid, String bpwd) {
		super();
		this.bid = bid;
		this.bpwd = bpwd;
	}
    
}