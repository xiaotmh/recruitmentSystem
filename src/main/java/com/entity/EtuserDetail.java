package com.entity;

public class EtuserDetail {
    //bid, realname, address, phone, website, information
    private Integer bid;



    private String realname;
    private String address;
    private String phone;
    private String website;
    private String information;
    private String contact;
    public Integer getBid() {
        return bid;
    }

    public void setBid(Integer bid) {
        this.bid = bid;
    }


	public EtuserDetail(Integer bid, String realname, String address, String phone, String website, String information, String contact) {
		super();
		this.bid = bid;
		this.realname = realname;
        this.address = address;
        this.phone = phone;
        this.website = website;
        this.information = information;
        this.contact = contact;
	}

	////////////////////////////
    public String getRealname() {
        return realname;
    }

    public void setRealname(String realname) {
        this.realname = realname == null ? null : realname.trim();
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address == null ? null : address.trim();
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone == null ? null : phone.trim();
    }

    public String getWebsite() {
        return website;
    }

    public void setWebsite(String website) {
        this.website = website == null ? null : website.trim();
    }

    public String getInformation() {
        return information;
    }

    public void setInformation(String information) {
        this.information = information == null ? null : information.trim();
    }

    public String getContact() {
        return contact;
    }

    public void setContact(String contact) {
        this.contact = contact == null ? null : contact.trim();
    }
}