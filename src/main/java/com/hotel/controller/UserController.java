package com.hotel.controller;

import java.util.Date;
import com.hotel.bean.User;
import com.hotel.service.UserService;
import lombok.Data;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpSession;
import java.util.UUID;

@Controller
@RequestMapping(value = "/hello")
public class UserController {

    @Autowired
    private UserService userService;

    @RequestMapping(value = "login1" , method=RequestMethod.POST)
    public ModelAndView login(@ModelAttribute User user, HttpSession session){
        user.setId(UUID.randomUUID().toString());
        User u = userService.selectByUsername(user.getUsername());
        if(u.getUsername().equals(user.getUsername())){
                if(!u.getPassword().equals(user.getPassword())){
                    session.setAttribute("msg", "密码不正确，请重新输入！");
                    return null;
                }
            session.setAttribute("user", user);
        }else{
            session.setAttribute("msg", "账号不匹配，请重新输入！");
            return null;
        }
        ModelAndView view = new ModelAndView("welcome");
        Date date = new Date();
        String d = String.valueOf(date.getTime());
        view.getModel().put("myuser", u);
        view.getModel().put("datetime",d);
        return  view;
    }
//    @RequestMapping("index")
//    public String fun1(){
//        return "index";
//    }
    //loginOut
    @RequestMapping("loginOut")
    public String loginOut(){
        return "login";
    }
    //rili日历
    @RequestMapping("rili")
    public String rili(){
        return "rili";
    }
    //入住
    @RequestMapping("ruzhu")
    public String ruzhu(){
        return "ruzhu";
    }
    @RequestMapping("about")
    public String fun2(){
        return "about";
    }
    @RequestMapping("buttons-and-icons")
    public String fun3(){
        return "buttons-and-icons";
    }
    @RequestMapping("default")
    public String fun4(){
        return "default";
    }
    @RequestMapping("forms")
    public String fun5(){
        return "forms";
    }
    @RequestMapping("login")
    public String fun6(){
        return "login";
    }
    @RequestMapping("tables")
    public String fun7(){
        return "tables";
    }
    @RequestMapping("ui-and-interface")
    public String fun8(){
        return "ui-and-interface";
    }
    @RequestMapping("wysiwyg-editors")
    public String fun9(){
        return "wysiwyg-editors";
    }
//    @RequestMapping("roomList")
//    public String fun10(){
//        return "roomList";
//    }
//


    //获取所有User
    @RequestMapping("req2")
    public String queryAllUser(){
        //List<DeleteUser> deleteUsers =  userService.getAll();
        //System.out.print(deleteUsers);

        return "UserList";
    }

}
