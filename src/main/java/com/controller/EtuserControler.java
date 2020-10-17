package com.controller;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import com.entity.*;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.serviceimpl.*;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

@Controller
public class EtuserControler {
    private  Integer a=0;
    private Integer enid=0;
    private Model model =null;
    private PageInfo<Rcmessage>  pageInfo;
    @Autowired
    private EtuserServiceImpl etuserservice ;
    @Autowired
    private EtuserDetailServiceImpl etuserdetailservice ;
    @Autowired
    private UserServiceImpl userservice ;
    @Autowired
    private UserDetailServiceImpl userdetailservice ;
   @Autowired
   private RcmessageSercviceImpl rcsi ;
   @Autowired
   private ResumereplyServiceImpl rere;
    @Autowired
    private ResumeServiceImpl resumeService;
    @Autowired
    private UsercollectionServiceImpl usercollectionService;
    //通过前端页面做个选择，etuserlogin.jsp是企业用户的登陆界面

     @GetMapping("/etusermain")
    public String Emain(){
        return "etusermain";
    }



    @GetMapping("/etuserlogin")
   public String UserLogin(){
   	return "etlogintest";
   }


    @GetMapping("/etlogintest")
    public String UserLogin2(){
        return "etlogintest";
    }












    @GetMapping("/register2")
    public String EtuserResgiter(){
        return "registertest2";
    }


    /////////////企业通过rmid修改企业已发布的招聘信息
    @RequestMapping("/etuserchangercm")
    public String EtuserChangeRcm(Integer rmid,HttpServletRequest request){
         System.out.println("后台select之前的rmid为："+rmid);
         Rcmessage rcmessage1=new Rcmessage(0,0,"","","",0,0,"","","","","");
         rcmessage1=rcsi.selectbyrmid(rmid);
         System.out.println("后台获取到了要修改的数据原内容，其中rmid为:"+rcmessage1.getRmid()+" enname:"+rcmessage1.getEnname());
         request.getSession().setAttribute("rcmessage",rcmessage1);
         System.out.println("后台即将跳转修改页面，其中rmid为:"+rmid);
         return "etuserchangercmaa";
    }

    @RequestMapping("/etuserchangercmact")
    public String EtuserChangeRcmAct(Integer rmid,Integer enid,String enname,String  wtype,String  work,Integer  minmoney,Integer  maxmoney,String  workcity,String  experience,String  education,String  moremessage,String  workaddress,HttpServletRequest request){
//rmid, enid, enname, wtype, work, minmoney, maxmoney, workcity, experience, education, moremessage, workaddress

        Rcmessage rcmessage=new Rcmessage(rmid, enid, enname, wtype, work, minmoney, maxmoney, workcity, experience, education, moremessage, workaddress);
        System.out.println("后台即将修改rcmessage，其中rmid为:"+rmid+" enid为："+enid);
        int n=rcsi.update(rcmessage);
        System.out.println("后台已经修改rcmessage，其中rmid为:"+rmid+" enid为："+enid+" 影响了几条数据："+n);
        if(n>0){
            return "redirect:allrcmessage";
        }
        else{
            return "redirect:allrcmessage";
        }

    }





    //企业用户的登陆验证，etusermain是企业用户的主界面
   @RequestMapping("/login2")
   public String Login(Integer uid,String upwd,HttpServletRequest request){
       int n = etuserservice.Login(uid, upwd);
       if(n>0) {
           enid=uid;
           request.getSession().setAttribute("uid",uid);
           request.getSession().setAttribute("etuserid",enid);
           request.getSession().setAttribute("enid",enid);

           EtuserDetail ed=etuserdetailservice.select(enid);
           request.getSession().setAttribute("etuserdetail",ed);
           System.out.println("后台查之前enid是:"+enid);
           List<Rcmessage> lrrr=rcsi.rcmessageListByEnid(enid);
           request.getSession().setAttribute("lrrr",lrrr);
           System.out.println("后台通过enid:"+enid+" 查到了lrrr"+lrrr.toString());
           System.out.println("后台查到的lrrr内容数量为:"+lrrr.size());
		return "redirect:allrcmessage";
       }else {
           request.getSession().setAttribute("enid",enid);
        return "faild";
       }
   }
   @RequestMapping("/create")
   public String create(){
       return "company/create";
   }

   //企业用户的crud，页面中也不用考虑
   @RequestMapping("/etuserinsert")
   public String EtuserInsert(Integer eid,String epwd) {
  	Etuser etuser = new Etuser(eid,epwd);
      int n = etuserservice.insert(etuser);	
      if(n>0){
      	return "admin/adminmain";
      }else {
      	return "faild";
      }
   }
    @RequestMapping("/etuserinsert2")
    public String EtuserInsert2(Integer eid,String epwd) {
        Etuser etuser = new Etuser(eid,epwd);
        int n = etuserservice.insert(etuser);
        if(n>0){
            return "etuserlogin";
        }else {
            return "faild";
        }
    }
  @RequestMapping("/etuserdelete")
  public String EtuserDelete(Integer eid) {
     int n = etuserservice.delete(eid);	
     if(n>0){
     	return "admin/adminmain";
     }else {
     	return "faild";
     }
 }
  @RequestMapping("/etuserselect")
  public String Etuserselect(Integer eid,HttpServletRequest request) {
     Etuser Etuser= etuserservice.select(eid);	
     if(Etuser!=null){
  	request.getSession().setAttribute("etuser", Etuser);
     	return "etuserupdate";
     }else {
     	return "adminmain";
     }
 }
  @RequestMapping("/etuserupdate")
  public String Etuserupdate(Integer eid,String epwd) {
     Etuser Etuser = new Etuser(eid,epwd);	
     int  n = etuserservice.update(Etuser);
     if(n>0){
     	return "admin/adminmain";
     }else {
     	return "faild";
     }
 }
 /////////////////////////////////////////////////////
 @RequestMapping("/etuserupdate2")
 public String Etuserupdate2(Integer eid, String epwdold,String epwdnew) {
     //System.out.println("uid"+uid+"upwdold"+upwdold+"upwdnew"+upwdnew);
     Etuser etuserold = new Etuser(eid, epwdold);
     int n = etuserservice.Login(eid, epwdold);
     if(n>1)
     {
         Etuser etusernew = new Etuser(eid, epwdnew);
         int n1 = etuserservice.update(etusernew);
         if (n1 > 0) {
             return "rcmessagelogin";
         } else {
             return "faild";
         }
     }
     else{
         return "faild";
     }


 }





