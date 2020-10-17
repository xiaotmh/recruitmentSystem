package com.serviceimpl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.dao.EtuserMapper;
import com.entity.Etuser;
import com.entity.User;

import java.util.List;

@Service
public class EtuserServiceImpl {
	@Autowired
	private EtuserMapper em;
    public int insert(Etuser ed) {
		return em.insert(ed);
    }
    public Etuser select(int eid) {
    	return em.selectByPrimaryKey(eid);
    }
    public int delete(int eid) {
		return em.deleteByPrimaryKey(eid);
    }
    public int update(Etuser ed) {
		return em.updateByPrimaryKey(ed);
    }
    public Integer Login(Integer bid ,String bpwd){
  	  return em.login(bid, bpwd);
   }
    public List<Etuser> all(){
        return em.all();
    }
}