package com.hotel.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import javax.ws.rs.POST;

@Controller
@RequestMapping(value = "/hello")
public class UserController {
    @RequestMapping("req1")
    public String fun1(){
        return "index";
    }
}
