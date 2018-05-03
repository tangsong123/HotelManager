package com.hotel.service;


import com.hotel.bean.MapBean;
import com.hotel.bean.RoomMessage;
import com.hotel.bean.VipMessage;
import com.hotel.dao.RoomMessageMapper;
import com.hotel.dao.VipMessageMapper;
import org.springframework.stereotype.Service;
import org.springframework.beans.factory.annotation.Autowired;

import java.util.HashMap;
import java.util.List;

@Service("vipMessageService")
public class VipMesssageService{

    @Autowired
    VipMessageMapper vipMessageMapper;

    public List<VipMessage> selectAll() {
        return vipMessageMapper.selectAll();
    }
    public int insert(VipMessage vipMessage){
        return vipMessageMapper.insert(vipMessage);
    }
    public int insertSelect(VipMessage vipMessage){
        return vipMessageMapper.insertSelective(vipMessage);
    }
    //HashMap params
    public List<VipMessage> selectVipOrderByCreateTime(HashMap params) {
        return vipMessageMapper.selectVipOrderByCreateTime(params);
    }
    public Integer selectCount(){
        return vipMessageMapper.selectCount();
    }
    public List<VipMessage> selectVipByCondition(VipMessage vipMessage){

        return vipMessageMapper.selectVipByCondition(vipMessage);
    }
    public Integer selectVipCountByCondition(VipMessage vipMessage){
        return vipMessageMapper.selectVipCountByCondition(vipMessage);
    }
    public  int deleteByPrimaryKey(Long id){
        return vipMessageMapper.deleteByPrimaryKey(id);
    }
    public int updateByPrimaryKeySelective(VipMessage vipMessage){
        return vipMessageMapper.updateByPrimaryKeySelective(vipMessage);
    }
    public VipMessage selectByPrimaryKey(Long id){
        return vipMessageMapper.selectByPrimaryKey(id);
    }
    public int updateByPrimaryKey(VipMessage vipMessage){
        return vipMessageMapper.updateByPrimaryKey(vipMessage);
    }
}