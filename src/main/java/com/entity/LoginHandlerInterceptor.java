package com.entity;

import org.springframework.web.servlet.HandlerInterceptor;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class LoginHandlerInterceptor implements HandlerInterceptor {
    @Override
    public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler) throws Exception {
        int userid=0;
        if(request.getSession().getAttribute("userid")!=null) {
            userid = (Integer) request.getSession().getAttribute("user");
    }
        int  etuserid=0;
        if(request.getSession().getAttribute("etuserid")!=null) {
            etuserid = (Integer) request.getSession().getAttribute("etuserid");
        }
        // 如果获取的request的session中的loginUser参数为空（未登录），就返回登录页，否则放行访问
        if (userid != 0||etuserid!=0) {
            return  true;
        }
        response.sendRedirect("/userlogin");
        return false;

    }

    @Override
    public void postHandle(HttpServletRequest request, HttpServletResponse response, Object handler, ModelAndView modelAndView) throws Exception {


    }

    @Override
    public void afterCompletion(HttpServletRequest request, HttpServletResponse response, Object handler, Exception ex) throws Exception {

    }
}
