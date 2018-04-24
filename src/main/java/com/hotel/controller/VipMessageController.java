package com.hotel.controller;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.hotel.bean.MapBean;
import com.hotel.bean.Result;
import com.hotel.bean.RoomMessage;
import com.hotel.bean.VipMessage;
import com.hotel.service.VipMesssageService;
import com.hotel.util.ControllerUtil;
import lombok.Lombok;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpSession;
import java.util.HashMap;
import java.util.List;

@Controller
@RequestMapping(value = "/vip")
public class VipMessageController{
    @Autowired
    private VipMesssageService vipMesssageService;

    @RequestMapping("vips")
    public ModelAndView queryVipListByCondition(@RequestParam(value = "pageSize",defaultValue = "5")Integer pageSize, @RequestParam(value = "pageIndex",defaultValue = "1")Integer pageIndex,VipMessage vipMessage){
        Result result = new Result();
        try{
            HashMap params = new HashMap<String,Object>();
            MapBean mapBean = new MapBean();
            Long sp1 = vipMessage.getSpendingPower();
            if (vipMessage.getSpendingPower()!=0){
                    if(sp1==100){
                        vipMessage.setSpendingPower(50L);
                    }else if (sp1==200){
                        vipMessage.setSpendingPower(150L);
                    }else if (sp1==500){
                        vipMessage.setSpendingPower(300L);
                    }else if (sp1==1000){
                        vipMessage.setSpendingPower(700L);
                    }else{
                        vipMessage.setSpendingPower(2000L);
                    }
             }else{
                vipMessage.setSpendingPower(null);
             }
             if (vipMessage.getValid()==0){
                vipMessage.setValid(null);
             }
             if (vipMessage.getVipType()==0){
                 vipMessage.setVipType(null);
             }
             if (vipMessage.getStatus()==0){
                 vipMessage.setStatus(null);
             }
             if (vipMessage.getVipName() == "" ){
                 vipMessage.setVipName(null);
             }
            Integer Counts = vipMesssageService.selectVipCountByCondition(vipMessage);
            Integer pages = null;
            if(Counts%pageSize == 0){
                pages = Counts/pageSize;//总共多少页
            }else{
                pages = Counts/pageSize +1;
            }
            int index = ControllerUtil.getIndex(pageIndex,pageSize,Counts);
            params.put("index",index);//
            params.put("pageSize",pageSize);
            mapBean.setSpendingPower(vipMessage.getSpendingPower());
            mapBean.setStatus(vipMessage.getStatus());
            mapBean.setValid(vipMessage.getValid());
            mapBean.setVipName(vipMessage.getVipName());
            mapBean.setVipType(vipMessage.getVipType());
            mapBean.setIndex(Integer.parseInt(params.get("index").toString()));
            mapBean.setPageSize(Integer.parseInt(params.get("pageSize").toString()));
            List<VipMessage> vips = vipMesssageService.selectVipByCondition(mapBean);
            if(vips == null) {
                result.setSuccess(false);
                result.setMessage("分页查询未查到数据");
            }
            ModelAndView view = new ModelAndView("vipList");
            view.getModel().put("pageInfo",vips);
            view.getModel().put("result",result);
            view.getModel().put("params",params);
            view.getModel().put("pageIndex",pageIndex);//准备去的页码，也是当前的页码
            view.getModel().put("pages",pages);
            view.getModel().put("allCounts",Counts);
            return view;


        }catch (Exception e){
            result.setSuccess(false);
            result.setMessage("分页查询失败了！");
        }
        return null;
    }
    @RequestMapping(value="doDelete", method=RequestMethod.POST)
    public ModelAndView doDelete(Integer id,HttpSession session){
        Result result = new Result();
        if(id==null){
            result.setMessage("请传入会员id");
            result.setSuccess(false);
            session.setAttribute("result",result);
        }
        long vid = Integer.valueOf(id).longValue() ;
        VipMessage vip = new VipMessage();
        vip.setId(vid);
        vip.setValid(2);
        int resultInt =vipMesssageService.updateByPrimaryKeySelective(vip);
        //int resultInt = vipMesssageService.deleteByPrimaryKey(vid);
        if(resultInt==1){
            result.setSuccess(true);
            result.setMessage("删除成功");
            session.setAttribute("result",result);
        }else{
            result.setSuccess(false);
            result.setMessage("删除失败");
            session.setAttribute("result",result);
        }
        //这一块还有问题
        return new ModelAndView("forward:/vipList");
    }

