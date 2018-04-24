package com.hotel.service;


import com.hotel.bean.Result;
import com.hotel.bean.RoomMessage;
import com.hotel.dao.RoomMessageMapper;
import org.springframework.stereotype.Service;
import org.springframework.beans.factory.annotation.Autowired;

import java.util.HashMap;
import java.util.List;

@Service("roomMessageService")
public class RoomMessageService{
    @Autowired
    RoomMessageMapper roomMessageMapper;

    public List<RoomMessage> selectAll() {
        return roomMessageMapper.selectAll();
    }
    public List<RoomMessage> selectRoomByPage(HashMap params){
        return roomMessageMapper.selectRoomByPage(params);
    }
    public Integer selectCount(){
        return roomMessageMapper.selectCount();
    }
    public List<RoomMessage> selectByCondition(RoomMessage roomMessage){
        return roomMessageMapper.selectByUnique(roomMessage);
    }

}