    /////////////////////////////////////////////////////////////
  //企业发布的求职信息，
  @RequestMapping("/findwantjob") 
  public String Etuserfindwantjob(Integer rmid, Integer enid, String enname,
                                  String wtype, String work, Integer minmoney,
                                  Integer maxmoney, String workcity, String experience,
                                  String education, String moremessage, String workaddress,
                                  Map<String,Object> map, Map<String,Object> pn,Map<String,Object> countpage ,HttpServletRequest request) {
         //rmid=10000+rcsi.rcmessageList().size()+1;
         rmid=rcsi.selectLast().getRmid()+1;
	     Rcmessage rcm = new Rcmessage( rmid, enid, enname, wtype, work, minmoney, maxmoney, workcity, experience, education, moremessage, workaddress);
	     int  n = rcsi.insert(rcm);
	     if(n>0){
             allRcmessage(map,pn ,countpage,1,8);
             List<Rcmessage> lrrr=rcsi.rcmessageListByEnid(enid);
             request.getSession().setAttribute("lrrr",lrrr);
             System.out.println("后台通过enid:"+enid+" 查到了lrrr"+lrrr.toString());
             System.out.println("后台查到的lrrr内容数量为:"+lrrr.size());
	     	return "company/index2";
	     }else {
	     	return "faild";
	     }
	 }

    @RequestMapping("/findwantjob2")
    public String Etuserfindwantjob2(Integer rmid, Integer enid, String enname,
                                    String wtype, String work, Integer minmoney,
                                    Integer maxmoney, String workcity, String experience,
                                    String education, String moremessage, String workaddress,
                                    Map<String,Object> map, Map<String,Object> pn,Map<String,Object> countpage ) {
        rmid=10000+rcsi.rcmessageList().size()+1;
        Rcmessage rcm = new Rcmessage( rmid, enid, enname, wtype, work, minmoney, maxmoney, workcity, experience, education, moremessage, workaddress);
        int  n = rcsi.insert(rcm);
        if(n>0){
            return "admin/adminmain";
        }else {
            return "faild";
        }
    }
  //查找投递到自己公司的所有简历
  @RequestMapping("/selectallresume")
   public String SelectResume( Map<String,Object> map, Map<String,Object> pn,Map<String,Object> countpage ){
      allResume(map,pn ,countpage,1,8);
	    return "selectresumebyenid";
  }
  //分页查询方法
  @RequestMapping("/allrcmessage")
  public String SelectResumeByPage(Map<String,Object> map, Map<String,Object> pn ,Map<String,Object> countpage, Integer pageNum,HttpServletRequest request){
      Integer pageSize =8 ;
      enid=(Integer)request.getSession().getAttribute("enid");
      List<Rcmessage> lrrr=rcsi.rcmessageListByEnid(enid);
      request.getSession().setAttribute("lrrr",lrrr);
      System.out.println("后台通过enid:"+enid+" 查到了lrrr"+lrrr.toString());
      System.out.println("后台查到的lrrr内容数量为:"+lrrr.size());
      allRcmessage(map,pn,countpage,pageNum,pageSize);
      return "company/index2";
  }

  @RequestMapping("/resumereply")
  public String Resumereply(String ename,Integer uid,String str) {
	     if(ename!=null&&uid!=null&&str!=null){
		     Resumereply  rer = new  Resumereply(enid,ename,uid,str);
	    	 rere.insert(rer);
	    	 return "selectallresume";
	     }else {
	    	 return "faild";
	     } 
 }

 //查看详细信息
    @RequestMapping("/rcmessagemore")
    public String Rcmessageselect( Integer rmid, HttpServletRequest request) {
        System.out.println("rmid"+rmid);
        Rcmessage Rcmessage= rcsi.select(rmid);
        EtuserDetail ed=etuserdetailservice.select(Rcmessage.getEnid());

        if(Rcmessage!=null){
                request.getSession().setAttribute("Rcmessage", Rcmessage);
                request.getSession().setAttribute("EtuserDetail", ed);
                return "moremessage";
            }else {
                return "redirect:rcmessagelogin";
        }
    }
//////////////////

//查看详细信息
    @RequestMapping("/rcmessagedeletenew")
    public String RcmessageDeletenew( Integer rmid, HttpServletRequest request) {
         System.out.println("rmid"+rmid);
        int result= rcsi.delete(rmid);


        if(result>0){
            List<Rcmessage> lrrr=rcsi.rcmessageListByEnid(enid);
            request.getSession().setAttribute("lrrr",lrrr);
            System.out.println("后台通过enid:"+enid+" 查到了lrrr"+lrrr.toString());
            System.out.println("后台查到的lrrr内容数量为:"+lrrr.size());
            return "redirect:allrcmessage";
        }else {
            return "etusermain";
        }
    }





    //查询详情后投递简历
    @RequestMapping("introresume")
    public String introResume(Integer rmid, HttpServletRequest request){
        Rcmessage Rcmessage= rcsi.select(rmid);
        if(Rcmessage!=null){
            Date date = new Date();
            SimpleDateFormat formatter = new SimpleDateFormat("yyyy-MMM-dd");
            formatter.format(date);
            int uid=(Integer) request.getSession().getAttribute("userid");
            UserDetail userdetailtemp=userdetailservice.select(uid);
            request.getSession().setAttribute("userdetail", userdetailtemp);
            request.getSession().setAttribute("targetenid", Rcmessage.getEnid());
            request.getSession().setAttribute("date",formatter.format(date) );
            request.getSession().setAttribute("Rcmessage", Rcmessage);
            return "intro";
        }else {
            return "etusermain";
        }
    }


