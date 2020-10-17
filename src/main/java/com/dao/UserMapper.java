package com.dao;

import java.util.List;

import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;

import com.entity.Resumereply;
import com.entity.User;

public interface UserMapper {
    int deleteByPrimaryKey(Integer uid);

    int insert(@Param("uid") Integer uid,@Param("upwd") String upwd);
    User selectByPrimaryKey(Integer uid);
    int updateByPrimaryKey(User record);
    @Select("select * from user  where uid=#{uid} and upwd=#{upwd}")
    Integer login(@Param("uid") Integer uid,@Param("upwd")String upwd);

    @Select("select * from user  ")
    List<User> all();

}