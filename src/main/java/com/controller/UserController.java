package com.controller;

import com.entity.*;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.serviceimpl.*;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpMessage;
import org.springframework.http.HttpRequest;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.util.List;
import java.util.Map;

@Controller
public class UserController {
    //储存当前用户id
    public Integer userid = 0;
    private Map<String, Object> map;
    @Autowired
    private UserServiceImpl userservice;
    @Autowired
    private UserDetailServiceImpl userdetailservice;
    @Autowired
    private UsercollectionServiceImpl usercollectionService;

    @Autowired
    private EtuserDetailServiceImpl etuserdetailservice;

    @Autowired
    private UsercollectionServiceImpl ucs;

    @Autowired
    private RcmessageSercviceImpl rsi;
    @Autowired
    private ResumeServiceImpl rsusi;
    @Autowired
    private ResumereplyServiceImpl rsuresi;

    @RequestMapping("/index")
    public String Index() {
        return "redirect:rcmessagelogin";
    }


    @RequestMapping("/register")
    public String register() {
        return "registertest";
    }

    //test
    @RequestMapping("/logintest")
    public String logintest() {
        return "logintest";
    }

    @RequestMapping("/fail")
    public String fail() {
        return "faild";
    }

    @RequestMapping("/search")
    public String search() {
        return "search2";
    }

    //////////////////////修改密码
    @RequestMapping("/changeusrpwd")
    public String changeusrpwd() {
        return "changeusrpwd";
    }

    @RequestMapping("/changeetusrpwd")
    public String changeetusrpwd() {
        return "changeetusrpwd";
    }

    //这里我是想通过前端页面做个选择，userlogin.jsp是应聘者的登陆界面
    @GetMapping("/userlogin")
    public String UserLogin() {
        return "logintest";
    }

    //应聘者登陆，usermain是用户的主界面。
    @RequestMapping("/login")
    public String Login(Integer uid, String upwd, HttpServletRequest request) {
        int n = 0;
        n = userservice.Login(uid, upwd);
        if (n > 0) {
            userid = uid;
            System.out.println("userid+" + userid);
            request.getSession().setAttribute("user", userid);
            request.getSession().setAttribute("userid", userid);
            return "redirect:rcmessagelogin";
        } else {
            return "redirect:logintest";
        }
    }


    @RequestMapping("/loading")
    public String loading() {
        return "loading";
    }

    @RequestMapping("/main")
    public String mainMessage(Map<String, Object> map) {
        map.put("rclist", rsi.rcmessageList());
        return "company/index";
    }


    @RequestMapping("/intro")
    public String intro() {
        return "intro";
    }

    //这里是用户点击收藏按钮后，将求职信息加入自己的收藏
    @RequestMapping("/usercollection")
    public String Collection(Integer rmid, HttpServletRequest request) {
        //根据求职信息编号来确定具体的求职信息
        Rcmessage rc = rsi.select(rmid);
        //添加到当前用户的收藏中
        Usercollection uc = new Usercollection(userid, rc.getRmid(), rc.getEnid(), rc.getEnname(), rc.getMaxmoney(),
                rc.getWtype(), rc.getWorkaddress(), rc.getMoremessage());
        List<Usercollection> qutmp = ucs.selectAllUsercollection2(userid, rmid);
        System.out.println("检查用户收藏" + userid + "  " + rmid + " 找到了这么多：" + qutmp.size());
        if (qutmp.size() == 0) {
            int n = ucs.insert(uc);
            if (n > 0) {
                return "redirect:collection";
            } else {
                return "faild";
            }
        } else {
            System.out.println("用户收藏重复");
            return "redirect:collection";
        }
    }

    //取消收藏
    @RequestMapping("/deleteconllection")
    public String DeleteCollection(Integer rmid) {
        int n = ucs.delete(rmid);
        if (n > 0) {
            return "redirect:collection";
        } else {
            return "faild";
        }
    }

    @RequestMapping("/otherResume")
    public String otherResume() {
        return "other_resume";
    }


    /**
     * 这里我的想法是有一个显示其他简历的页面，后面有个应用按钮，点击应用按钮后,会调用该方法，获取信息，跳转到userresume.jsp(填写简历的界面)
     * ，并将别人简历的信息自动填写到简历中去。
     */
    @RequestMapping("/overresume")
    public String OverResume(String uname, String advantage, Integer wantmoney, HttpServletRequest request) {
        Resume re = new Resume(uname, advantage, wantmoney);
        request.getSession().setAttribute("overresume", re);
        request.getSession().setAttribute("Rcmessage", new Rcmessage(10001));
        return "intro";
    }

