package com.dao;

import java.util.List;

import org.apache.ibatis.annotations.Select;

import com.entity.Usercollection;

public interface UsercollectionMapper {
    int deleteByPrimaryKey(Integer rmid);

    int insert(Usercollection record);

    Usercollection selectByPrimaryKey(Integer rmid);

    int updateByPrimaryKey(Usercollection record);
    @Select("select * from usercollection where uid = #{uid}")
    List<Usercollection> selectAllUsercollection(Integer uid);
    @Select("select * from usercollection where uid = #{uid} and rmid = #{rmid} ")
    List<Usercollection> selectAllUsercollection2(Integer uid,Integer rmid);
}