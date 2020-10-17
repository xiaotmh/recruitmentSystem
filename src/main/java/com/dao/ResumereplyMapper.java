package com.dao;

import java.util.List;

import com.entity.Resume;
import com.entity.User;
import org.apache.ibatis.annotations.Select;

import com.entity.Resumereply;

public interface ResumereplyMapper {
    int deleteByPrimaryKey(Integer enid);

    int insert(Resumereply record);

    Resumereply selectByPrimaryKey(Integer enid);

    int updateByPrimaryKey(Resumereply record);
    @Select("select * from resumereply  where uid=#{uid} and enid=#{enid} ")
    Resumereply Myreply(Integer uid,Integer enid);

    @Select("select * from resumereply where uid=#{uid} and enid=#{enid}")
    Resumereply selectByTwoParamer(Integer uid,Integer enid);

    @Select("select * from resumereply where uid=#{uid} and enid=#{enid}")
    List<Resumereply> selectListByTwoParamer(Integer uid,Integer enid);
}