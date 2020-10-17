package com.serviceimpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.dao.RcmessageMapper;

import com.entity.Rcmessage;

@Service
public class RcmessageSercviceImpl {
    @Autowired
    private RcmessageMapper rm;

    public int insert(Rcmessage ed) {
        return rm.insert(ed);
    }

    public Rcmessage select(int eid) {
        return rm.selectByPrimaryKey(eid);
    }
    public Rcmessage selectbyenid(int enid) {
        return rm.selectByEnid(enid);
    }
    public Rcmessage selectbyrmid(int rmid) {
        return rm.selectByRmid(rmid);
    }

    public int delete(int eid) {
        return rm.deleteByPrimaryKey(eid);
    }

    public int update(Rcmessage ed) {
        return rm.updateByPrimaryKey(ed);
    }

    public List<Rcmessage> selectAll(int enid) {
        return rm.selectAllByenid(enid);
    }

    public List<Rcmessage> rcmessageList(){
        return rm.selectAll();
    }

    public List<Rcmessage> rcmessageListByEnid(int enid){
        return rm.selectAllByenid(enid);
    }


    public Rcmessage selectLast() {
        return rm.selectLast();
    }


    public List<Rcmessage> rcmessageListByWork(String work){
        return rm.selectAllByWork(work);
    }

    public List<Rcmessage> rcmessageListByMinMoney(Integer minmoney){
        return rm.selectMinMoeny(minmoney);
    }

    public List<Rcmessage> rcmessageListByWcity(String city){
        return rm.selectAllByWcity(city);
    }

    public List<Rcmessage> rcmessageListByTag(String tag){
        return rm.selectAllByTag(tag);
    }
    public List<Rcmessage> rcmessageListByComp(String comp){
        return rm.selectAllByComp(comp);
    }
}