    //这个方法是查看老板对自己的简历的回复
    @RequestMapping("/myreply")
    public String Myreply(Integer uid, Integer enid, Integer status, HttpServletRequest request) {
        Resumereply resumereply = rsuresi.Myreply(uid, enid);
        EtuserDetail etuserDetail = etuserdetailservice.select(enid);
        if (status == 1) {
            if ("恭喜您，你已被邀请面试。".equals(resumereply.getMessage())) {
                System.out.println("恭喜您，你已被邀请面试");
                request.getSession().setAttribute("resumereply", resumereply);
                request.getSession().setAttribute("etuserDetail", etuserDetail);
                System.out.println(etuserDetail);
                return "myreply";
            } else {
                System.out.println("不是！！！恭喜您，你已被邀请面试");
                request.getSession().setAttribute("resumereply", resumereply);
                return "myreply2";
            }
        } else {
            System.out.println("status不是1");
            return "empty";
        }

    }


    //用户的crud，后台
    @RequestMapping("/userinsert")
    public String UserInsert(Integer uid, String upwd) {

        int n = userservice.insert(uid, upwd);
        if (n > 0) {
            return "admin/adminmain";
        } else {
            return "faild";
        }
    }

    //用户detail的crud，后台
    //uid, realname,age,gender,email,phone,qq,major,classname,edubackground
    @RequestMapping("/userdetailinsert")
    public String UserDetailInsertA(Integer uid, String realname, String age, String gender, String email,
                                    String phone, String qq, String major, String classname, String edubackground) {
        System.out.println("UserDetailInsert后台进入");
        int n = userdetailservice.insert(uid, realname, age, gender, email, phone, qq, major, classname, edubackground);
        if (n > 0) {
            System.out.println("UserDetailInsert管理的后台插入成功");
            return "admin/adminmain";
        } else {
            System.out.println("UserDetailInsert管理的后台插入失败");
            return "admin/adminmain";
        }
    }

    @RequestMapping("userinsert2")
    public String UserInsert2(Integer uid, String upwd, String realname, String age, String gender, String email,
                              String phone, String qq, String major, String classname, String edu) {
        System.out.println(uid + "和" + realname + "和" + age + "和" + gender + "和" + email + "和" + phone + "和" + qq + "和" + major + "和" + classname + "和" + edu);

        UserDetail ud = new UserDetail(uid, realname, age, gender, email, phone, qq, major, classname, edu);

        User usertemp = userservice.select(uid);
        UserDetail userdetailtemp = userdetailservice.select(uid);
        if (usertemp == null && userdetailtemp == null) {
            int n = userservice.insert(uid, upwd);
            int n1 = userdetailservice.insert2(ud);
            System.out.println("注册的用户名和密码" + uid + "和" + upwd);
            if (n > 0 && n1 > 0) {
                System.out.println("注册成功的用户名和密码" + uid + "和" + upwd);
                return "redirect:logintest";
            } else {
                System.out.println("注册失败的用户名和密码" + uid + "和" + upwd);
                return "redirect:logintest";
            }
        } else {
            System.out.println("注册失败的用户名和密码" + uid + "和" + upwd);
            return "redirect:logintest";
        }


    }

    @RequestMapping("/userdelete")
    public String UserDelete(Integer uid) {
        int n = userservice.delete(uid);
        if (n > 0) {
            return "admin/adminmain";
        } else {
            return "faild";
        }
    }

    @RequestMapping("/userupdate")
    public String Userupdate(Integer uid, String upwd) {
        System.out.println("uid" + uid + "upwd" + upwd);
        User user = new User(uid, upwd);
        int n = userservice.update(user);
        if (n > 0) {
            return "admin/adminmain";
        } else {
            return "faild";
        }
    }

    ////////////////////////////

    @RequestMapping("/userupdate2")
    public String Userupdate2(Integer uid, String upwdold, String upwdnew) {
        System.out.println("uid：" + uid + " upwdold：" + upwdold + " upwdnew：" + upwdnew);
        User userold = new User(uid, upwdold);
        int n = userservice.Login(uid, upwdold);
        if (n > 1) {
            User usernew = new User(uid, upwdnew);
            int n1 = userservice.update(usernew);
            if (n1 > 0) {
                System.out.println("修改成功");
                return "rcmessagelogin";
            } else {
                System.out.println("修改失败");
                return "faild";
            }
        } else {
            System.out.println("原来的密码错了");
            return "faild";
        }


    }


////////////////////

    @RequestMapping("/userdetaildelete")
    public String UserDetailDelete(Integer uid) {
        System.out.println("UserDetailDelete后台进入");
        int n = userdetailservice.delete(uid);
        if (n > 0) {
            System.out.println("UserDetailDelete后台删除成功");
            return "admin/adminmain";
        } else {
            System.out.println("UserDetailDelete后台删除失败");
            return "admin/adminmain";
        }
    }

