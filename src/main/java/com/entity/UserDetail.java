package com.entity;

public class UserDetail {
    // uid, realname,age,gender,email,phone,qq,major,classname,edubackground
    private Integer uid;


    private String realname;
    private String age;
    private String gender;
    private String email;
    private String phone;
    private String qq;
    private String major;
    private String classname;
    private String edubackground;

    public Integer getUid() {
        return uid;
    }

    public void setUid(Integer uid) {
        this.uid = uid;
    }

    public UserDetail(Integer uid, String realname, String age, String gender, String email, String phone,
                      String qq, String major, String classname, String edubackground) {
		super();
		this.uid = uid;

        this.realname= realname;
        this.age= age;
        this.gender= gender;
        this.email= email;
        this.phone= phone;
        this.qq= qq;
        this.major= major;
        this.classname= classname;
        this.edubackground= edubackground;
	}



    ////////////////

    public String getRealname() {
        return realname;
    }

    public void setRealname(String realname) {

        this.realname = realname == null ? null : realname.trim();
    }

    public String getAge() {
        return age;
    }

    public void setAge(String age) {

        this.age = age == null ? null : age.trim();
    }

    public String getGender() {
        return gender;
    }

    public void setGender(String gender) {

        this.gender = gender == null ? null : gender.trim();
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {

        this.email = email == null ? null : email.trim();
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {

        this.phone = phone == null ? null : phone.trim();
    }

    public String getQq() {
        return qq;
    }

    public void setQq(String qq) {

        this.qq = qq == null ? null : qq.trim();
    }

    public String getMajor() {
        return major;
    }

    public void setMajor(String major) {

        this.major = major == null ? null : major.trim();
    }

    public String getClassname() {
        return classname;
    }

    public void setClassname(String classname) {

        this.classname = classname == null ? null : classname.trim();
    }

    public String getEdubackground() {
        return edubackground;
    }

    public void setEdubackground(String edubackground) {

        this.edubackground = edubackground == null ? null : edubackground.trim();
    }
}