    @RequestMapping(value="doUpdate")
    public ModelAndView doUpdate(Integer id,HttpSession session){
        Result result = new Result();
        if(id==null){
            result.setMessage("请传入会员id");
            result.setSuccess(false);
            session.setAttribute("result",result);
        }
        long vid = Integer.valueOf(id).longValue() ;
        VipMessage vip = vipMesssageService.selectByPrimaryKey(vid);
        ModelAndView mv = new ModelAndView("updateVip");
        mv.getModel().put("vip",vip);
        return mv;
    }

    @RequestMapping("vipList")
    public  ModelAndView queryVipListByPage(@RequestParam(value = "pageSize",defaultValue = "5")Integer pageSize, @RequestParam(value = "pageIndex",defaultValue = "1")Integer pageIndex){
        Result result = new Result();
        if(pageSize == null || pageIndex == null){
            result.setSuccess(false);
            result.setMessage("参数校验错误！");
            ModelAndView view = new ModelAndView("vipList");
            view.getModel().put("result",result);
            return view;
        }
        try{
            HashMap params = new HashMap<String,Object>();
            Integer allCounts = vipMesssageService.selectCount();
            Integer pages = null;
            if(allCounts%pageSize == 0){
                pages = allCounts/pageSize;//总共多少页
            }else{
                pages = allCounts/pageSize +1;
            }
            int index = ControllerUtil.getIndex(pageIndex,pageSize,allCounts);
            params.put("index",index);//
            params.put("pageSize",pageSize);
            List<VipMessage> vips = vipMesssageService.selectVipOrderByCreateTime(params);
            if(vips == null) {
                result.setSuccess(false);
                result.setMessage("分页查询未查到数据");
            }
            ModelAndView view = new ModelAndView("vipList");
            view.getModel().put("pageInfo",vips);
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

        return  null;
    }
    @RequestMapping("vipList2")
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

    @RequestMapping("add")
    public  String addVipResponse(){
        return  "addVip";
    }
    @RequestMapping(value = "addVip")
    public ModelAndView addVip(VipMessage vipMessage ){
        Result result = new Result();
        ModelAndView view = new ModelAndView("vipList");
        if (vipMessage == null){
            result.setSuccess(false);
            result.setMessage("插入内容为空");
            view.getModel().put("result",result);
            return view;
        }
        if (vipMessage.getTimes() == null||vipMessage.getTimes()<0){
            result.setSuccess(false);
            result.setMessage("入住次数必须大于0");
            view.getModel().put("result",result);
            return view;

        }
        if (vipMessage.getVipPhonenum()==null){
            result.setSuccess(false);
            result.setMessage("手机号必须为11位数字");
            view.getModel().put("result",result);
            return view;
        }
        if (vipMessage.getUuid().length()!=18 || vipMessage.getUuid() == null){
            result.setSuccess(false);
            result.setMessage("请输入正确的身份证号码");
            view.getModel().put("result",result);
            return view;
        }
        int count = 0;
        count = vipMesssageService.insert(vipMessage);
        if (count == 1){
            result.setSuccess(true);
            result.setMessage("插入成功");
        }else{
            result.setSuccess(false);
            result.setMessage("插入失败");
            return null;
        }
        view.getModel().put("result",result);
        // result.setSuccess(true);代表插入成功
        return view;
    }
    @RequestMapping(value = "updateVip")
    public ModelAndView updateVip(VipMessage vipMessage ){
        Result result = new Result();
        ModelAndView view = new ModelAndView("vipList");
        if (vipMessage == null){
            result.setSuccess(false);
            result.setMessage("插入内容为空");
            view.getModel().put("result",result);
            return view;
        }
        if (vipMessage.getTimes() == null||vipMessage.getTimes()<0){
            result.setSuccess(false);
            result.setMessage("入住次数必须大于0");
            view.getModel().put("result",result);
            return view;

        }
        if (vipMessage.getVipPhonenum()==null){
            result.setSuccess(false);
            result.setMessage("手机号必须为11位数字");
            view.getModel().put("result",result);
            return view;
        }
        if (vipMessage.getUuid().length()!=18 || vipMessage.getUuid() == null){
            result.setSuccess(false);
            result.setMessage("请输入正确的身份证号码");
            view.getModel().put("result",result);
            return view;
        }
        int count = 0;
        count = vipMesssageService.updateByPrimaryKey(vipMessage);
        if (count == 1){
            result.setSuccess(true);
            result.setMessage("更新成功");
        }else{
            result.setSuccess(false);
            result.setMessage("更新失败");
            return null;
        }
        view.getModel().put("result",result);
        // result.setSuccess(true);代表插入成功
        return view;
    }

}