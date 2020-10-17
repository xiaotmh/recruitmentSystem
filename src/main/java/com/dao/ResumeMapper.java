package com.dao;

import com.entity.Resume;
import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Select;

import java.util.List;

public interface ResumeMapper {
    int deleteByPrimaryKey(Integer uid);

    int insert(Resume record);

    int insertSelective(Resume record);

    Resume selectByPrimaryKey(Integer uid);

    @Select("select * from resume where enid=#{enid}")
    Resume selectAllByEnid(Integer enid);

    @Select("select * from resume where enid=#{enid} and uid=#{uid}")
    Resume selectAllByEnidAndUid(Integer enid,Integer uid);

    int updateByPrimaryKeySelective(Resume record);

    int updateByPrimaryKey(Resume record);
    int updateByTwoPara(Resume record);

    @Select("select * from resume where uid=#{uid}")
    List<Resume> selectAllByUid(Integer uid);

    @Select("select * from resume ")
    List<Resume> selectAllResume();

    @Select("select * from resume where uid=#{uid} and enid=#{enid}")
    Resume selectByTwoParamer(Integer uid,Integer enid);



    @Select("select * from resume where enid=#{enid}")
    List<Resume>  allResumeByEnid(Integer enid);

    @Delete("delete from resume where uid=#{uid} and enid=#{enid}")
    int deleteforreply(Integer uid,Integer enid);

}