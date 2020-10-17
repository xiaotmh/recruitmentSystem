package com.entity;

public class Rcmessage {
    private Integer rmid;

    private Integer enid;

    private String enname;

    private String wtype;

    private String work;

    private Integer minmoney;

    private Integer maxmoney;

    private String workcity;

    private String experience;

    private String education;

    private String moremessage;

    private String workaddress;

    public Integer getRmid() {
        return rmid;
    }

    public void setRmid(Integer rmid) {
        this.rmid = rmid;
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

    public String getWtype() {
        return wtype;
    }

    public void setWtype(String wtype) {
        this.wtype = wtype == null ? null : wtype.trim();
    }

    public String getWork() {
        return work;
    }

    public void setWork(String work) {
        this.work = work == null ? null : work.trim();
    }

    public Integer getMinmoney() {
        return minmoney;
    }

    public void setMinmoney(Integer minmoney) {
        this.minmoney = minmoney;
    }

    public Integer getMaxmoney() {
        return maxmoney;
    }

    public void setMaxmoney(Integer maxmoney) {
        this.maxmoney = maxmoney;
    }

    public String getWorkcity() {
        return workcity;
    }

    public void setWorkcity(String workcity) {
        this.workcity = workcity == null ? null : workcity.trim();
    }

    public String getExperience() {
        return experience;
    }

    public void setExperience(String experience) {
        this.experience = experience == null ? null : experience.trim();
    }

    public String getEducation() {
        return education;
    }

    public void setEducation(String education) {
        this.education = education == null ? null : education.trim();
    }

    public String getMoremessage() {
        return moremessage;
    }

    public void setMoremessage(String moremessage) {
        this.moremessage = moremessage == null ? null : moremessage.trim();
    }

    public String getWorkaddress() {
        return workaddress;
    }

    public void setWorkaddress(String workaddress) {
        this.workaddress = workaddress == null ? null : workaddress.trim();
    }

    public Rcmessage(Integer rmid, Integer enid, String enname, String wtype, String work, Integer minmoney, Integer maxmoney, String workcity, String experience, String education, String moremessage, String workaddress) {
        this.rmid = rmid;
        this.enid = enid;
        this.enname = enname;
        this.wtype = wtype;
        this.work = work;
        this.minmoney = minmoney;
        this.maxmoney = maxmoney;
        this.workcity = workcity;
        this.experience = experience;
        this.education = education;
        this.moremessage = moremessage;
        this.workaddress = workaddress;
    }

    public Rcmessage(Integer enid) {
        this.enid = enid;
    }
}