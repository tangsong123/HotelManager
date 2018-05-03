<%@ taglib prefix="e" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %>
<%--
  Created by IntelliJ IDEA.
  User: tangsong1
  Date: 2018/4/11
  Time: 20:29
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" import="java.util.*" isELIgnored="false"%>
<html>
    <head>
        <title>营业额查询</title>
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
            function  c() {
                return null;
            }
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
                    <a class="navbar-brand" href="<%=request.getContextPath()%>/hello/login">酒店后台</a>
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
                </div>
            </div>
        </div>
    </nav>
    <div class="container">
       <!-- left, vertical navbar & content -->
       <div class="row">
           <!-- left, vertical navbar -->
           <div class="col-md-2 bootstrap-admin-col-left">
               <ul class="nav navbar-collapse collapse bootstrap-admin-navbar-side">
                   <li class="active">
                       <a href="index.jsp"><i class="glyphicon glyphicon-chevron-right"></i> 首页</a>
                   </li>
                   <li >
                       <a href="<%=request.getContextPath()%>/hello/about"><i class="glyphicon glyphicon-chevron-right"></i> 关于我们</a>
                   </li>
                   <li >
                       <a href="<%=request.getContextPath()%>/hello/rili"><i class="glyphicon glyphicon-chevron-right"></i> 节假日</a><!-- calendar.html -->
                   </li>
                   <li >
                       <a href="<%=request.getContextPath()%>/vip/vipList"><i class="glyphicon glyphicon-chevron-right"></i>会员查询</a><!-- stats.html -->
                   </li>
                   <li>
                       <a href="<%=request.getContextPath()%>/room/rooms"><i class="glyphicon glyphicon-chevron-right"></i> 客房查询</a>
                   </li>
                   <li >
                       <a href="<%=request.getContextPath()%>/order/orders"><span class="badge pull-right">31</span> 今日订单</a>
                   </li>
                   <li class="disabled">
                       <a href="#"><span class="badge pull-right">812</span>所有客户</a>
                   </li>
               </ul>
           </div>

           <!-- content -->
           <div class="col-md-10">
               <div class="row">
                   <div class="panel panel-default">
                       <div class="panel-heading">
                           <div class="text-muted bootstrap-admin-box-title">营业额查询</div>
                       </div>
                       <c:if test="${moneys!=0}">
                           <div class="alert alert-success bootstrap-admin-alert">
                               <button type="button" class="close" data-dismiss="alert">×</button>
                               <h5>该月营业额已达：${moneys}元</h5>
                           </div>
                       </c:if>
                       <form class="navbar-form" role="search" method="post" action="/order/queryOrder">
                           <div class="row">
                               <div class="col-md-4 col-md-offset-8">
                                   <input class="form-control" name="year" placeholder="请选择年份" value="${dataTime.year}" type="text" >
                                   <input class="form-control" name="mouth" placeholder="请选择月份" value="${dataTime.mouth}" type="text">
                                   <input class="form-control" name="day" placeholder="请选择天数" type="text">
                                   <button class="btn btn-primary" >查询</button>
                               </div>
                           </div>
                       </form>
                       <div class="bootstrap-admin-panel-content">
                           <table class="table">
                               <thead>
                               <tr>
                                   <th>序号</th>
                                   <th>时间</th>
                                   <th>营业额</th>
                                   <th>订单数量</th>
                               </tr>
                               </thead>
                               <c:forEach items="${pageInfo}" var="s">
                                   <c:if test="${s.money!=0}">
                                       <tr>
                                           <td>${s.id}</td>
                                           <td>${s.year}-${s.mouth}-${s.day}</td>
                                           <td>${s.money}元</td>
                                           <td style="color: red">${s.count}单</td>
                                       </tr>
                                   </c:if>
                               </c:forEach>
                           </table>
                           <c:if test="${result.message!=null}">
                               <div class="row">
                                   <div class="alert alert-success bootstrap-admin-alert">
                                       <button type="button" class="close" data-dismiss="alert">×</button>
                                       <h5>${result.message}</h5>
                                   </div>
                               </div>
                           </c:if>
                       </div>
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