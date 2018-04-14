package com.hotel.service;


import com.hotel.bean.RoomMessage;
import com.hotel.bean.VipMessage;
import com.hotel.dao.RoomMessageMapper;
import com.hotel.dao.VipMessageMapper;
import org.springframework.stereotype.Service;
import org.springframework.beans.factory.annotation.Autowired;

import java.util.List;

@Service("vipMessageService")
public class VipMesssageService{

    @Autowired
    VipMessageMapper vipMessageMapper;

    public List<VipMessage> selectAll() {
        return vipMessageMapper.selectAll();
    }
}