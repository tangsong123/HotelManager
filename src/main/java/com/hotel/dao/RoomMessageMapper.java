package com.hotel.dao;

import com.hotel.bean.RoomMessage;

import java.util.HashMap;
import java.util.List;

public interface RoomMessageMapper {
    int deleteByPrimaryKey(Long id);

    int insert(RoomMessage record);

    int insertSelective(RoomMessage record);

    RoomMessage selectByPrimaryKey(Long id);

    int updateByPrimaryKeySelective(RoomMessage record);

    int updateByPrimaryKey(RoomMessage record);

    List<RoomMessage> selectAll();
    List<RoomMessage> selectRoomByPage(HashMap params);

    Integer selectCount();
    Integer selectCountByIndex();
    Integer selectCountByIndexTwo();
    List<RoomMessage> selectByUnique(RoomMessage record);

}