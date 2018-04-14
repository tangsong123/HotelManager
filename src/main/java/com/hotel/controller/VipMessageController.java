package com.hotel.controller;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.hotel.bean.VipMessage;
import com.hotel.service.VipMesssageService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpSession;
import java.util.List;

@Controller
@RequestMapping(value = "/vip")
public class VipMessageController{
    @Autowired
    private VipMesssageService vipMesssageService;

    @RequestMapping("vipList")
    public ModelAndView queryAllVip(HttpSession session, @RequestParam(value = "pn",defaultValue = "1")Integer pn, Model model){
        session.setAttribute("message","这是查询roomList");
        //传入页码，以及每页条数
        int pageSize = 5;
        PageHelper.startPage(pn,pageSize);
        List<VipMessage> vipList = vipMesssageService.selectAll();
        //pageInfo 包装查询后的结果  封装了详细的分页信息，包括查询出来的数据
        PageInfo page = new PageInfo(vipList,5);
        if(page == null){
            session.setAttribute("message","无查询结果");
        }
        ModelAndView view = new ModelAndView("vipList");
        //
        //model.addAttribute("pageInfo",page);
        //
        view.getModel().put("pageInfo",page);

        return  view;
    }

    @RequestMapping("addVip")
    public String addVip(){

        return "addVip";
    }
}