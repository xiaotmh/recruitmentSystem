package com.entity;

public class Resume {
    private Integer uid;

    private String uname;

    private String advantage;

    private Integer wantmoney;

    private Integer status;

    private Integer enid;

    public Integer getUid() {
        return uid;
    }

    public void setUid(Integer uid) {
        this.uid = uid;
    }

    public String getUname() {
        return uname;
    }

    public void setUname(String uname) {
        this.uname = uname == null ? null : uname.trim();
    }

    public String getAdvantage() {
        return advantage;
    }

    public void setAdvantage(String advantage) {
        this.advantage = advantage == null ? null : advantage.trim();
    }

    public Integer getWantmoney() {
        return wantmoney;
    }

    public void setWantmoney(Integer wantmoney) {
        this.wantmoney = wantmoney;
    }

    public Integer getStatus() {
        return status;
    }

    public void setStatus(Integer status) {
        this.status = status;
    }

    public Integer getEnid() {
        return enid;
    }

    public void setEnid(Integer enid) {
        this.enid = enid;
    }

	public Resume(Integer uid, String uname, String advantage, Integer wantmoney, Integer status, Integer enid) {
		super();
		this.uid = uid;
		this.uname = uname;
		this.advantage = advantage;
		this.wantmoney = wantmoney;
		this.status = status;
		this.enid = enid;
	}

    public Resume(String uname, String advantage, Integer wantmoney) {
        this.uname = uname;
        this.advantage = advantage;
        this.wantmoney = wantmoney;
    }
}