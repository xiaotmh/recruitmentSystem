package com.entity;

public class Usercollection {
    private Integer rmid;

    private Integer uid;

    private Integer enid;

    private String enname;

    private Integer money;

    private String treatment;

    private String workadress;

    private String moremessage;

    public Integer getRmid() {
        return rmid;
    }

    public void setRmid(Integer rmid) {
        this.rmid = rmid;
    }

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

    public Integer getMoney() {
        return money;
    }

    public void setMoney(Integer money) {
        this.money = money;
    }

    public String gettreatment() {
        return treatment;
    }

    public void settreatment(String treatment){
        this.treatment = treatment == null ? null : treatment.trim();
    }

    public String getWorkadress() {
        return workadress;
    }

    public void setWorkadress(String workadress) {
        this.workadress = workadress == null ? null : workadress.trim();
    }

    public String getMoremessage() {
        return moremessage;
    }

    public void setMoremessage(String moremessage) {
        this.moremessage = moremessage == null ? null : moremessage.trim();
    }

	public Usercollection(Integer uid, Integer rmid, Integer enid, String enname,Integer money, String treatment,
			String workadress, String moremessage) {
		super();
		this.uid = uid;
		this.rmid = rmid;
		this.enid = enid;
		this.enname = enname;
		this.money = money;
		this.treatment = treatment;
		this.workadress = workadress;
		this.moremessage = moremessage;
	}
    
}