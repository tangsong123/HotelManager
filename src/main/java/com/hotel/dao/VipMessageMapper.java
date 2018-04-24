package com.hotel.dao;

import com.hotel.bean.MapBean;
import com.hotel.bean.VipMessage;

import java.util.HashMap;
import java.util.List;

public interface VipMessageMapper {
    int deleteByPrimaryKey(Long id);

    int insert(VipMessage record);

    int insertSelective(VipMessage record);

    VipMessage selectByPrimaryKey(Long id);

    int updateByPrimaryKeySelective(VipMessage record);

    int updateByPrimaryKey(VipMessage record);

    List<VipMessage> selectAll();

    List<VipMessage> selectVipOrderByCreateTime(HashMap params);
    Integer selectCount();
    List<VipMessage> selectVipByCondition(MapBean mapBean);
    Integer selectVipCountByCondition(VipMessage record);
}