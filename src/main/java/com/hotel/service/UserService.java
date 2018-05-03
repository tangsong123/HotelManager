package com.hotel.service;

import com.hotel.bean.User;
import com.hotel.dao.UserMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;



@Service("userService")
public class UserService{
    @Autowired
    UserMapper userMapper;

    public User selectByUsername(String username) {
        return userMapper.selectByUsername(username);
    }
    public int updateByUserName(User record){
        return userMapper.updateByUserName(record);
    }
}