package com.hotel.dao;

import com.hotel.bean.VipMessage;

import java.util.List;

public interface VipMessageMapper {
    int deleteByPrimaryKey(Long id);

    int insert(VipMessage record);

    int insertSelective(VipMessage record);

    VipMessage selectByPrimaryKey(Long id);

    int updateByPrimaryKeySelective(VipMessage record);

    int updateByPrimaryKey(VipMessage record);

    List<VipMessage> selectAll();
}