    //uid, realname,age,gender,email,phone,qq,major,classname,edubackground
    @RequestMapping("/userdetailupdate")
    public String UserDetailupdate(Integer uid, String realname, String age, String gender, String email,
                                   String phone, String qq, String major, String classname, String edubackground) {
        //System.out.println("uid"+uid+"upwd"+upwd);
        UserDetail userdetail = new UserDetail(uid, realname, age, gender, email, phone, qq, major, classname, edubackground);
        int n = userdetailservice.update(userdetail);
        if (n > 0) {
            return "admin/adminmain";
        } else {
            return "admin/adminmain";
        }
    }

    //修改个人信息页面进入
    @RequestMapping("/changeuserdetail")
    public String ChangeUserDetail(HttpServletRequest request) {
        int uid = (Integer) request.getSession().getAttribute("userid");
        System.out.println("更改用户信息前获取到的userid为" + uid);
        UserDetail uddd = userdetailservice.select(uid);
        if (uddd == null) {
            System.out.println("userdetail为null故获取失败更改用户信息前获取到的userid为" + uid);
            return "rcmessagelogin";
        } else {
            System.out.println("userdetail不为null故获取成功更改用户信息前获取到的userid为" + uid);
            request.getSession().setAttribute("userdetail", uddd);
            return "changeusrdetail";
        }

    }

    //修改个人信息执行
    @RequestMapping("/changeuserdetailnow")
    public String ChangeUserDetailNow(Integer uid, String realname, String age, String gender, String email,
                                      String phone, String qq, String major, String classname, String edubackground, HttpServletRequest request) {
        System.out.println("修改用户信息后台进入其中uid：" + uid + " 真实姓名为" + realname);
        UserDetail userdetail = new UserDetail(uid, realname, age, gender, email, phone, qq, major, classname, edubackground);
        int n = userdetailservice.update(userdetail);
        if (n > 0) {
            System.out.println("修改用户信息后台修改成功uid：" + uid + " 真实姓名为" + realname);
            UserDetail uddd = userdetailservice.select(uid);
            request.getSession().setAttribute("userdetail", uddd);
            return "changeusrdetail";
        } else {
            System.out.println("修改用户信息后台修改失败uid：" + uid + " 真实姓名为" + realname);
            return "faild";
        }
    }


    ///////////
    public void allCollection(Map<String, Object> map, Map<String, Object> pn, Map<String, Object> countpage, Integer pageNum,
                              Integer pageSize) {
        //为了程序的严谨性，判断非空：
        if (pageNum == null) {
            pageNum = 1;
            pn.put("page", pageNum);
        } else {
            System.out.println("pageNum" + pageNum);
            pn.put("page", pageNum);
        }
        if (pageNum <= 0) {
            pageNum = 1;
        }
        System.out.println("当前页是：" + pageNum + "显示条数是：" + pageSize);
        //1.引入分页插件,pageNum是第几页，pageSize是每页显示多少条,默认查询总数count
        PageHelper.startPage(pageNum, pageSize);
        //2.紧跟的查询就是一个分页查询-必须紧跟.后面的其他查询不会被分页，除非再次调用PageHelper.startPage
        try {
            List<Usercollection> list = usercollectionService.selectAllUsercollection(userid);
            System.out.println("分页数据：" + list);
            //3.使用PageInfo包装查询后的结果,5是连续显示的条数,结果list类型是Page<E>
            PageInfo<Usercollection> pageInfo = new PageInfo<Usercollection>(list, pageSize);
            System.out.println("pages" + pageInfo.getPages());
            countpage.put("count", pageInfo.getPages());
            //4.使用model/map/modelandview等带回前端
            map.put("collection", list);
        } finally {

            PageHelper.clearPage(); //清理 ThreadLocal 存储的分页参数,保证线程安全
        }
        //5.设置返回的jsp/html等前端页面
        // thymeleaf默认就会拼串classpath:/templates/xxxx.html
    }

    @RequestMapping("/collection")
    public String UserCollection2(Map<String, Object> map, Map<String, Object> pn, Map<String, Object> countpage, Integer pageNum, Integer uid) {
        //展示该id下所有所投简历

        Integer pageSize = 8;
        allCollection(map, pn, countpage, pageNum, pageSize);
        return "mycollection";
    }

