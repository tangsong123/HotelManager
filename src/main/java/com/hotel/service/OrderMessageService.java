package com.hotel.service;

import com.hotel.bean.DataTime;
import com.hotel.bean.OrderMessage;
import com.hotel.dao.OrderMessageMapper;
import com.sun.org.apache.xpath.internal.operations.Or;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import javax.persistence.criteria.CriteriaBuilder;
import javax.persistence.criteria.Order;
import java.util.HashMap;
import java.util.List;


@Service("orderMessageService")
public class OrderMessageService{

    @Autowired
    OrderMessageMapper orderMessageMapper;

    public OrderMessage selectByPrimaryKey(Long id){
        return orderMessageMapper.selectByPrimaryKey(id);
    }
    public int insertOrder(OrderMessage orderMessage){
        int i = orderMessageMapper.insert(orderMessage);
        return i;
    }
    public int updateByPrimaryKeySelective(OrderMessage orderMessage){
        int i = orderMessageMapper.updateByPrimaryKeySelective(orderMessage);
        return i;
    }
    public int updateByPrimaryKey(OrderMessage orderMessage){
        int i = orderMessageMapper.updateByPrimaryKey(orderMessage);
        return i;
    }
    //查询状态为1（进行中）的订单
    public int selectCountByStatus(){
        return orderMessageMapper.selectCountByStatus();
    }

    public  Integer selectCountNoNull(){
        return orderMessageMapper.selectCountNoNull();
    }
    public Integer seletMouthCount(DataTime dataTime){
        return orderMessageMapper.seletMouthCount(dataTime);
    }
    public List<OrderMessage> selectMouthByPage(DataTime dataTime){
        return orderMessageMapper.selectMouthByPage(dataTime);
    }
    public Integer selectCountBycondition(String data){
        return orderMessageMapper.selectCountBycondition(data);
    }

    public List<OrderMessage> selectOrderByPage(HashMap hashMap){
        return orderMessageMapper.selectOrderByPage(hashMap);
    }
    public List<OrderMessage> selectOrderByStatusPage(HashMap hashMap){
        return orderMessageMapper.selectOrderByStatusPage(hashMap);
    }
    public List<OrderMessage> seletOrderByTime(HashMap hashMap){
        return orderMessageMapper.seletOrderByTime(hashMap);
    }
}