    /**
     *
     * @param pageSize 一页显示多少条-非必传值
     * @param pageNum 显示当前页--必传值
     * @return 前端页面
     * @Author: Zoutao
     * @Date: 2018/12/6
     */
//分页查询Rcmessage数据
    public void allRcmessage(Map<String,Object> map ,Map<String,Object> pn ,Map<String,Object> countpage,Integer pageNum, Integer pageSize){
        //为了程序的严谨性，判断非空：
        if(pageNum==null){
            pageNum = 1;
            pn.put("page",pageNum);
        }else{
            System.out.println("pageNum"+pageNum);
            pn.put("page",pageNum);
        }
        if(pageNum <= 0){
            pageNum = 1;
        }
        System.out.println("当前页是："+pageNum+"显示条数是："+pageSize);

        //1.引入分页插件,pageNum是第几页，pageSize是每页显示多少条,默认查询总数count
        PageHelper.startPage(pageNum,pageSize);
        //2.紧跟的查询就是一个分页查询-必须紧跟.后面的其他查询不会被分页，除非再次调用PageHelper.startPage
        try {

            List<Rcmessage> list =rcsi.rcmessageList();

            System.out.println("分页数据："+list);
            //3.使用PageInfo包装查询后的结果,5是连续显示的条数,结果list类型是Page<E>
            PageInfo<Rcmessage> pageInfo = new PageInfo<Rcmessage>(list,pageSize);
            System.out.println("pages"+pageInfo.getPages());
            countpage.put("count", pageInfo.getPages());
            //4.使用model/map/modelandview等带回前端
            map.put("lists",list);
        }finally {
            PageHelper.clearPage(); //清理 ThreadLocal 存储的分页参数,保证线程安全
        }
        //5.设置返回的jsp/html等前端页面
        // thymeleaf默认就会拼串classpath:/templates/xxxx.html
    }



    public void allRcmessageByWork(Map<String,Object> map ,Map<String,Object> pn ,Map<String,Object> countpage,Integer pageNum, Integer pageSize,String work){
        //为了程序的严谨性，判断非空：
        if(pageNum==null){
            pageNum = 1;
            pn.put("page",pageNum);
        }else{
            System.out.println("pageNum"+pageNum);
            pn.put("page",pageNum);
        }
        if(pageNum <= 0){
            pageNum = 1;
        }
        System.out.println("当前页是："+pageNum+"显示条数是："+pageSize);

        //1.引入分页插件,pageNum是第几页，pageSize是每页显示多少条,默认查询总数count
        PageHelper.startPage(pageNum,pageSize);
        //2.紧跟的查询就是一个分页查询-必须紧跟.后面的其他查询不会被分页，除非再次调用PageHelper.startPage
        try {

            List<Rcmessage> list =rcsi.rcmessageListByWork(work);
            a=list.size();
            System.out.println("分页数据："+list);
            //3.使用PageInfo包装查询后的结果,5是连续显示的条数,结果list类型是Page<E>
            PageInfo<Rcmessage> pageInfo = new PageInfo<Rcmessage>(list,pageSize);
            System.out.println("pages"+pageInfo.getPages());
            countpage.put("count", pageInfo.getPages());
            //4.使用model/map/modelandview等带回前端
            map.put("lists",list);
        }finally {
            PageHelper.clearPage(); //清理 ThreadLocal 存储的分页参数,保证线程安全
        }
        //5.设置返回的jsp/html等前端页面
        // thymeleaf默认就会拼串classpath:/templates/xxxx.html
    }

    public void allRcmessageByMinmoeny(Map<String,Object> map ,Map<String,Object> pn ,Map<String,Object> countpage,Integer pageNum, Integer pageSize,Integer minmoney){
        //为了程序的严谨性，判断非空：
        if(pageNum==null){
            pageNum = 1;
            pn.put("page",pageNum);
        }else{
            System.out.println("pageNum"+pageNum);
            pn.put("page",pageNum);
        }
        if(pageNum <= 0){
            pageNum = 1;
        }
        System.out.println("当前页是："+pageNum+"显示条数是："+pageSize);

        //1.引入分页插件,pageNum是第几页，pageSize是每页显示多少条,默认查询总数count
        PageHelper.startPage(pageNum,pageSize);
        //2.紧跟的查询就是一个分页查询-必须紧跟.后面的其他查询不会被分页，除非再次调用PageHelper.startPage
        try {

            List<Rcmessage> list =rcsi.rcmessageListByMinMoney(minmoney);
            a=list.size();
            System.out.println("分页数据："+list);
            //3.使用PageInfo包装查询后的结果,5是连续显示的条数,结果list类型是Page<E>
            PageInfo<Rcmessage> pageInfo = new PageInfo<Rcmessage>(list,pageSize);
            System.out.println("pages"+pageInfo.getPages());
            countpage.put("count", pageInfo.getPages());
            //4.使用model/map/modelandview等带回前端
            map.put("lists",list);
        }finally {
            PageHelper.clearPage(); //清理 ThreadLocal 存储的分页参数,保证线程安全
        }
        //5.设置返回的jsp/html等前端页面
        // thymeleaf默认就会拼串classpath:/templates/xxxx.html
    }