    //resumebyuid
    public void allResumeByUid(Map<String, Object> map, Map<String, Object> pn, Map<String, Object> countpage, Integer pageNum,
                               Integer pageSize) {
        //为了程序的严谨性，判断非空：
        if (pageNum == null) {
            pageNum = 1;
            pn.put("page", pageNum);
        } else {
            System.out.println("pageNum" + pageNum);
            pn.put("page", pageNum);
        }
        if (pageNum <= 0) {
            pageNum = 1;
        }
        System.out.println("当前页是：" + pageNum + "显示条数是：" + pageSize);
        //1.引入分页插件,pageNum是第几页，pageSize是每页显示多少条,默认查询总数count
        PageHelper.startPage(pageNum, pageSize);
        //2.紧跟的查询就是一个分页查询-必须紧跟.后面的其他查询不会被分页，除非再次调用PageHelper.startPage
        try {
            List<Resume> list = rsusi.selectAllByUid(userid);
            System.out.println("分页数据：" + list);
            //3.使用PageInfo包装查询后的结果,5是连续显示的条数,结果list类型是Page<E>
            PageInfo<Resume> pageInfo = new PageInfo<Resume>(list, pageSize);
            System.out.println("pages" + pageInfo.getPages());
            countpage.put("count", pageInfo.getPages());
            //4.使用model/map/modelandview等带回前端
            map.put("resume", list);
        } finally {

            PageHelper.clearPage(); //清理 ThreadLocal 存储的分页参数,保证线程安全
        }
        //5.设置返回的jsp/html等前端页面
        // thymeleaf默认就会拼串classpath:/templates/xxxx.html
    }


    //loding
    //用户发布自己写的求职信息，发布成功后会跳转到等待回复的页面。
    @RequestMapping("/userresume")
    public String UserResume(Integer uid, String uname, String advantage, Integer wantmoney, Integer enid, HttpServletRequest request,
                             Map<String, Object> map, Map<String, Object> pn, Map<String, Object> countpage, Integer pageNum) {
        System.out.println("userresume后台进入");
        System.out.println("当前uid为" + uid + " uname为" + uname + " advantage为" + advantage + " wantmoney:" + wantmoney + "  enid:" + enid);
        Resume re = new Resume(uid, uname, advantage, wantmoney, 0, enid);
        Resume resume = rsusi.slectByTwoParam(uid, enid);
        if (resume == null) {
            System.out.println("userresume插入前检测到没发过相似的简历");
            rsusi.insert(re);
            //展示该id下所有所投简历
            Integer pageSize = 8;
            allResumeByUid(map, pn, countpage, pageNum, pageSize);
            System.out.println("userresume插入完毕");
            return "redirect:rcmessagelogin";
        } else {
            System.out.println("userresume插入前检测到发过相似的简历！！！不会插入");
            return "company/index5";
        }
    }

    //已投递简历
    @RequestMapping("/overtoudi")
    public String TouDi(Map<String, Object> map, Map<String, Object> pn, Map<String, Object> countpage, Integer pageNum, HttpServletRequest request) {
        //展示该id下所有所投简历
        Integer pageSize = 8;
        allResumeByUid(map, pn, countpage, pageNum, pageSize);

        List<EtuserDetail> EDlist = etuserdetailservice.all();
        System.out.println("查到的list长度为" + EDlist.size());
        request.getSession().setAttribute("EDlist", EDlist);
        return "loading";
    }


    //用户发布自己写的求职信息，发布成功后会跳转到等待回复的页面。
    @RequestMapping("/userresume2")
    public String UserResume2(Map<String, Object> map, Map<String, Object> pn, Map<String, Object> countpage, Integer pageNum) {
        //展示该id下所有所投简历
        Integer pageSize = 8;
        allResumeByUid(map, pn, countpage, pageNum, pageSize);
        return "loading";
    }

    //用户发布自己写的求职信息，发布成功后会跳转到等待回复的页面。
    @RequestMapping("/caogao")
    public String CaoGao(Map<String, Object> map, Map<String, Object> pn, Map<String, Object> countpage, Integer pageNum) {
        //展示该id下所有所投简历
        Integer pageSize = 8;
        allResumeByUid(map, pn, countpage, pageNum, pageSize);
        return "other_resume";
    }

    //用户注册
    @RequestMapping("userregister")
    public String Register(Integer uid, String upwd) {
        //展示该id下所有所投简历
        userservice.insert(uid, upwd);
        return "userlogin";
    }

    //修改用户密码
    @RequestMapping("/changeusrpwdnow")
    public String ChangeUsrpwdnow(Integer uid, String upwd, String newupwd, HttpServletRequest request) {
        System.out.println("更改密码方法进入：uid： " + uid + " upwd：" + upwd + " newupwd：" + newupwd);
        //Rcmessage Rcmessage= rcsi.select(rmid);
        int n = userservice.Login(uid, upwd);
        System.out.println();
        if (n > 0) {
            userid = uid;
            System.out.println("login验证旧密码成功userid+" + userid);

            ///

            User unew = new User(uid, newupwd);
            System.out.println("创造了新的user对象");
            userservice.update(unew);
            System.out.println("新的user update完成！");
            return "redirect:changeusrpwd";
        } else {
            System.out.println("login验证旧密码失败了！！！userid+" + userid);
            return "faild";

        }
    }


}
