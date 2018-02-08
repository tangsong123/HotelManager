package com.hotel.controller;

import com.hotel.bean.User;
import com.hotel.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import javax.ws.rs.POST;
import java.util.List;

@Controller
@RequestMapping(value = "/hello")
public class UserController {

    @Autowired
    private UserService userService;

    @RequestMapping("req1")
    public String fun1(){
        return "index";
    }

    //获取所有User
    @RequestMapping("req2")
    public String queryAllUser(){
        List<User> users =  userService.getAll();
        System.out.print(users);

        return "UserList";
    }

}
