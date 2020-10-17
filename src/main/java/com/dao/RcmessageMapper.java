package com.dao;

import com.entity.Rcmessage;
import org.apache.ibatis.annotations.Select;

import java.util.List;

public interface RcmessageMapper {
    int deleteByPrimaryKey(Integer enid);

    int insert(Rcmessage record);

    int insertSelective(Rcmessage record);

    Rcmessage selectByPrimaryKey(Integer rmid);

    Rcmessage selectByEnid(Integer enid);

    int updateByPrimaryKeySelective(Rcmessage record);

    int updateByPrimaryKey(Rcmessage record);

    @Select("select * from recruitmentmessage where enid=#{enid}")
    public List<Rcmessage> selectAllByenid(Integer enid);

    @Select("select * from recruitmentmessage where rmid=#{rmid}")
    public Rcmessage selectByRmid(Integer rmid);

    @Select("select * from recruitmentmessage")
    List<Rcmessage>selectAll();

    @Select("select * from recruitmentmessage where enid=#{enid}")
    List<Rcmessage>selectAllByEnid(Integer enid);


    //select * from table1 order by id desc dlimit n
    @Select("select * from recruitmentmessage order by rmid desc limit 1")
    Rcmessage selectLast();



    @Select("SELECT  * FROM recruitmentmessage  WHERE wtype LIKE CONCAT('%',#{work},'%')  ")
    List<Rcmessage>selectAllByWork(String work);


    @Select("SELECT  * FROM recruitmentmessage  WHERE minmoney >= #{minmoney}  ")
    List<Rcmessage> selectMinMoeny(Integer minmoney);


    @Select("SELECT  * FROM recruitmentmessage  WHERE workcity LIKE CONCAT('%',#{city},'%')  ")
    List<Rcmessage>selectAllByWcity(String city);
    @Select("SELECT  * FROM recruitmentmessage  WHERE experience LIKE CONCAT('%',#{tag},'%')  ")
    List<Rcmessage>selectAllByTag(String tag);

    @Select("SELECT  * FROM recruitmentmessage  WHERE enname LIKE CONCAT('%',#{comp},'%')  ")
    List<Rcmessage>selectAllByComp(String comp);
}