    public void allRcmessageByWcity(Map<String,Object> map ,Map<String,Object> pn ,Map<String,Object> countpage,Integer pageNum, Integer pageSize,String wcity){
        //为了程序的严谨性，判断非空：
        if(pageNum==null){
            pageNum = 1;
            pn.put("page",pageNum);
        }else{
            System.out.println("pageNum"+pageNum);
            pn.put("page",pageNum);
        }
        if(pageNum <= 0){
            pageNum = 1;
        }
        System.out.println("当前页是："+pageNum+"显示条数是："+pageSize);

        //1.引入分页插件,pageNum是第几页，pageSize是每页显示多少条,默认查询总数count
        PageHelper.startPage(pageNum,pageSize);
        //2.紧跟的查询就是一个分页查询-必须紧跟.后面的其他查询不会被分页，除非再次调用PageHelper.startPage
        try {

            List<Rcmessage> list =rcsi.rcmessageListByWcity(wcity);
            a=list.size();
            System.out.println("分页数据："+list);
            //3.使用PageInfo包装查询后的结果,5是连续显示的条数,结果list类型是Page<E>
            PageInfo<Rcmessage> pageInfo = new PageInfo<Rcmessage>(list,pageSize);
            System.out.println("pages"+pageInfo.getPages());
            countpage.put("count", pageInfo.getPages());
            //4.使用model/map/modelandview等带回前端
            map.put("lists",list);
        }finally {
            PageHelper.clearPage(); //清理 ThreadLocal 存储的分页参数,保证线程安全
        }
        //5.设置返回的jsp/html等前端页面
        // thymeleaf默认就会拼串classpath:/templates/xxxx.html
    }
    public void allRcmessageByTag(Map<String,Object> map ,Map<String,Object> pn ,Map<String,Object> countpage,Integer pageNum, Integer pageSize,String tag){
        //为了程序的严谨性，判断非空：
        if(pageNum==null){
            pageNum = 1;
            pn.put("page",pageNum);
        }else{
            System.out.println("pageNum"+pageNum);
            pn.put("page",pageNum);
        }
        if(pageNum <= 0){
            pageNum = 1;
        }
        System.out.println("当前页是："+pageNum+"显示条数是："+pageSize);

        //1.引入分页插件,pageNum是第几页，pageSize是每页显示多少条,默认查询总数count
        PageHelper.startPage(pageNum,pageSize);
        //2.紧跟的查询就是一个分页查询-必须紧跟.后面的其他查询不会被分页，除非再次调用PageHelper.startPage
        try {

            List<Rcmessage> list =rcsi.rcmessageListByTag(tag);
            a=list.size();
            System.out.println("分页数据："+list);
            //3.使用PageInfo包装查询后的结果,5是连续显示的条数,结果list类型是Page<E>
            PageInfo<Rcmessage> pageInfo = new PageInfo<Rcmessage>(list,pageSize);
            System.out.println("pages"+pageInfo.getPages());
            countpage.put("count", pageInfo.getPages());
            //4.使用model/map/modelandview等带回前端
            map.put("lists",list);
        }finally {
            PageHelper.clearPage(); //清理 ThreadLocal 存储的分页参数,保证线程安全
        }
        //5.设置返回的jsp/html等前端页面
        // thymeleaf默认就会拼串classpath:/templates/xxxx.html
    }
    public void allRcmessageByCompany(Map<String,Object> map ,Map<String,Object> pn ,Map<String,Object> countpage,Integer pageNum, Integer pageSize,String comp){
        //为了程序的严谨性，判断非空：
        if(pageNum==null){
            pageNum = 1;
            pn.put("page",pageNum);
        }else{
            System.out.println("pageNum"+pageNum);
            pn.put("page",pageNum);
        }
        if(pageNum <= 0){
            pageNum = 1;
        }
        System.out.println("当前页是："+pageNum+"显示条数是："+pageSize);

        //1.引入分页插件,pageNum是第几页，pageSize是每页显示多少条,默认查询总数count
        PageHelper.startPage(pageNum,pageSize);
        //2.紧跟的查询就是一个分页查询-必须紧跟.后面的其他查询不会被分页，除非再次调用PageHelper.startPage
        try {
            System.out.println("查的comp是!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!："+comp);
            List<Rcmessage> list =rcsi.rcmessageListByComp(comp);
            a=list.size();
            System.out.println("分页数据："+list);
            //3.使用PageInfo包装查询后的结果,5是连续显示的条数,结果list类型是Page<E>
            PageInfo<Rcmessage> pageInfo = new PageInfo<Rcmessage>(list,pageSize);
            System.out.println("pages"+pageInfo.getPages());
            countpage.put("count", pageInfo.getPages());
            //4.使用model/map/modelandview等带回前端
            map.put("lists",list);
        }finally {
            PageHelper.clearPage(); //清理 ThreadLocal 存储的分页参数,保证线程安全
        }
        //5.设置返回的jsp/html等前端页面
        // thymeleaf默认就会拼串classpath:/templates/xxxx.html
    }


    @RequestMapping("rcmessagelogin")
    public String allRcmessageLogin(Map<String,Object> map ,Map<String,Object> pn ,Map<String,Object> countpage,Integer pageNum, Integer pageSize){
        //为了程序的严谨性，判断非空：
        if(pageNum==null){
            pageNum = 1;
            pn.put("page",pageNum);
        }else{
            System.out.println("pageNum"+pageNum);
            pn.put("page",pageNum);
        }
        if(pageNum <= 0){
            pageNum = 1;
        }
        pageSize=8;
        System.out.println("当前页是："+pageNum+"显示条数是："+pageSize);
        //1.引入分页插件,pageNum是第几页，pageSize是每页显示多少条,默认查询总数count
        PageHelper.startPage(pageNum,pageSize);
        //2.紧跟的查询就是一个分页查询-必须紧跟.后面的其他查询不会被分页，除非再次调用PageHelper.startPage
        try {

            List<Rcmessage> list =rcsi.rcmessageList();
            System.out.println("分页数据："+list);
            //3.使用PageInfo包装查询后的结果,5是连续显示的条数,结果list类型是Page<E>
            PageInfo<Rcmessage> pageInfo = new PageInfo<Rcmessage>(list,pageSize);
            System.out.println("pages"+pageInfo.getPages());
            countpage.put("count", pageInfo.getPages());
            //4.使用model/map/modelandview等带回前端
            map.put("lists",list);

        }finally {
            PageHelper.clearPage(); //清理 ThreadLocal 存储的分页参数,保证线程安全
        }
        //5.设置返回的jsp/html等前端页面
        // thymeleaf默认就会拼串classpath:/templates/xxxx.html
        return "company/index";

    }








