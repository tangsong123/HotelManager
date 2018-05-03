package com.hotel.dao;

import com.hotel.bean.DataTime;
import com.hotel.bean.OrderMessage;

import javax.persistence.criteria.Order;
import java.util.HashMap;
import java.util.List;

public interface OrderMessageMapper {
    int deleteByPrimaryKey(Long id);

    int insert(OrderMessage record);

    int insertSelective(OrderMessage record);

    OrderMessage selectByPrimaryKey(Long id);

    int updateByPrimaryKeySelective(OrderMessage record);

    int updateByPrimaryKey(OrderMessage record);

    int selectCountByStatus();

    Integer selectCountNoNull();

     // seletMouthCount 查询月订单数
    Integer seletMouthCount(DataTime dataTime);

    List<OrderMessage> selectMouthByPage(DataTime dataTime);
    Integer selectCountBycondition(String data);
    List<OrderMessage> selectOrderByPage(HashMap params);
    //分页查询状态为1 的订单
    List<OrderMessage> selectOrderByStatusPage(HashMap params);
    List<OrderMessage> seletOrderByTime(HashMap params);

}