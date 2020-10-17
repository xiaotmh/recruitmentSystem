package com.dao;

import com.entity.UserDetail;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;

import java.util.List;

public interface UserDetailMapper {
    int deleteByPrimaryKey(Integer uid);
    // uid, realname,age,gender,email,phone,qq,major,classname,edubackground
    int insert(@Param("uid") Integer uid, @Param("realname") String realname, @Param("age") String age, @Param("gender") String gender, @Param("email") String email
            , @Param("phone") String phone, @Param("qq") String qq, @Param("major") String major, @Param("classname") String classname, @Param("edubackground") String edubackground);

    ////////////
    int insert2(UserDetail ud);



    UserDetail selectByPrimaryKey(Integer uid);
    int updateByPrimaryKey(UserDetail record);
    @Select("select * from userdetail  where uid=#{uid} ")
    Integer select(@Param("uid") Integer uid);

    @Select("select * from userdetail  ")
    List<UserDetail> all();

}