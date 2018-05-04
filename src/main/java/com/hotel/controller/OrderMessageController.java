package com.hotel.controller;

import com.hotel.bean.*;
import com.hotel.service.OrderMessageService;
import com.hotel.service.RoomMessageService;
import com.hotel.util.ControllerUtil;
import com.hotel.util.DateUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import java.math.BigDecimal;
import java.text.DecimalFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.*;
import java.util.regex.Matcher;
import java.util.regex.Pattern;


@Controller
@RequestMapping(value = "/order")
public class OrderMessageController {

    @Autowired
    private OrderMessageService orderMessageService;
    @Autowired
    private RoomMessageService roomMessageService;

//    public static void main(String[] args){
////        SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd"); //显示的格式
////        String date = sdf.format(new Date());
////        System.out.print(date.substring(5,7));
//        Integer roomsCount =24;
//        Integer rooms = 33;
//        Double x = roomsCount*1.0;
//        Double y = rooms*1.0;
//        Double z = x/y;
//        DecimalFormat df1 = new DecimalFormat("##%");
//        String baifen = df1.format(z).substring(0,2);
//        System.out.print(baifen);
//    }
    //从前台传入room数据到订单，待生成订单
    @RequestMapping(value = "ruzhu", method = RequestMethod.GET)
    public ModelAndView login(String str) {
        Long rid = Long.parseLong(str);
        RoomMessage roomMessage = null;
        roomMessage  = roomMessageService.selectByPrimaryKey(rid);
        ModelAndView mv = new ModelAndView("ruzhu");
        mv.getModel().put("roomMessage",roomMessage);
        return mv;
    }
    //这是直接入住，需要手动填写房间信息
    @RequestMapping("addOrder")
    public String addOrder(){
        return "ruzhu";
    }
    public boolean isNumeric(String str) {
        Pattern pattern = Pattern.compile("[0-9]*");
        Matcher isNum = pattern.matcher(str);
        if (!isNum.matches()) {
            return false;
        }
        return true;
    }
    @RequestMapping(value = "createOrder", method = RequestMethod.POST)
    public ModelAndView createOrder(OrderMessage orderMessage){
        Result result = new Result();
        ModelAndView mv = new ModelAndView("index");
        if (orderMessage != null){
            //orderMessage.getPrice()

            if (new BigDecimal("0").compareTo(orderMessage.getPrice()) >= 0){
                result.setSuccess(false);
                result.setMessage("订单金额不能小于0");
                mv.getModel().put("result",result);
                return mv;
            }
            if(!isNumeric(orderMessage.getRoomId().toString())){
                result.setSuccess(false);
                result.setMessage("房间号只能为汉字");
                mv.getModel().put("result",result);
                return mv;
            }
            orderMessage.setUuid(UUID.randomUUID().toString().substring(0,8));
            orderMessage.setValid(1);
            orderMessage.setStatus(1);
            orderMessage.setIsInvoice("0");
            orderMessage.setRemark("这是一个默认的备注");
            SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss"); //显示的格式
            String date = sdf.format(new Date());
            orderMessage.setOrderCreateTime(date);
            int i = orderMessageService.insertOrder(orderMessage);
            if(i != 1){
                result.setMessage("插入失败");
                result.setSuccess(false);
            }

        }else {
            result.setSuccess(false);
            result.setMessage("请传入订单信息");
            mv.getModel().put("result",result);
            return mv;
        }
        result.setSuccess(true);
        result.setMessage("入住成功！！");
        //入住成功，取出roomId。去数据库修改房间状态为 有人（2）状态
        Long rid = orderMessage.getRoomId();
        RoomMessage roomMessage = roomMessageService.selectByPrimaryKey(rid);
        //更改房间状态为2（有人）
        roomMessage.setStatus(2);
        int rst = roomMessageService.updateByPrimaryKey(roomMessage);
        if(rst == 0){
            result.setSuccess(false);
            result.setMessage("更改房间状态失败");
        }
        mv.getModel().put("result",result);
        return mv;
    }
    @RequestMapping(value = "orders")
    public ModelAndView orders(@RequestParam(value = "pageSize",defaultValue = "5")Integer pageSize, @RequestParam(value = "pageIndex",defaultValue = "1")Integer pageIndex, String str){
        //rooms?pageSize=5&pageIndex=2  pageSize 为分页显示条数 pageIndex为当前页数
        Result result = new Result();
        if(pageSize == null || pageIndex == null){
            result.setSuccess(false);
            result.setMessage("参数校验错误！");
            ModelAndView view = new ModelAndView("orders");
            view.getModel().put("result",result);
            return view;
        }
        try{
            if (str != null){
                OrderMessage orderMessage = new OrderMessage();
                Long id = Long.valueOf(str);
                orderMessage.setId(id);
                orderMessage.setIsInvoice("1");
                orderMessageService.updateByPrimaryKeySelective(orderMessage);
            }
            HashMap params = new HashMap<String,Object>();
            Integer allCounts = orderMessageService.selectCountNoNull();
            Integer pages = null;
            if(allCounts%pageSize == 0){
                pages = allCounts/pageSize;//总共多少页
            }else{
                pages = allCounts/pageSize +1;
            }
            int index = ControllerUtil.getIndex(pageIndex,pageSize,allCounts);
            params.put("index",index);//
            params.put("pageSize",pageSize);
            List<OrderMessage> orders = orderMessageService.selectOrderByPage(params);
            if(orders == null) {
                result.setSuccess(false);
                result.setMessage("分页查询未查到数据");
            }
            ModelAndView view = new ModelAndView("orders");
            view.getModel().put("pageInfo",orders);
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
        return null;
    }
    @RequestMapping(value = "updateOrder")
    public ModelAndView updateOrder(@RequestParam(value = "pageSize",defaultValue = "5")Integer pageSize, @RequestParam(value = "pageIndex",defaultValue = "1")Integer pageIndex, String str,String status){
        //rooms?pageSize=5&pageIndex=2  pageSize 为分页显示条数 pageIndex为当前页数
        Result result = new Result();
        if(pageSize == null || pageIndex == null){
            result.setSuccess(false);
            result.setMessage("参数校验错误啊！");
            ModelAndView view = new ModelAndView("orders");
            view.getModel().put("result",result);
            return view;
        }
        try{
            if(status!=null && status.equals("0")) {
                //取消订单
                if(str != null){
                    //通过页面传过来的str，id来查询订单
                    Long id = Long.valueOf(str);
                    OrderMessage orderMessage = orderMessageService.selectByPrimaryKey(id);
                    //更改订单状态为3 (已取消）
                    orderMessage.setStatus(3);
                    int rst2 = orderMessageService.updateByPrimaryKey(orderMessage);
                    if(rst2==0) {
                        result.setSuccess(false);
                        result.setMessage("更新订单状态失败");
                        ModelAndView m1 = new ModelAndView("updateOrder");
                        m1.getModel().put("result",result);
                        return m1;
                    }
                    Long rid = orderMessage.getRoomId();
                    RoomMessage roomMessage = roomMessageService.selectByPrimaryKey(rid);
                    //更改房间状态为1（空闲）
                    roomMessage.setStatus(1);
                    int rst = roomMessageService.updateByPrimaryKey(roomMessage);
                    if(rst==0) {
                        result.setSuccess(false);
                        result.setMessage("更新房间状态失败");
                        ModelAndView m1 = new ModelAndView("updateOrder");
                        m1.getModel().put("result",result);
                        return m1;
                    }
                    //这里还不能put，需要得到分页信息，并且分页展示
                    result.setSuccess(true);
                    result.setMessage("订单状态取消成功");
//                    ModelAndView MV = new ModelAndView("updateOrder");
//                    MV.getModel().put("result",result);
//                    return MV;
                }
            }
            if(status!=null && status.equals("2")) {
            //这里是退房操作，主要目的是把订单状态改为4（请立即打扫）
                if(str != null){
                    Long id2 = Long.valueOf(str);
                    OrderMessage orderMessage = orderMessageService.selectByPrimaryKey(id2);
                    //更改订单状态为2（已完成）
                    orderMessage.setStatus(2);
                    //设置完成时间
                    SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss"); //显示的格式
                    String date2 = sdf.format(new Date());
                    orderMessage.setOrderCompleteTime(date2);
                    //
                    int rst3 = orderMessageService.updateByPrimaryKey(orderMessage);
                    if(rst3==0) {
                        result.setSuccess(false);
                        result.setMessage("更新订单状态为已完成失败");
                        ModelAndView m2 = new ModelAndView("updateOrder");
                        m2.getModel().put("result",result);
                        return m2;
                    }
                    Long rid2 = orderMessage.getRoomId();
                    RoomMessage roomMessage = roomMessageService.selectByPrimaryKey(rid2);
                    //更改房间状态为4（待打扫）
                    roomMessage.setStatus(4);
                    int rst9 = roomMessageService.updateByPrimaryKey(roomMessage);
                    if(rst9==0) {
                        result.setSuccess(false);
                        result.setMessage("更新房间状态为待打扫失败");
                        ModelAndView m8 = new ModelAndView("updateOrder");
                        m8.getModel().put("result",result);
                        return m8;
                    }
                    //这里还不能put，需要得到分页信息，并且分页展示
                    result.setSuccess(true);
                    result.setMessage("订单状态取消成功");
                }
            }
            HashMap params = new HashMap<String,Object>();
            //查询进行中的订单
            Integer allCounts = orderMessageService.selectCountByStatus();
            Integer pages = null;
            if(allCounts%pageSize == 0){
                pages = allCounts/pageSize;//总共多少页
            }else{
                pages = allCounts/pageSize +1;
            }
            int index = ControllerUtil.getIndex(pageIndex,pageSize,allCounts);
            params.put("index",index);//
            params.put("pageSize",pageSize);
            List<OrderMessage> orders = orderMessageService.selectOrderByStatusPage(params);
            if(orders == null) {
                result.setSuccess(false);
                result.setMessage("分页查询未查到数据");
            }
            ModelAndView view = new ModelAndView("updateOrder");
            view.getModel().put("pageInfo",orders);
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
        return null;
    }
   //     localhost:8080/order/queryOrder   最后没有使用分页查询，而是查询这个月每天的订单数和每天的营业额
    @RequestMapping(value = "queryOrder")
    public ModelAndView queryOrder(@RequestParam(value = "pageSize",defaultValue = "5")Integer pageSize, @RequestParam(value = "pageIndex",defaultValue = "1")Integer pageIndex,DataTime dataTime) throws ParseException {
        Result result = new Result();
        //先不考虑页面不传入时间，然后查询的情况
        SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd"); //显示的格式
        String date = sdf.format(new Date());
        DateUtil dateUtil = new DateUtil();
        //截取的是当前的 年、月
        String year = date.substring(0,4);//2018
        String mouth = date.substring(5,7);//5
        String day = date.substring(8,10);//XX
        //dayday 代表一个月的天数
        Integer dayday = Integer.parseInt(day);
        //判断页面是否传过来时间
        if(dataTime.getYear()!=null && dataTime.getMouth()!=null){
                 //dayday 代表一个月的天数
                year = dataTime.getYear();
                mouth = dataTime.getMouth();
                day = "01";
                String yearmouthday = year+"-"+mouth+"-"+day;
                dayday =  dateUtil.getDaysOfMonth(sdf.parse(yearmouthday));
        }
       HashMap params = new HashMap<String,Object>();
       params.put("year",year);
       params.put("mouth",mouth);
       params.put("day",day);
       //查询的是所有月的数据，以日维度
       List<DataTime> dataTimes = new ArrayList<DataTime>();
        Long mouths = new Long(0);//总金额
        for(int i = 0;i<dayday;i++){
            DataTime dt = new DataTime();
            dt.setId(i+1);
            dt.setYear(year);
            dt.setMouth(mouth);
            if(i<9){
                dt.setDay("0"+(i+1));
            }else {
                dt.setDay(i+1+"");
            }
            Integer counts = orderMessageService.seletMouthCount(dt);
            List<OrderMessage> oms = orderMessageService.selectMouthByPage(dt) ;
            //这一块不知道money每一次循环是否都从0开始累加，待确定
            Long moneys = new Long(0);
            for(int j = 0;j<oms.size();j++){
               moneys += oms.get(j).getPrice().longValue();
            }
            mouths += moneys;
            dt.setCount(counts);
            dt.setMoney(moneys);
            dataTimes.add(dt);
        }
        //如果mouths总金额为0，代表没有营收
        if(mouths==0){
            result.setMessage("这个月没有营收！");
        }
        //dayday就是总条数，因为是按天查询
       Integer allCounts = dayday;
       Integer pages = null;
       if(allCounts%pageSize == 0){
           pages = allCounts/pageSize;//总共多少页
       }else{
           pages = allCounts/pageSize +1;
       }
       int index = ControllerUtil.getIndex(pageIndex,pageSize,allCounts);
       params.put("index",index);//
       params.put("pageSize",pageSize);
       //这里的分页查询需要重写

       if(dataTimes == null) {
           result.setSuccess(false);
           result.setMessage("分页查询未查到数据");
       }
       ModelAndView view = new ModelAndView("mouthSearch");
       view.getModel().put("pageInfo",dataTimes);
       view.getModel().put("result",result);
       view.getModel().put("params",params);
       view.getModel().put("pageIndex",pageIndex);
       view.getModel().put("pages",pages);
       view.getModel().put("allCounts",allCounts);
       view.getModel().put("moneys",mouths); //月总金额
       view.getModel().put("dataTime",dataTime);
       return view;

    }

}