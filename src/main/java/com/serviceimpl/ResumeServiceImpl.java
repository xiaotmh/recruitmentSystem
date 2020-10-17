package com.serviceimpl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.dao.ResumeMapper;
import com.entity.Resume;

import java.util.List;

@Service
public class ResumeServiceImpl {
	@Autowired
	private ResumeMapper rem;
    public int insert(Resume ad) {
		return rem.insert(ad);
    }
    public Resume select(int aid) {
    	return rem.selectByPrimaryKey(aid);
    }
    public Resume select2(int enid) {
        return rem.selectAllByEnid(enid);
    }
    public Resume select3(int enid,int uid) {
        return rem.selectAllByEnidAndUid(enid,uid);
    }
    public int delete(int aid) {
		return rem.deleteByPrimaryKey(aid);
    }
    public int update(Resume ad) {
		return rem.updateByPrimaryKey(ad);
    }
    public int update2(Resume ad) {
        return rem.updateByTwoPara(ad);
    }
    public List<Resume> selectAllByUid(int  uid){   return rem.selectAllByUid(uid); }
    public List<Resume> selectAllResume(){   return rem.selectAllResume(); }
    public  List<Resume> allResumeByEnid(Integer enid) { return  rem.allResumeByEnid(enid); }
    public int deleteforreply(int uid,int enid) {
        return rem.deleteforreply(uid,enid);
    }

    public  Resume slectByTwoParam(Integer uid,Integer enid){
        return rem.selectByTwoParamer(uid,enid);
    }
}