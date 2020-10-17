package com.serviceimpl;

import com.dao.UserDetailMapper;
import com.entity.UserDetail;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class UserDetailServiceImpl {

	private UserDetailMapper um;
	@Autowired
    public UserDetailServiceImpl(UserDetailMapper um) {
		super();
		this.um = um;
	}
	public int insert(Integer uid,String realname,String age,String gender,String email,
					  String phone,String qq,String major,String classname,String edubackground) {
		System.out.println("userdetail serivce正在insert"+uid+"和"+realname);
		return um.insert(uid, realname,age,gender,email,phone,qq,major,classname,edubackground);
    }
	public int insert2(UserDetail ud) {
		System.out.println("userdetail serivce正在insert2"+ud.getUid()+"和"+ud.getRealname());
		return um.insert2(ud);
	}
    public UserDetail select(int aid) {
    	return um.selectByPrimaryKey(aid);
    }
    public int delete(int aid) {
		return um.deleteByPrimaryKey(aid);
    }
    public int update(UserDetail ad) {
		return um.updateByPrimaryKey(ad);
    }
    public Integer Select(Integer uid){
    	  return um.select(uid);
    }

	public List<UserDetail> all(){
		return um.all();
	}
}