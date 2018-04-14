package com.hotel.service;


import com.hotel.bean.RoomMessage;
import com.hotel.dao.RoomMessageMapper;
import org.springframework.stereotype.Service;
import org.springframework.beans.factory.annotation.Autowired;

import java.util.List;

@Service("roomMessageService")
public class RoomMessageService{
    @Autowired
    RoomMessageMapper roomMessageMapper;

    public List<RoomMessage> selectAll() {
        return roomMessageMapper.selectAll();
    }
}