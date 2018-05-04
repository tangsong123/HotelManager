package com.hotel.service;


import com.hotel.bean.Result;
import com.hotel.bean.RoomMessage;
import com.hotel.dao.RoomMessageMapper;
import org.springframework.stereotype.Service;
import org.springframework.beans.factory.annotation.Autowired;

import java.util.HashMap;
import java.util.List;

@Service("roomMessageService")
public class RoomMessageService {
    @Autowired
    RoomMessageMapper roomMessageMapper;

    public RoomMessage selectByPrimaryKey(Long id) {
        return roomMessageMapper.selectByPrimaryKey(id);
    }

    public List<RoomMessage> selectAll() {
        return roomMessageMapper.selectAll();
    }

    public List<RoomMessage> selectRoomByPage(HashMap params) {
        return roomMessageMapper.selectRoomByPage(params);
    }

    public Integer selectCount() {
        return roomMessageMapper.selectCount();
    }

    public Integer selectCountByIndex(){return roomMessageMapper.selectCountByIndex();}
    public Integer selectCountByIndexTwo(){return roomMessageMapper.selectCountByIndexTwo();}

    public List<RoomMessage> selectByCondition(RoomMessage roomMessage) {
        return roomMessageMapper.selectByUnique(roomMessage);
    }
    public int updateByPrimaryKeySelective(RoomMessage roomMessage){
        return roomMessageMapper.updateByPrimaryKeySelective(roomMessage);
    }
    public int updateByPrimaryKey(RoomMessage roomMessage) {
        return roomMessageMapper.updateByPrimaryKey(roomMessage);
    }

    public int insertSelective(RoomMessage roomMessage) {
        return roomMessageMapper.insertSelective(roomMessage);
    }
}