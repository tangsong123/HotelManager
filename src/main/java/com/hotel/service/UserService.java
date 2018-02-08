package com.hotel.service;

import com.hotel.bean.User;
import com.hotel.dao.UserMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service("userService")
public class UserService{
    @Autowired
    UserMapper userMapper;

    public List<User> getAll() {
        return userMapper.userList();
    }
}