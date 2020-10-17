package com.config;

import com.entity.LoginHandlerInterceptor;
import org.springframework.context.annotation.Configuration;
import org.springframework.web.servlet.config.annotation.InterceptorRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurerAdapter;

@Configuration
public class WebConfig implements WebMvcConfigurer {

        //实现拦截器 要拦截的路径以及不拦截的路径
        @Override
        public void addInterceptors(InterceptorRegistry registry) {
            //注册自定义拦截器，添加拦截路径和排除拦截路径

            registry.addInterceptor(new LoginHandlerInterceptor()).addPathPatterns("/**").excludePathPatterns("/userlogin",
                    "/etuserlogin", "/adminlogin","/css/**","/fonts/**","/images/**","/js/**","/assets/**","/style/**","/login","/login2",
                    "/adminlogin2","/register","/register2", "userregister",  "/etuserregister","/allrcmessage2","/allresume2","/alluser2","/alletuser2","/userinsert","/userinsert2",
                    "/rcmessageupdate","/rcmessagedelete","/findwantjob2","/userupdate","/userdelete","/userinsert","/resumeupdate","/resumedelete","/userresume",
                    "/etuserinsert","/etuserupdate","/etuserdelete","/logintest","/etlogintest","/logintest/**","/alluserdetail2","/alletuserdetail2","/etuserDetailAll",
                    "/userDetailAll","/rcmessagelogin","/index","/","/index.html","/userdetailupdate","/etuserdetailupdate","/userdetailinsert","/etuserdetailinsert","/userdetaildelete"
            ,"/etuserdetaildelete");
        }




    }

