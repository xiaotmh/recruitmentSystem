package com.serviceimpl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.dao.AdminMapper;
import com.entity.Admin;
@Service
public class  AdminServiceImpl {
	@Autowired
	private AdminMapper am;
    public int insert(Admin ad) {
		return am.insert(ad);
    }
    public Admin select(int aid) {
    	return am.selectByPrimaryKey(aid);
    }
    public int delete(int aid) {
		return am.deleteByPrimaryKey(aid);
    }
    public int update(Admin ad) {
		return am.updateByPrimaryKey(ad);
    }
    public Integer Login(Integer aid,String apwd){
        return am.login(aid,apwd);
    }
}