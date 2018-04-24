package com.hotel.controller;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.hotel.bean.Result;
import com.hotel.bean.RoomMessage;
import com.hotel.service.RoomMessageService;
import com.hotel.util.ControllerUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpSession;
import java.util.HashMap;
import java.util.List;
import java.util.UUID;

import static jdk.nashorn.internal.runtime.regexp.joni.Config.log;

@Controller
@RequestMapping(value = "/room")
public class RoomMessageController{
    @Autowired
    private RoomMessageService roomMessageService;

    @RequestMapping("roomList")
    public ModelAndView queryAllRoom(HttpSession session, @RequestParam(value = "pn",defaultValue = "1")Integer pn, Model model){
        session.setAttribute("message","这是查询roomList");
        //传入页码，以及每页条数
        int pageSize = 5;
        PageHelper.startPage(pn,pageSize);
        List<RoomMessage>  roomList = roomMessageService.selectAll();
        //pageInfo 包装查询后的结果  封装了详细的分页信息，包括查询出来的数据
        PageInfo page = new PageInfo(roomList,5);
        if(page == null){
            session.setAttribute("message","无查询结果");
        }
        ModelAndView view = new ModelAndView("roomList");
        //
        //model.addAttribute("pageInfo",page);
        //
        view.getModel().put("pageInfo",page);

        return  view;
    }
    //selectByCondition方法条件查询
    @RequestMapping("queryByCondition")
    public ModelAndView queryByCondition(RoomMessage roomMessage){
        Result result = new Result();
        if(roomMessage == null ){
            result.setSuccess(false);
            result.setMessage("传入的查询条件为空");
            ModelAndView view = new ModelAndView("roomList");
            view.getModel().put("result",result);
            return view;
        }
        List<RoomMessage> rooms = roomMessageService.selectByCondition(roomMessage);
        ModelAndView view = new ModelAndView("roomList");
        view.getModel().put("roomList",rooms);
        return view;
    }

    @RequestMapping("rooms")
    public ModelAndView queryAllRoomByPage(@RequestParam(value = "pageSize",defaultValue = "5")Integer pageSize, @RequestParam(value = "pageIndex",defaultValue = "1")Integer pageIndex){
        //rooms?pageSize=5&pageIndex=2  pageSize 为分页显示条数 pageIndex为当前页数
        Result result = new Result();
        if(pageSize == null || pageIndex == null){
            result.setSuccess(false);
            result.setMessage("参数校验错误！");
            ModelAndView view = new ModelAndView("roomList");
            view.getModel().put("result",result);
            return view;
        }
        try{
            HashMap params = new HashMap<String,Object>();
            Integer allCounts = roomMessageService.selectCount();
            Integer pages = null;
            if(allCounts%pageSize == 0){
                pages = allCounts/pageSize;//总共多少页
            }else{
                pages = allCounts/pageSize +1;
            }
            int index = ControllerUtil.getIndex(pageIndex,pageSize,allCounts);
            params.put("index",index);//
            params.put("pageSize",pageSize);
            List<RoomMessage> rooms = roomMessageService.selectRoomByPage(params);
            if(rooms == null) {
                result.setSuccess(false);
                result.setMessage("分页查询未查到数据");
            }
            ModelAndView view = new ModelAndView("roomList");
            view.getModel().put("pageInfo",rooms);
            view.getModel().put("result",result);
            view.getModel().put("params",params);
            view.getModel().put("pageIndex",pageIndex);//准备去的页码，也是当前的页码
            view.getModel().put("pages",pages);
            view.getModel().put("allCounts",allCounts);
            return view;


        }catch (Exception e){
            result.setSuccess(false);
            result.setMessage("分页查询失败了！");
        }
//        ModelAndView view = new ModelAndView("roomList");
//
//        view.getModel().put("pageInfo",page);
//
//        return  view;
        return null;
    }

}