    @RequestMapping("rcmessagemain")
    public String allRcmessage2(Map<String,Object> map ,Map<String,Object> pn ,Map<String,Object> countpage,Integer pageNum, Integer pageSize){
        //为了程序的严谨性，判断非空：
        if(pageNum==null){
            pageNum = 1;
            pn.put("page",pageNum);
        }else{
            System.out.println("pageNum"+pageNum);
            pn.put("page",pageNum);
        }
        if(pageNum <= 0){
            pageNum = 1;
        }
        if(pageSize==null){
            pageSize=8;
        }
        System.out.println("当前页是："+pageNum+"显示条数是："+pageSize);

        //1.引入分页插件,pageNum是第几页，pageSize是每页显示多少条,默认查询总数count
        PageHelper.startPage(pageNum,pageSize);
        //2.紧跟的查询就是一个分页查询-必须紧跟.后面的其他查询不会被分页，除非再次调用PageHelper.startPage
        try {

            List<Rcmessage> list =rcsi.rcmessageList();

            System.out.println("分页数据："+list);
            //3.使用PageInfo包装查询后的结果,5是连续显示的条数,结果list类型是Page<E>
            PageInfo<Rcmessage> pageInfo = new PageInfo<Rcmessage>(list,pageSize);
            System.out.println("pages"+pageInfo.getPages());
            countpage.put("count", pageInfo.getPages());
            //4.使用model/map/modelandview等带回前端
            map.put("lists",list);
            return "etusermain" ;
        }finally {
            PageHelper.clearPage(); //清理 ThreadLocal 存储的分页参数,保证线程安全
        }
        //5.设置返回的jsp/html等前端页面
        // thymeleaf默认就会拼串classpath:/templates/xxxx.html
    }



    //分页查询Resume数据
    public void allResume(Map<String,Object> map ,Map<String,Object> pn ,Map<String,Object> countpage,Integer pageNum, Integer pageSize){
        //为了程序的严谨性，判断非空：
        if(pageNum==null){
            pageNum = 1;
            pn.put("page",pageNum);
        }else{
            System.out.println("pageNum"+pageNum);
            pn.put("page",pageNum);
        }
        if(pageNum <= 0){
            pageNum = 1;
        }
        System.out.println("当前页是："+pageNum+"显示条数是："+pageSize);
        System.out.println("enid"+enid);
        //1.引入分页插件,pageNum是第几页，pageSize是每页显示多少条,默认查询总数count
        PageHelper.startPage(pageNum,pageSize);
        //2.紧跟的查询就是一个分页查询-必须紧跟.后面的其他查询不会被分页，除非再次调用PageHelper.startPage
        try {
            List<Resume> list =resumeService.allResumeByEnid(enid);
            System.out.println("分页数据："+list);
            //3.使用PageInfo包装查询后的结果,5是连续显示的条数,结果list类型是Page<E>
            PageInfo<Resume> pageInfo = new PageInfo<Resume>(list,pageSize);
            System.out.println("pages"+pageInfo.getPages());
            countpage.put("count", pageInfo.getPages());
            //4.使用model/map/modelandview等带回前端
            map.put("resume",list);
        }finally {

            PageHelper.clearPage(); //清理 ThreadLocal 存储的分页参数,保证线程安全
        }
        //5.设置返回的jsp/html等前端页面
        // thymeleaf默认就会拼串classpath:/templates/xxxx.html
    }


    public void allResume2(Map<String,Object> map ,Map<String,Object> pn ,Map<String,Object> countpage,Integer pageNum, Integer pageSize){
        //为了程序的严谨性，判断非空：
        if(pageNum==null){
            pageNum = 1;
            pn.put("page",pageNum);
        }else{
            System.out.println("pageNum"+pageNum);
            pn.put("page",pageNum);
        }
        if(pageNum <= 0){
            pageNum = 1;
        }
        System.out.println("当前页是："+pageNum+"显示条数是："+pageSize);
        System.out.println("enid"+enid);
        //1.引入分页插件,pageNum是第几页，pageSize是每页显示多少条,默认查询总数count
        PageHelper.startPage(pageNum,pageSize);
        //2.紧跟的查询就是一个分页查询-必须紧跟.后面的其他查询不会被分页，除非再次调用PageHelper.startPage
        try {
            List<Resume> list =resumeService.selectAllResume();
            System.out.println("分页数据："+list);
            //3.使用PageInfo包装查询后的结果,5是连续显示的条数,结果list类型是Page<E>
            PageInfo<Resume> pageInfo = new PageInfo<Resume>(list,pageSize);
            System.out.println("pages"+pageInfo.getPages());
            countpage.put("count", pageInfo.getPages());
            //4.使用model/map/modelandview等带回前端
            map.put("resume",list);
        }finally {

            PageHelper.clearPage(); //清理 ThreadLocal 存储的分页参数,保证线程安全
        }
        //5.设置返回的jsp/html等前端页面
        // thymeleaf默认就会拼串classpath:/templates/xxxx.html
    }






