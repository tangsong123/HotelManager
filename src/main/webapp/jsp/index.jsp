<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--<%@ page contentType="text/html;charset=UTF-8" language="java" %>--%>
<%-- 拦截器--%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" import="java.util.*" isELIgnored="false"%>
<%@ page import="com.hotel.bean.User" %>

<html>
    <head>
        <title>首页</title>
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
                </div><!-- /.navbar-collapse -->
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
                   <div class="panel panel-default bootstrap-admin-no-table-panel">
                       <c:if test="${result.message!=null}">
                           <div class="row">
                               <div class="alert alert-success bootstrap-admin-alert">
                                   <button type="button" class="close" data-dismiss="alert">×</button>
                                   <h5>${result.message}</h5>
                               </div>
                           </div>
                       </c:if>
                       <div class="panel-heading">
                           <div class="text-muted bootstrap-admin-box-title">统计</div>
                           <div class="pull-right"><span class="badge">&nbsp;</span></div>
                       </div>
                       <div class="bootstrap-admin-panel-content bootstrap-admin-no-table-panel-content collapse in">
                           <div class="col-md-3">
                               <div class="easyPieChart" data-percent="100" style="width: 110px; height: 110px; line-height: 110px;">8间<canvas width="110" height="110"></canvas></div>
                               <div class="chart-bottom-heading"><span class="label label-info">今日剩余房间数</span></div>
                           </div>
                           <div class="col-md-3">
                               <div class="easyPieChart" data-percent="100" style="width: 110px; height: 110px; line-height: 110px;">53个<canvas width="110" height="110"></canvas></div>
                               <div class="chart-bottom-heading"><span class="label label-info">今日新增会员</span></div>
                           </div>
                           <div class="col-md-3">
                               <div class="easyPieChart" data-percent="100" style="width: 110px; height: 110px; line-height: 110px;">36单<canvas width="110" height="110"></canvas></div>
                               <div class="chart-bottom-heading"><span class="label label-info">今日产生订单</span></div>
                           </div>
                           <div class="col-md-3">
                               <div class="easyPieChart" data-percent="100" style="width: 110px; height: 110px; line-height: 110px;">829￥<canvas width="110" height="110"></canvas></div>
                               <div class="chart-bottom-heading"><span class="label label-info">今日营业收入</span></div>
                           </div>
                       </div>
                   </div>
               </div>
               <div class="row">
                   <div class="panel panel-default">
                       <div class="panel-heading">
                           <div class="text-muted bootstrap-admin-box-title">活动页</div>
                           <div class="pull-right"><span class="badge">8</span></div>
                       </div>
                       <div class="bootstrap-admin-panel-content">
                           <div class="row bootstrap-admin-light-padding-bottom">
                               <div class="col-md-4">
                                   <a href="http://www.mafengwo.cn/travel-scenic-spot/mafengwo/10466.html" class="thumbnail">
                                       <img data-src="holder.js/260x180" alt="260x180" style="width: 260px; height: 180px;" src="<%=request.getContextPath()%>/images/inbj01.jpg">
                                   </a>
                               </div>
                               <div class="col-md-4">
                                   <a href="http://www.mafengwo.cn/travel-scenic-spot/mafengwo/10466.html" class="thumbnail">
                                       <img data-src="holder.js/260x180" alt="260x180" style="width: 260px; height: 180px;" src="<%=request.getContextPath()%>/images/inbj02.jpg">
                                   </a>
                               </div>
                               <div class="col-md-4">
                                   <a href="http://www.mafengwo.cn/travel-scenic-spot/mafengwo/10466.html" class="thumbnail">
                                       <img data-src="holder.js/260x180" alt="260x180" style="width: 260px; height: 180px;" src="<%=request.getContextPath()%>/images/inbj03.jpg">
                                   </a>
                               </div>
                           </div>
                           <div class="row bootstrap-admin-light-padding-bottom">
                               <div class="col-md-4">
                                   <a href="http://www.mafengwo.cn/travel-scenic-spot/mafengwo/10466.html" class="thumbnail">
                                       <img data-src="holder.js/260x180" alt="260x180" style="width: 260px; height: 180px;" src="<%=request.getContextPath()%>/images/inbj04.jpg">
                                   </a>
                               </div>
                               <div class="col-md-4">
                                   <a href="http://www.mafengwo.cn/travel-scenic-spot/mafengwo/10466.html" class="thumbnail">
                                       <img data-src="holder.js/260x180" alt="260x180" style="width: 260px; height: 180px;" src="<%=request.getContextPath()%>/images/inbj05.jpg">
                                   </a>
                               </div>
                               <div class="col-md-4">
                                   <a href="http://www.mafengwo.cn/travel-scenic-spot/mafengwo/10466.html" class="thumbnail">
                                       <img data-src="holder.js/260x180" alt="260x180" style="width: 260px; height: 180px;" src="<%=request.getContextPath()%>/images/inbj06.jpg">
                                   </a>
                               </div>
                           </div>
                           <div class="row">
                               <div class="col-md-4">
                                   <a href="http://www.mafengwo.cn/travel-scenic-spot/mafengwo/10466.html" class="thumbnail">
                                       <img data-src="holder.js/260x180" alt="260x180" style="width: 260px; height: 180px;" src="<%=request.getContextPath()%>/images/inbj07.jpg">
                                   </a>
                               </div>
                               <div class="col-md-4">
                                   <a href="http://www.mafengwo.cn/travel-scenic-spot/mafengwo/10466.html" class="thumbnail">
                                       <img data-src="holder.js/260x180" alt="260x180" style="width: 260px; height: 180px;" src="<%=request.getContextPath()%>/images/inbj08.jpg">
                                   </a>
                               </div>
                               <div class="col-md-4">
                                   <a href="http://www.mafengwo.cn/travel-scenic-spot/mafengwo/10466.html" class="thumbnail">
                                       <img data-src="holder.js/260x180" alt="260x180" style="width: 260px; height: 180px;" src="<%=request.getContextPath()%>/images/inbj09.jpg">
                                   </a>
                               </div>
                           </div>
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

        <script type="text/javascript">
            $(function() {
                // Easy pie charts
                $('.easyPieChart').easyPieChart({animate: 1000});
            });
        </script>
    </body>
</html>