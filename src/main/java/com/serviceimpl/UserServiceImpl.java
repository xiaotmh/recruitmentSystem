package com.serviceimpl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.dao.UserMapper;
import com.entity.User;

import java.util.List;

@Service
public class  UserServiceImpl {
	
	private UserMapper um;
	@Autowired
    public UserServiceImpl(UserMapper um) {
		super();
		this.um = um;
	}
	public int insert(Integer uid,String upwd) {
		return um.insert(uid, upwd);
    }
    public User select(int aid) {
    	return um.selectByPrimaryKey(aid);
    }
    public int delete(int aid) {
		return um.deleteByPrimaryKey(aid);
    }
    public int update(User ad) {
		return um.updateByPrimaryKey(ad);
    }
    public Integer Login(Integer uid,String upwd){
    	  return um.login(uid,upwd);
    }

	public List<User> all(){
		return um.all();
	}
}