<%--<%@ page contentType="text/html;charset=UTF-8" language="java" %>--%>
<%-- 拦截器--%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" import="java.util.*" isELIgnored="false"%>
<%@ page import="com.hotel.bean.User" %>

<html>
    <head>
        <title>欢迎！</title>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">

        <!-- Bootstrap -->
        <%--<link rel="stylesheet" href="http://cdn.bootcss.com/bootstrap/3.3.7/css/bootstrap.min.css">--%>
        <%--<script src="http://cdn.bootcss.com/jquery/2.1.1/jquery.min.js"></script>--%>
        <%--<script src="http://cdn.bootcss.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>--%>

        <link href="<%=request.getContextPath()%>/css/bootstrap.min.css" rel="stylesheet" media="screen">
        <link href="<%=request.getContextPath()%>/css/bootstrap-theme.min.css" rel="stylesheet" media="screen">

        <!-- Bootstrap Admin Theme -->
        <link href="<%=request.getContextPath()%>/css/bootstrap-admin-theme.css" rel="stylesheet" media="screen">

        <!-- Vendors -->
        <link href="<%=request.getContextPath()%>/vendors/easypiechart/jquery.easy-pie-chart.css" rel="stylesheet" media="screen">
        <link href="<%=request.getContextPath()%>/vendors/easypiechart/jquery.easy-pie-chart_custom.css" rel="stylesheet" media="screen">

        <!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
        <!--[if lt IE 9]>
        <script type="text/javascript" src="<%=request.getContextPath()%>/js/html5shiv.js"></script>
        <script type="text/javascript" src="<%=request.getContextPath()%>/js/respond.min.js"></script>
        <![endif]-->
        <script>
            function toruzhu(){
                self.location.href="<%=request.getContextPath()%>/room/rooms";
            }
            function toindex() {
                self.location.href="<%=request.getContextPath()%>/hello/index";
            }
            //*****************************************************************
            function toord() {
                self.location.href="<%=request.getContextPath()%>/order/addOrder";
            }
            function tomoney() {
                self.location.href="<%=request.getContextPath()%>/order/queryOrder";
            }
            function toorders() {
                self.location.href="<%=request.getContextPath()%>/order/orders";
            }
            function tolidian() {
                self.location.href="<%=request.getContextPath()%>/order/updateOrder";
            }function toinfo() {
                self.location.href="<%=request.getContextPath()%>/hello/about";
            }
            function  tovip() {
                self.location.href="<%=request.getContextPath()%>/vip/vipList";
            }
            function toaddvip() {
                self.location.href="<%=request.getContextPath()%>/vip/add";
            }
            function toaddroom() {
                self.location.href="<%=request.getContextPath()%>/room/add";
            }
            function togaimima() {
                self.location.href="<%=request.getContextPath()%>/hello/update";
            }
            //*****************************************************************
            function loginOut() {
                var result = confirm("你确定要退出登陆吗？");
                if(result == true){
                    location.replace("<%=request.getContextPath()%>/hello/loginOut"); //loginOut即是你所要转的退出登录的地址
                }
            }
        </script>
    </head>
    <body class="bootstrap-admin-with-small-navbar">
    <nav class="navbar navbar-default navbar-inverse navbar-fixed-top " role="navigation">
        <div class="container">
            <div class="row">
                <!-- Brand and toggle get grouped for better mobile display -->
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
                        <span class="sr-only">Toggle navigation</span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                    <a class="navbar-brand" href="<%=request.getContextPath()%>/hello/index">酒店后台</a>
                </div>
                <!-- Collect the nav links, forms, and other content for toggling -->
                <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                    <ul class="nav navbar-nav">
                        <li class="active"><a href="<%=request.getContextPath()%>/hello/index">首页</a></li>
                        <li ><a href="<%=request.getContextPath()%>/hello/about">关于我们</a></li>
                        <li class="dropdown">
                            <a href="#" class="dropdown-toggle" data-toggle="dropdown">下拉菜单<b class="caret"></b></a>
                            <ul class="dropdown-menu">
                                <li><a href="<%=request.getContextPath()%>/order/addOrder">入住</a></li>
                                <li><a href="<%=request.getContextPath()%>/order/updateOrder">结账</a></li>
                                <li class="divider"></li>
                                <li><a href="<%=request.getContextPath()%>/vip/vipList">会员管理</a></li>
                                <li><a href="<%=request.getContextPath()%>/room/rooms">客房管理</a></li>
                                <li><a href="<%=request.getContextPath()%>/order/orders">订单管理</a></li>
                            </ul>
                        </li>
                    </ul>
                    <ul class="nav navbar-nav navbar-right">
                        <li><a href="http://www.baidu.com">链接</a></li>
                        <li class="dropdown">
                            <a href="#" class="dropdown-toggle" data-toggle="dropdown">管理员<b class="caret"></b></a>
                            <ul class="dropdown-menu">
                                <li><a href="<%=request.getContextPath()%>/hello/update">修改密码</a></li>
                                <li class="divider"></li>
                                <li><a href="javascript:loginOut();">退出登录</a></li>
                            </ul>
                        </li>
                    </ul>
                </div><!-- /.navbar-collapse -->
            </div>
        </div>
    </nav>

        <div class="container">
           <!-- content -->
           <div class="col-md-10">
               <div class="row">
                   <div class="alert alert-info">
                       <button type="button" class="close" data-dismiss="alert">×</button>
                       <h3>欢迎管理员：<font color="red" size="6px">&nbsp;&nbsp;${myuser.username}&nbsp;&nbsp;</font> </h3>
                       <h4>现在时间是<font color="red" size="4px">&nbsp;&nbsp;${datetime}&nbsp;&nbsp;</font>,安图森酒店欢迎您~！</h4>
                   </div>
               </div>
               <div class="row" align="center">
                   <div class="bootstrap-admin-panel-content">
                       <h4 class="buttons-title">酒店管理</h4>
                       <p>
                           <button type="button" class="btn btn-sm btn-default" onclick="toinfo()">酒店信息</button>
                           <button type="button" class="btn btn-sm btn-warning" onclick="tomoney()">营业额查询</button>
                           <button type="button" class="btn btn-sm btn-info" onclick="tovip()">查看会员</button>
                       </p>
                       <h4 class="buttons-title">新增操作</h4>
                       <p>
                           <button type="button" class="btn btn-sm btn-info" onclick="toaddvip()">增加会员</button>
                           <button type="button" class="btn btn-sm btn-success" onclick="toaddroom()">增加房间</button>
                           <button type="button" class="btn btn-sm btn-danger" onclick="togaimima()">修改密码</button>
                       </p>
                       <h4 class="buttons-title">快捷操作</h4>
                       <p>
                           <button type="button" class="btn btn-sm btn-primary" onclick="toruzhu()">办理入住</button>
                           <button type="button" class="btn btn-sm btn-warning" onclick="toord()">生成订单</button>
                           <button type="button" class="btn btn-sm btn-danger" onclick="tolidian()">旅客离店</button>
                       </p>
                       <h4 class="buttons-title">进入首页</h4>
                       <p class="buttons-group">
                           <button type="button" class="btn btn-sm btn-success" onclick="toindex()">去首页</button>
                           <button type="button" class="btn btn-sm btn-warning" onclick="toorders()">历史订单查询</button>
                       </p>
                   </div>
               </div>
           </div>
       </div>
    </div>

    <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script type="text/javascript" src="http://code.jquery.com/jquery-2.0.3.min.js"></script>
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script type="text/javascript" src="<%=request.getContextPath()%>/js/bootstrap.min.js"></script>
    <script type="text/javascript" src="<%=request.getContextPath()%>/js/twitter-bootstrap-hover-dropdown.min.js"></script>
    <script type="text/javascript" src="<%=request.getContextPath()%>/vendors/easypiechart/jquery.easy-pie-chart.js"></script>
    </body>
</html>