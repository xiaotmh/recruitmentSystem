package com.serviceimpl;

import java.util.List;

import com.entity.Resume;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.dao.ResumereplyMapper;
import com.entity.Resumereply;
import com.entity.User;

@Service
public class ResumereplyServiceImpl {
	@Autowired
	private ResumereplyMapper rem;
    public int insert(Resumereply ad) {
		return rem.insert(ad);
    }
    public Resumereply select(int aid) {
    	return rem.selectByPrimaryKey(aid);
    }
    public int delete(int aid) {
		return rem.deleteByPrimaryKey(aid);
    }
    public int update(Resumereply ad) {
		return rem.updateByPrimaryKey(ad);
    }
    public  Resumereply Myreply(Integer uid,Integer enid){
  	  return rem.Myreply(uid,enid);
    }
    public List<Resumereply> selectListByTwoParamer(Integer uid,Integer enid){
        return rem.selectListByTwoParamer(uid,enid);
    }
}