    //user
    public void allUser(Map<String,Object> map ,Map<String,Object> pn ,Map<String,Object> countpage,Integer pageNum, Integer pageSize){
        //为了程序的严谨性，判断非空：
        if(pageNum==null){
            pageNum = 1;
            pn.put("page",pageNum);
        }else{
            System.out.println("pageNum"+pageNum);
            pn.put("page",pageNum);
        }
        if(pageNum <= 0){
            pageNum = 1;
        }
        System.out.println("当前页是："+pageNum+"显示条数是："+pageSize);
        System.out.println("enid"+enid);
        //1.引入分页插件,pageNum是第几页，pageSize是每页显示多少条,默认查询总数count
        PageHelper.startPage(pageNum,pageSize);
        //2.紧跟的查询就是一个分页查询-必须紧跟.后面的其他查询不会被分页，除非再次调用PageHelper.startPage
        try {
            List<User> list =userservice.all();
            System.out.println("分页数据："+list);
            //3.使用PageInfo包装查询后的结果,5是连续显示的条数,结果list类型是Page<E>
            PageInfo<User> pageInfo = new PageInfo<User>(list,pageSize);
            System.out.println("pages"+pageInfo.getPages());
            countpage.put("count", pageInfo.getPages());
            //4.使用model/map/modelandview等带回前端
            map.put("lists",list);
        }finally {

            PageHelper.clearPage(); //清理 ThreadLocal 存储的分页参数,保证线程安全
        }
        //5.设置返回的jsp/html等前端页面
        // thymeleaf默认就会拼串classpath:/templates/xxxx.html
    }

    //etuser
    public void allEtuser(Map<String,Object> map ,Map<String,Object> pn ,Map<String,Object> countpage,Integer pageNum, Integer pageSize){
        //为了程序的严谨性，判断非空：
        if(pageNum==null){
            pageNum = 1;
            pn.put("page",pageNum);
        }else{
            System.out.println("pageNum"+pageNum);
            pn.put("page",pageNum);
        }
        if(pageNum <= 0){
            pageNum = 1;
        }
        System.out.println("当前页是："+pageNum+"显示条数是："+pageSize);
        System.out.println("enid"+enid);
        //1.引入分页插件,pageNum是第几页，pageSize是每页显示多少条,默认查询总数count
        PageHelper.startPage(pageNum,pageSize);
        //2.紧跟的查询就是一个分页查询-必须紧跟.后面的其他查询不会被分页，除非再次调用PageHelper.startPage
        try {
            List<Etuser> list =etuserservice.all();
            System.out.println("分页数据："+list);
            //3.使用PageInfo包装查询后的结果,5是连续显示的条数,结果list类型是Page<E>
            PageInfo<Etuser> pageInfo = new PageInfo<Etuser>(list,pageSize);
            System.out.println("pages"+pageInfo.getPages());
            countpage.put("count", pageInfo.getPages());
            //4.使用model/map/modelandview等带回前端
            map.put("lists",list);
        }finally {

            PageHelper.clearPage(); //清理 ThreadLocal 存储的分页参数,保证线程安全
        }
        //5.设置返回的jsp/html等前端页面
        // thymeleaf默认就会拼串classpath:/templates/xxxx.html
    }
////////////////////////////////////////////////////////////////////////////////////////////////////////////////
    @RequestMapping("/changeetuserdetail")
    public String ChangeEtuserDetail(HttpServletRequest request){
        int enid=(Integer) request.getSession().getAttribute("enid");
        System.out.println("更改用户信息前获取到的enid为"+enid);
        EtuserDetail etuddd=etuserdetailservice.select(enid);
        if(etuddd==null){
            System.out.println("etuserdetail为null故获取失败更改企业信息前获取到的enid为"+enid);
            return "redirect:allrcmessage";
        }
        else{
            System.out.println("etuserdetail不为null故获取成功更改企业信息前获取到的enid为"+enid);
            request.getSession().setAttribute("etuserdetail",etuddd);
            return "changeetusrdetail";
        }

}


    @RequestMapping("/changeetuserdetailnow")
    public String ChangeEtuserDetailNow(Integer bid, String realname, String address, String phone, String website,
                                 String information,String contact,HttpServletRequest request) {
        System.out.println("修改企业信息后台进入其中bid："+bid+" 企业姓名为"+realname);
        EtuserDetail etuserdetail = new EtuserDetail(bid, realname,address,phone,website,information,contact);
        int n = etuserdetailservice.update(etuserdetail);
        if (n > 0) {
            System.out.println("修改企业信息后台修改成功bid："+bid+" 企业姓名为"+realname);
            EtuserDetail euddd=etuserdetailservice.select(bid);
            request.getSession().setAttribute("etuserdetail",euddd);
            return "changeetusrdetail";
        } else {
            System.out.println("修改企业信息后台修改失败bid："+bid+" 企业姓名为"+realname);
            return "faild";
        }
    }


    //admin后台管理系统查询所有userdetail
    public void allUserDetail(Map<String,Object> map ,Map<String,Object> pn ,Map<String,Object> countpage,Integer pageNum, Integer pageSize){
        //为了程序的严谨性，判断非空：
        if(pageNum==null){
            pageNum = 1;
            pn.put("page",pageNum);
        }else{
            System.out.println("pageNum"+pageNum);
            pn.put("page",pageNum);
        }
        if(pageNum <= 0){
            pageNum = 1;
        }
        System.out.println("当前页是："+pageNum+"显示条数是："+pageSize);
        System.out.println("enid"+enid);
        //1.引入分页插件,pageNum是第几页，pageSize是每页显示多少条,默认查询总数count
        PageHelper.startPage(pageNum,pageSize);
        //2.紧跟的查询就是一个分页查询-必须紧跟.后面的其他查询不会被分页，除非再次调用PageHelper.startPage
        try {
            List<UserDetail> list =userdetailservice.all();
            System.out.println("分页数据："+list);
            //3.使用PageInfo包装查询后的结果,5是连续显示的条数,结果list类型是Page<E>
            PageInfo<UserDetail> pageInfo = new PageInfo<UserDetail>(list,pageSize);
            System.out.println("pages"+pageInfo.getPages());
            countpage.put("count", pageInfo.getPages());
            //4.使用model/map/modelandview等带回前端
            map.put("lists",list);
        }finally {

            PageHelper.clearPage(); //清理 ThreadLocal 存储的分页参数,保证线程安全
        }
        //5.设置返回的jsp/html等前端页面
        // thymeleaf默认就会拼串classpath:/templates/xxxx.html
    }

