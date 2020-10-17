package com.controller;

import javax.servlet.http.HttpServletRequest;

import com.entity.*;
import com.serviceimpl.*;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.ArrayList;
import java.util.List;

@Controller
public class AdminController {
    @Autowired
    private AdminServiceImpl adminService ;
    @Autowired
    private ResumeServiceImpl resi;
    @Autowired
    private RcmessageSercviceImpl rcsi;
    @Autowired
    private EtuserDetailServiceImpl edsi;
    @Autowired
    private UserDetailServiceImpl udsi;
    @Autowired
    private ResumereplyServiceImpl resumereplyService;
    @RequestMapping("/resumeinsert")
    public String ResumeInsert(Integer uid, String uname, String advantage, Integer wantmoney, Integer status, Integer enid) {
   	Resume resume = new Resume(uid, uname, advantage, wantmoney, status, enid);
       int n = resi.insert(resume);	
       if(n>0){
       	return "resumemanager";
       }else {
       	return "adminmain";
       }
    }
   @RequestMapping("/resumedelete")
   public String ResumeDelete(Integer uid) {
      int n = resi.delete(uid);	
      if(n>0){
      	return "admin/adminmain";
      }else {
      	return "faild";
      }
  }
   @RequestMapping("/resumeselect")
   public String Resumeselect(Integer uid,HttpServletRequest request) {
      Resume resume= resi.select(uid);	
      if(resume!=null){
   	request.getSession().setAttribute("resume", resume);
      	return "resumeupdate";
      }else {
      	return "adminmain";
      }
  }
   @RequestMapping("/resumeupdate")
   public String Resumeupdate(Integer uid, String uname, String advantage, Integer wantmoney, Integer status, Integer enid) {
      Resume resume = new Resume(uid, uname, advantage, wantmoney, status, enid);	
      int  n = resi.update(resume);
      if(n>0){
      	return "admin/adminmain";
      }else {
      	return "faild";
      }
  }

    @RequestMapping("/reply")
    public String reply(Integer enid, Integer uid,HttpServletRequest request){
        Resume resume= resi.select3(enid,uid);
        System.out.println("后台reply查询userdetail前uid为：：："+uid);
        UserDetail ud=udsi.select(uid);
        System.out.println("后台reply查询userdetail后实体对象内容为：：："+ud.getRealname()+" "+ud.getAge()+" "+ud.getEmail()+" "+ud.getGender()+" "+ud.getEdubackground()+" ");
        request.getSession().setAttribute("resume",resume );
        request.getSession().setAttribute("userdetail",ud );
        return "resumemessage";
    }

    @RequestMapping("/resive")
    public String Success(Integer uid, String uname, String advantage, Integer wantmoney, Integer status, Integer enid,String faild) {
        Resume resume = new Resume(uid, uname, advantage, wantmoney,1, enid);
        System.out.println("那个有时候enid变0的时候，现在他是：：："+enid);
        int  n = resi.update2(resume);
        //System.out.println("11111"+n);
        //Rcmessage rcmessage =null;
        //rcmessage=rcsi.selectbyenid(enid);
        EtuserDetail ed=edsi.select(enid);

        System.out.println("qqqqenname+"+ed.getRealname());
        if(faild==null||faild==""){
            faild="恭喜您，你已被邀请面试。";
        }
        Resumereply resumereply = new Resumereply(enid,ed.getRealname(),uid,faild);
        System.out.println("插入resumereply前的："+enid+" uid为"+uid);

        List<Resumereply> lrr=resumereplyService.selectListByTwoParamer(uid,enid);
        if(lrr.size()>0){
            System.out.println("插入resumereply前检测到已有对应回复故插入失败，enid为："+enid+" uid为"+uid);
            return "redirect:rcmessagemain";
        }
        else{
            int m = resumereplyService.insert(resumereply);
            if(n>0&&m>0){
                return "redirect:rcmessagemain";
            }else {
                return "redirect:rcmessagemain";
            }
        }



    }


   @RequestMapping("/rcmessageinsert")
   public String RcmessageInsert(Integer rmid, Integer enid, String enname, String wtype, String work, Integer minmoney, Integer maxmoney, String workcity, String experience, String education, String moremessage, String workaddress) {
  	   Rcmessage rcmessage = new Rcmessage(rmid, enid, enname, wtype, work, minmoney, maxmoney, workcity, experience, education, moremessage, workaddress);
      int n = rcsi.insert(rcmessage);	
      if(n>0){
      	return "rcmessagemanager";
      }else {
      	return "adminmain";
      }
   }
  @RequestMapping("/rcmessagedelete")
  public String RcmessageDelete(Integer rmid) {
     int n = rcsi.delete(rmid);	
     if(n>0){
     	return "admin/adminmain";
     }else {
     	return "faild";
     }
 }

  @RequestMapping("/rcmessageselect")
  public String Rcmessageselect(Integer rmid,HttpServletRequest request) {
     Rcmessage Rcmessage= rcsi.select(rmid);	
     if(Rcmessage!=null){
  	   request.getSession().setAttribute("Rcmessage", Rcmessage);
     	return "rcmessageupdate";
     }else {
     	return "adminmain";
     }
 }
  @RequestMapping("/rcmessageupdate")
  public String Rcmessageupdate(Integer rmid, Integer enid, String enname, String wtype, String work, Integer minmoney, Integer maxmoney, String workcity, String experience, String education, String moremessage, String workaddress) {
     Rcmessage Rcmessage = new Rcmessage(rmid, enid, enname, wtype, work, minmoney, maxmoney, workcity, experience, education, moremessage, workaddress);
     int  n = rcsi.update(Rcmessage);
     if(n>0){
     	return "admin/adminmain";
     }else {
     	return "faild";
     }
 }
     @GetMapping("adminlogin")
    public  String LoginInit(){
          return "admin/adminlogin";
     }
    @RequestMapping("/adminlogin2")
    public String Login(Integer aid, String apwd) {
        int n = adminService.Login(aid, apwd);
        if (n > 0) {
            return "admin/adminmain";
        } else {
            return "faild";
        }
    }
    @GetMapping("adminlogin3")
    public  String LoginInit2(){
        return "admin/adminmain";
    }

}
