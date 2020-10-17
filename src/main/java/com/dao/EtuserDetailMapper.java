package com.dao;

import com.entity.EtuserDetail;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;

import java.util.List;

public interface EtuserDetailMapper {
    int deleteByPrimaryKey(Integer bid);

    int insert(EtuserDetail record);

    int insertSelective(EtuserDetail record);

    EtuserDetail selectByPrimaryKey(Integer bid);

    int updateByPrimaryKeySelective(EtuserDetail record);

    int updateByPrimaryKey(EtuserDetail record);
    //bid, realname, address, phone, website, information


    @Select("select * from  etuserdetail  where bid=#{bid}")
    Integer select(@Param("bid") Integer bid);

    @Select("select * from  etuserdetail"  )
    List<EtuserDetail> all();
}