    //etuserdetail
    public void allEtuserDetail(Map<String,Object> map ,Map<String,Object> pn ,Map<String,Object> countpage,Integer pageNum, Integer pageSize){
        //为了程序的严谨性，判断非空：
        if(pageNum==null){
            pageNum = 1;
            pn.put("page",pageNum);
        }else{
            System.out.println("pageNum"+pageNum);
            pn.put("page",pageNum);
        }
        if(pageNum <= 0){
            pageNum = 1;
        }
        System.out.println("当前页是："+pageNum+"显示条数是："+pageSize);
        System.out.println("enid"+enid);
        //1.引入分页插件,pageNum是第几页，pageSize是每页显示多少条,默认查询总数count
        PageHelper.startPage(pageNum,pageSize);
        //2.紧跟的查询就是一个分页查询-必须紧跟.后面的其他查询不会被分页，除非再次调用PageHelper.startPage
        try {
            List<EtuserDetail> list =etuserdetailservice.all();
            System.out.println("分页数据："+list);
            //3.使用PageInfo包装查询后的结果,5是连续显示的条数,结果list类型是Page<E>
            PageInfo<EtuserDetail> pageInfo = new PageInfo<EtuserDetail>(list,pageSize);
            System.out.println("pages"+pageInfo.getPages());
            countpage.put("count", pageInfo.getPages());
            //4.使用model/map/modelandview等带回前端
            map.put("lists",list);
        }finally {

            PageHelper.clearPage(); //清理 ThreadLocal 存储的分页参数,保证线程安全
        }
        //5.设置返回的jsp/html等前端页面
        // thymeleaf默认就会拼串classpath:/templates/xxxx.html
    }


























    //////////////////////////////////////////////////////////////////////////////
    //admin查询所有rcmessage
    @RequestMapping("/allrcmessage2")
    public String  SelectRcmessageAll(Map<String,Object> map, Map<String,Object> pn ,Map<String,Object> countpage, Integer pageNum){
        Integer pageSize =4 ;
        allRcmessage(map,pn,countpage,pageNum,pageSize);
        return  "admin/rcmessageAll";
    }
    //admin查询所有resume
    @RequestMapping("/allresume2")
    public String  SelectResumeAll(Map<String,Object> map, Map<String,Object> pn ,Map<String,Object> countpage, Integer pageNum){
        Integer pageSize =4 ;
        allResume2(map,pn,countpage,pageNum,pageSize);
        return "admin/resumeAll";
    }

    //admin查询所有user
    @RequestMapping("/alluser2")
    public String  SelectUserAll(Map<String,Object> map, Map<String,Object> pn , Map<String,Object> countpage, Integer pageNum){
        Integer pageSize =4 ;
        allUser(map,pn,countpage,pageNum,pageSize);
        return "admin/userAll";
    }
    //admin查询所有etuser
    @RequestMapping("/alletuser2")
    public String  SelectEtuserAll(Map<String,Object> map, Map<String,Object> pn , Map<String,Object> countpage, Integer pageNum){
        Integer pageSize =4 ;
        allEtuser(map,pn,countpage,pageNum,pageSize);
        return "admin/etuserAll";
    }

    //admin查询所有userdetail
    @RequestMapping("/alluserdetail2")
    public String  SelectUserDetailAll(Map<String,Object> map, Map<String,Object> pn , Map<String,Object> countpage, Integer pageNum){
        Integer pageSize =6 ;
        allUserDetail(map,pn,countpage,pageNum,pageSize);
        return "admin/userDetailAll";
    }
    //admin查询所有etuserdetail
    @RequestMapping("/alletuserdetail2")
    public String  SelectEtuserDetailAll(Map<String,Object> map, Map<String,Object> pn , Map<String,Object> countpage, Integer pageNum){
        Integer pageSize =6 ;
        allEtuserDetail(map,pn,countpage,pageNum,pageSize);
        return "admin/etuserDetailAll";
    }
//admin执行etuserdetailupdate
    @RequestMapping("/etuserdetailupdate")
    public String  EtuserDetailUpdatea(Integer bid,String realname,String address,String phone,String website,String information,String contact) {
        EtuserDetail etu = new EtuserDetail(bid, realname, address, phone, website, information, contact);
        int nn = etuserdetailservice.update(etu);
        System.out.println("后台管理更新etuserdetail即将开始");
        if (nn > 0) {
            System.out.println("后台管理更新etuserdetail成功");
            return "admin/adminmain";
        } else {
            System.out.println("后台管理更新etuserdetail失败");
            return "admin/adminmain";
        }
    }
    //admin执行etuserdetailinsert
    @RequestMapping("/etuserdetailinsert")
    public String  EtuserDetailInsert(Integer bid,String realname,String address,String phone,String website,String information,String contact) {

        System.out.println("后台管理insert  etuserdetail方法进入");
        EtuserDetail etu = new EtuserDetail(bid, realname, address, phone, website, information, contact);
        System.out.println("后台管理insert前的内容为："+etu.getRealname()+","+etu.getPhone()+","+etu.getWebsite()+","
                +etu.getInformation()+","+etu.getContact());
        int nn = etuserdetailservice.insert(etu);
        System.out.println("后台管理insert  etuserdetail即将开始");
        if (nn > 0) {
            System.out.println("后台管理insert  etuserdetail成功");
            return "admin/adminmain";
        } else {
            System.out.println("后台管理insert  etuserdetail失败");
            return "admin/adminmain";
        }
    }
    @RequestMapping("/etuserdetaildelete")
    public String EtuserDetailDelete(Integer bid) {
        System.out.println("etUserDetailDelete后台进入bid为"+bid);
        int n = etuserdetailservice.delete(bid);
        if (n > 0) {
            System.out.println("etUserDetailDelete后台删除成功");
            return "admin/adminmain";
        } else {
            System.out.println("etUserDetailDelete后台删除失败");
            return "admin/adminmain";
        }
    }

