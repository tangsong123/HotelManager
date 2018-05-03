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
    public ModelAndView queryAllRoom(HttpSession session, @RequestParam(value = "pn",defaultValue = "1")Integer pn, Model model)    {
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
    @RequestMapping("rooms")
    public ModelAndView queryAllRoomByPage(@RequestParam(value = "pageSize",defaultValue = "5")Integer pageSize, @RequestParam(value = "pageIndex",defaultValue = "1")Integer pageIndex){
        //rooms?pageSize=5&pageIndex=2  pageSize 为分页显示条数 pageIndex为当前页数
        Result result = new Result();
        if(pageSize == null || pageIndex == null){
            result.setSuccess(false);
            result.setMessage("参数校验错误！");
            ModelAndView view = new ModelAndView("rooms");
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
    //selectByCondition方法条件查询
    @RequestMapping("queryByCondition")
    public ModelAndView queryByCondition(RoomMessage roomMessage){
        Result result = new Result();
        if(roomMessage.getRoomType() == null &&  roomMessage.getRoomBedNum() == null && roomMessage.getStatus() == null && roomMessage.getIsBathroom() == null && roomMessage.getIsBlower() == null && roomMessage.getIsBreakfirst() == null && roomMessage.getIsTv() == null&& roomMessage.getIsWindow() == null)
        {
            result.setSuccess(false);
            result.setMessage("传入的查询条件为空");
            ModelAndView view = new ModelAndView("redirect:/room/rooms");
            view.getModel().put("result",result);
            return view;
        }

        if(roomMessage.getRoomType() == 0){
            roomMessage.setRoomType(null);
        }
        if(roomMessage.getStatus() == 0){
            roomMessage.setStatus(null);
        }
        if(roomMessage.getRoomBedNum() == 0){
            roomMessage.setRoomBedNum(null);
        }
        List<RoomMessage> rooms = roomMessageService.selectByCondition(roomMessage);
        if(rooms.size() == 0){
            result.setSuccess(false);
            result.setMessage("未查询到房间");
            ModelAndView m5 = new ModelAndView("rooms");
            m5.getModel().put("result",result);
            return  m5;
        }
        ModelAndView view = new ModelAndView("rooms");
        view.getModel().put("pageInfo",rooms);
        view.getModel().put("size",rooms.size());
        return view;
    }
    @RequestMapping(value = "add")
    public  String add(){
        return "addRoom";
    }
    @RequestMapping(value = "addRoom")
    public ModelAndView addRoom(RoomMessage roomMessage){
        Result result = new Result();
        ModelAndView view = new ModelAndView("redirect:/room/rooms");
        //如果直接进入这个链接，跳转到所有room
        if (roomMessage.getPrice() ==  null){
            result.setSuccess(false);
            result.setMessage("插入内容为空");
            view.getModel().put("result",result);
            return view;
        }
        if(roomMessage.getValid() == 0){
            result.setSuccess(false);
            result.setMessage("请填完全部的信息之后再提交");
            ModelAndView m11 = new ModelAndView("addRoom");
            m11.getModel().put("result",result);
            return m11;
        }
        Long lid = roomMessage.getRoomId();
        if(roomMessageService.selectByPrimaryKey(lid) != null){
            result.setSuccess(false);
            result.setMessage("这个房间号已经存在了，请重新添写房间号");
            ModelAndView m12 = new ModelAndView("addRoom");
            m12.getModel().put("result",result);
            return m12;
        }
        roomMessage.setId(lid);
        roomMessage.setUuid(UUID.randomUUID().toString().substring(0,10));
        int res = roomMessageService.insertSelective(roomMessage);
        if(res != 1){
            result.setSuccess(false);
            result.setMessage("新增房间失败！");
            ModelAndView m13 = new ModelAndView("addRoom");
            m13.getModel().put("result",result);
            return m13;
        }
        result.setSuccess(true);
        result.setMessage("插入成功");
        ModelAndView  mview = new ModelAndView("index");
        mview.getModel().put("result",result);
        return mview;
    }
    @RequestMapping(value = "clearRoom")
    public ModelAndView clearRoom(String id){
        Result result = new Result();
        if(id == null){
            ModelAndView m28 = new ModelAndView("redirect:/room/rooms");
            m28.getModel().put("result",result);
            return  m28;
        }
        Long rid =  Long.valueOf(id);
        RoomMessage roomMessage = roomMessageService.selectByPrimaryKey(rid);
        if(roomMessage == null){
            result.setMessage("未查询到这个房间");
            result.setSuccess(false);
            ModelAndView m20 = new ModelAndView("rooms");
            m20.getModel().put("result",result);
            return  m20;
        }
        //将待打扫的房间设置为空闲
        roomMessage.setStatus(1);
        int i = roomMessageService.updateByPrimaryKeySelective(roomMessage);
        if(i == 0){
            result.setSuccess(false);
            result.setMessage("更新失败");
            ModelAndView m21 = new ModelAndView("rooms");
            m21.getModel().put("result",result);
            return  m21;
        }
        result.setSuccess(true);
        result.setMessage("更新成功！");
        ModelAndView mv2 = new ModelAndView("redirect:/room/rooms");
        mv2.getModel().put("result",result);
        return  mv2;
    }
    @RequestMapping("doDelete")
    public ModelAndView doDelete(String id){
        Long rid = Long.valueOf(id);
        //查询到这个room
        RoomMessage roomMessage = roomMessageService.selectByPrimaryKey(rid);
        roomMessage.setValid(2);
        int i = roomMessageService.updateByPrimaryKey(roomMessage);
        if(i == 0){
            return null;
        }
        Result result = new Result();
        result.setSuccess(true);
        result.setMessage("删除成功");
        ModelAndView mv = new ModelAndView("redirect:/room/rooms");
        mv.getModel().put("result",result);
        return mv;
    }
}