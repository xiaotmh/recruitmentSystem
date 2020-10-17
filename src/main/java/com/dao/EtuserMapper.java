package com.dao;

import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;

import com.entity.Etuser;
import com.entity.User;

import java.util.List;

public interface EtuserMapper {
    int deleteByPrimaryKey(Integer bid);

    int insert(Etuser record);

    int insertSelective(Etuser record);

    Etuser selectByPrimaryKey(Integer bid);

    int updateByPrimaryKeySelective(Etuser record);

    int updateByPrimaryKey(Etuser record);
    @Select("select * from  enterpriseuser  where bid=#{bid} and bpwd=#{bpwd}")
    Integer login(@Param("bid")Integer bid,@Param("bpwd") String bpwd);

    @Select("select * from  enterpriseuser"  )
    List<Etuser> all();
}