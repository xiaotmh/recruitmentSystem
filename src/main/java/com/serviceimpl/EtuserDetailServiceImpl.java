package com.serviceimpl;

import com.dao.EtuserDetailMapper;
import com.entity.EtuserDetail;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class EtuserDetailServiceImpl {
	@Autowired
	private EtuserDetailMapper em;
    //bid, realname, address, phone, website, information
    public int insert(EtuserDetail ed) {
		return em.insert(ed);
    }
    public EtuserDetail select(int eid) {
    	return em.selectByPrimaryKey(eid);
    }
    public int delete(int eid) {
		return em.deleteByPrimaryKey(eid);
    }
    public int update(EtuserDetail ed) {
		return em.updateByPrimaryKey(ed);
    }
    public Integer Select(Integer bid){
  	  return em.select(bid);
   }
    public List<EtuserDetail> all(){
        return em.all();
    }
}