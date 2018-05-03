package com.hotel.controller;

import java.text.SimpleDateFormat;
import java.util.Date;

import com.hotel.bean.Psd;
import com.hotel.bean.Result;
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

    @RequestMapping("login")
    public String fun6(){
        return "login";
    }
    @RequestMapping(value = "login1" , method=RequestMethod.POST)
    public ModelAndView login(@ModelAttribute User user, HttpSession session){
        user.setId(UUID.randomUUID().toString());
        User u = userService.selectByUsername(user.getUsername());
        Result result = new Result();
        if(u.getUsername().equals(user.getUsername())){
                if(!u.getPassword().equals(user.getPassword())){
                    result.setMessage("密码不正确，请重新输入！");
                    result.setSuccess(false);
                    ModelAndView m1 = new ModelAndView("login");
                    m1.getModel().put("result",result);
                    return m1;
                }
        }else{
            result.setMessage("账号不匹配，请重新输入");
            result.setSuccess(false);
            ModelAndView m2 = new ModelAndView("login");
            m2.getModel().put("result",result);
            return m2;
        }
        session.setAttribute("user", user.getUsername());
        ModelAndView view = new ModelAndView("welcome");
        SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss"); //显示的格式
        String date = sdf.format(new Date());
        view.getModel().put("myuser", u);//账号信息，给前台
        view.getModel().put("datetime",date);
        return  view;
    }
    @RequestMapping("index")
    public String fun1(){
        return "index";
    }
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
    //入住  弃用
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
    @RequestMapping("tables")
    public String fun7(){
        return "tables";
    }
    //弹出的提示
    @RequestMapping("ui-and-interface")
    public String fun8(){
        return "ui-and-interface";
    }
    @RequestMapping("wysiwyg-editors")
    public String fun9(){
        return "wysiwyg-editors";
    }
    @RequestMapping(value = "update")
    public String update(){
        return "updatepassword";
    }
    @RequestMapping(value = "updatepassword")
    public ModelAndView newPassword(Psd psd,HttpSession session){
        Result result = new Result();
        if(psd == null){
            result.setSuccess(false);
            result.setMessage("开始修改密码");
            ModelAndView m0 = new ModelAndView("updatepassword");
            m0.getModel().put("result",result);
            return m0;
        }
        if(psd.getoPassword().equals("请输入旧密码...")){
            result.setSuccess(false);
            result.setMessage("设置密码错误，请输入正确的密码");
            ModelAndView m = new ModelAndView("updatepassword");
            m.getModel().put("result",result);
            return m;
        }
        if (session.getAttribute("user")==null){
            result.setSuccess(false);
            result.setMessage("账户信息获取失败，请重新登录！");
            ModelAndView m1 = new ModelAndView("redirect:/hello/login");
            m1.getModel().put("result",result);
            return m1;
        }
        String s1 = psd.getoPassword();
        String s2 = psd.getPassword();
        String s3 = psd.getRePassword();
        String u = (String)session.getAttribute("user");
        User u2 = userService.selectByUsername(u);
        if(u2==null){
            result.setSuccess(false);
            result.setMessage("未查询到对应管理员");
            ModelAndView m2 = new ModelAndView("updatepassword");
            m2.getModel().put("result",result);
            return m2;
        }
        if(u2.getPassword().equals(s1)){
            if (s2.equals(s3)){
                u2.setPassword(s3);
                int res = userService.updateByUserName(u2);
                if(res == 0){
                    result.setSuccess(false);
                    result.setMessage("修改失败！");
                    ModelAndView m3 = new ModelAndView("updatepassword");
                    m3.getModel().put("result",result);
                    return m3;
                }
                result.setSuccess(true);
                result.setMessage("修改成功，下次登录使用最新的账号密码登录！");
                ModelAndView mv = new ModelAndView("index");
                mv.getModel().put("result",result);
                return mv;
            }
        }
        result.setSuccess(false);
        result.setMessage("修改失败！原始密码不匹配！");
        ModelAndView m9 = new ModelAndView("updatepassword");
        m9.getModel().put("result",result);
        return m9;
    }
    //获取所有User
    @RequestMapping("req2")
    public String queryAllUser(){
        //List<DeleteUser> deleteUsers =  userService.getAll();
        //System.out.print(deleteUsers);

        return "UserList";
    }

}
