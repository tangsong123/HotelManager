package com.hotel.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/hello")
public class UserController {
    @RequestMapping("req1")
    public String fun1(){
        return "fun1JspPage";
    }
}