    //other_resume
    @RequestMapping("/selectallresume2")
    public String slecetAllResume(Map<String,Object> map, Map<String,Object> pn , Map<String,Object> countpage, Integer pageNum){
        Integer pageSize =4 ;
        allResume2(map,pn,countpage,pageNum,pageSize);
        return "other_resume";
    }

    @RequestMapping("/bywork")
    public String Bywork(Map<String,Object> map, Map<String,Object> pn , Map<String,Object> countpage,Integer pageNum,  String work) {
        //展示该id下所有所投简历
        System.out.println("work+"+work);
        Integer pageSize =4 ;
        allRcmessageByWork(map,pn,countpage,pageNum,pageSize,work);
        if(a!=0) {
            return "company/index";
        }else{
            return "company/index3";
        }

    }

    @RequestMapping("/bywork2")
    public String Bywor2k(Map<String,Object> map, Map<String,Object> pn , Map<String,Object> countpage,Integer pageNum, String work) {
        //展示该id下所有所投简历
        Integer pageSize =4 ;
        allRcmessageByWork(map,pn,countpage,pageNum,pageSize,work);
        if(a!=0) {
            return "company/index2";
        }else{
            return "company/index4";
        }

    }





    @RequestMapping("/byminmoney")
    public String ByMinmoney(Map<String,Object> map, Map<String,Object> pn , Map<String,Object> countpage,Integer pageNum,  Integer minmoney) {
         //展示该id下所有所投简历
        System.out.println("minmoeny+"+minmoney);
        Integer pageSize =4 ;
        allRcmessageByMinmoeny(map,pn,countpage,pageNum,pageSize,minmoney);
        if(a!=0) {
            return "company/index";
        }else{
            return "company/index3";
        }

    }

    @RequestMapping("/byminmoney2")
    public String ByMinmoney2(Map<String,Object> map, Map<String,Object> pn , Map<String,Object> countpage,Integer pageNum, Integer minmoney) {
        //展示该id下所有所投简历
        Integer pageSize =4 ;
        allRcmessageByMinmoeny(map,pn,countpage,pageNum,pageSize,minmoney);
        if(a!=0) {
            return "company/index2";
        }else{
            return "company/index4";
        }

    }



    @RequestMapping("/bycity")
    public String Bywcity(Map<String,Object> map, Map<String,Object> pn , Map<String,Object> countpage,Integer pageNum, String wcity) {
        //展示该id下所有所投简历
        Integer pageSize =4 ;
        allRcmessageByWcity(map,pn,countpage,pageNum,pageSize,wcity);
        if(a!=0) {
            return "company/index";
        }else{
            return "company/index3";
        }

    }

    @RequestMapping("/bytag")
    public String Bytag(Map<String,Object> map, Map<String,Object> pn , Map<String,Object> countpage,Integer pageNum, String tag) {
        //展示该id下所有所投简历
        Integer pageSize =4 ;
        allRcmessageByTag(map,pn,countpage,pageNum,pageSize,tag);
        if(a!=0) {
            return "company/index";
        }else{
            return "company/index3";
        }

    }
    @RequestMapping("/bycomp")
    public String ByCompany(Map<String,Object> map, Map<String,Object> pn , Map<String,Object> countpage,Integer pageNum, String comp) {
        //展示该id下所有所投简历
        Integer pageSize =4 ;
        allRcmessageByCompany(map,pn,countpage,pageNum,pageSize,comp);
        if(a!=0) {
            return "company/index";
        }else{
            return "company/index3";
        }

    }

    @RequestMapping("/bycity2")
    public String Bywcity2(Map<String,Object> map, Map<String,Object> pn , Map<String,Object> countpage,Integer pageNum, String wcity) {
        //展示该id下所有所投简历
        Integer pageSize =4 ;
        allRcmessageByWcity(map,pn,countpage,pageNum,pageSize,wcity);
        if(a!=0) {
            return "company/index2";
        }else{
            return "company/index4";
        }

    }
    //企业用户注册
    @RequestMapping("etuserregister")
    public String EtuserRegister(Integer bid, String bpwd, String realname, String address, String phone, String website, String information, String contact) {
        System.out.println("eid:"+bid);
        System.out.println("epwd:"+bpwd);
        Etuser etuser = new Etuser(bid,bpwd);

        EtuserDetail etuserdetail=new EtuserDetail(bid, realname, address, phone, website, information, contact);
        //注册之前检测是否存在已有
        Etuser etusertemp=etuserservice.select(bid);
        EtuserDetail etuserdetailtemp=etuserdetailservice.select(bid);
        if( etusertemp==null&&etuserdetailtemp==null){
            System.out.println("注册成功时:"+etuser.getBid()+"密码为"+etuser.getBpwd());
            System.out.println("注册成功时信息为:"+etuserdetail.getBid()+"informa为"+etuserdetail.getInformation());
            etuserservice.insert(etuser);
            etuserdetailservice.insert(etuserdetail);
            System.out.println("注册成功:"+bid);
            return "redirect:etlogintest";
        }
        else{
            System.out.println("注册失败:"+bid);
            return "redirect:etlogintest";
        }
    }





    //修改企业用户密码
    @RequestMapping("/changeetusrpwdnow")
    public String ChangeEtUsrpwdnow( Integer bid, String bpwd,String newbpwd,HttpServletRequest request) {
        //System.out.println("uid"+uid);
        //Rcmessage Rcmessage= rcsi.select(rmid);
        System.out.println("bid:"+bid+" bpwd:"+bpwd+" newbpwd"+newbpwd);
        int n = etuserservice.Login(bid, bpwd);
        if (n > 0) {
            System.out.println("login验证通过");
            this.enid = bid;


            ///
            Etuser unew=new Etuser(bid,newbpwd);
            etuserservice.update(unew);
            System.out.println("修改成功的enid+"+enid);
            return "redirect:changeetusrpwd";
        }
        else {

            return "faild";
        }
    }
}
