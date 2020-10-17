package com.serviceimpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.dao.UsercollectionMapper;
import com.entity.Usercollection;
@Service
public class  UsercollectionServiceImpl {
	@Autowired
	private UsercollectionMapper ucm;
    public int insert(Usercollection ad) {
		return ucm.insert(ad);
    }
    public Usercollection select(int aid) {
    	return ucm.selectByPrimaryKey(aid);
    }
    public int delete(int aid) {
		return ucm.deleteByPrimaryKey(aid);
    }
    public int update(Usercollection ad) {
		return ucm.updateByPrimaryKey(ad);
    }
    public List<Usercollection> selectAllUsercollection(Integer uid){
    	return ucm.selectAllUsercollection(uid);
    }
    public List<Usercollection> selectAllUsercollection2(Integer uid,Integer rmid){
        return ucm.selectAllUsercollection2(uid,rmid);
    }
}