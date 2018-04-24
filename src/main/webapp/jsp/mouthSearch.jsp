<%--<%@ page contentType="text/html;charset=UTF-8" language="java" %>--%>
<%-- 拦截器--%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" import="java.util.*" isELIgnored="false"%>
<%@ page import="com.hotel.bean.User" %>

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
                                <li><a href="<%=request.getContextPath()%>/room/roomList">入住</a></li>
                                <li><a href="<%=request.getContextPath()%>/room/roomList">结账</a></li>
                                <li class="divider"></li>
                                <li><a href="<%=request.getContextPath()%>/room/roomList">会员管理</a></li>
                                <li><a href="<%=request.getContextPath()%>/room/roomList">客房管理</a></li>
                            </ul>
                        </li>
                    </ul>
                    <%--导航的搜索--%>
                    <%--<form class="navbar-form navbar-left" role="search">--%>
                    <%--<div class="form-group">--%>
                    <%--<input type="text" class="form-control" placeholder="请输入内容">--%>
                    <%--</div>--%>
                    <%--<button type="submit" class="btn btn-default">搜索</button>--%>
                    <%--</form>--%>
                    <ul class="nav navbar-nav navbar-right">
                        <li><a href="http://www.baidu.com">链接</a></li>
                        <li class="dropdown">
                            <a href="#" class="dropdown-toggle" data-toggle="dropdown">管理员<b class="caret"></b></a>
                            <ul class="dropdown-menu">
                                <li><a href="<%=request.getContextPath()%>/hello/login">设置</a></li>
                                <li><a href="<%=request.getContextPath()%>/hello/login">个人资料</a></li>
                                <li><a href="<%=request.getContextPath()%>/hello/login">账户中心</a></li>
                                <li class="divider"></li>
                                <li><a href="javascript:loginOut();">退出登录</a></li>
                            </ul>
                        </li>
                    </ul>
                </div><!-- /.navbar-collapse -->
            </div>
        </div>
    </nav>


        <%--轮播图--%>
    <%--<div class="container">
        <div id="myCarousel" class="carousel slide" >
            <!-- 轮播（Carousel）指标 -->
            <ol class="carousel-indicators" >
                <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
                <li data-target="#myCarousel" data-slide-to="1"></li>
                <li data-target="#myCarousel" data-slide-to="2"></li>
            </ol>
            <!-- 轮播（Carousel）项目 -->
            <div class="carousel-inner">
                <div class="item active">
                    <img src="/wp-content/uploads/2014/07/slide1.png" alt="First slide">
                </div>
                <div class="item">
                    <img src="/wp-content/uploads/2014/07/slide2.png" alt="Second slide">
                </div>
                <div class="item">
                    <img src="/wp-content/uploads/2014/07/slide3.png" alt="Third slide">
                </div>
            </div>
            <!-- 轮播（Carousel）导航 -->
            <a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">
                <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
                <span class="sr-only">Previous</span>
            </a>
            <a class="right carousel-control" href="#myCarousel" role="button" data-slide="next">
                <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
                <span class="sr-only">Next</span>
            </a>
        </div>
    </div>
    <br>--%>
        <%--轮播图--%>
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
                       <a href="about.jsp"><i class="glyphicon glyphicon-chevron-right"></i> 关于我们</a>
                   </li>
                   <li >
                       <a href="#"><i class="glyphicon glyphicon-chevron-right"></i> 节假日</a><!-- calendar.html -->
                   </li>
                   <li >
                       <a href="#"><i class="glyphicon glyphicon-chevron-right"></i>会员查询</a><!-- stats.html -->
                   </li>
                   <li>
                       <a href="forms.jsp"><i class="glyphicon glyphicon-chevron-right"></i> 客房查询</a>
                   </li>
                   <li>
                       <a href="#"><span class="badge pull-right">31</span> 订单</a>
                   </li>
                   <li>
                       <a href="#"><span class="badge pull-right">812</span> 客户</a>
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
                       <div class="alert alert-success bootstrap-admin-alert">
                           <button type="button" class="close" data-dismiss="alert">×</button>
                           <h5>该月营业额已达：￥</h5>
                       </div>
                       <form class="navbar-form" role="search" method="post" action="/order/queryMoneyByorder">
                           <div class="row">
                               <label class="col-lg-2 control-label" >日期</label>
                               <div class="col-lg-2">
                                   <input class="form-control" name="vipName" placeholder="请输入查询日期" type="text">
                               </div>
                               <div>
                                   <button class="btn btn-primary" >查找</button>
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
                               <tr>
                                   <th>1</th>
                                   <th>2018/04/01</th>
                                   <th>4050</th>
                                   <th style="color: red">30</th>
                               </tr>
                               <tr>
                                   <th>2</th>
                                   <th>2018/04/02</th>
                                   <th>2650</th>
                                   <th style="color: red">18</th>
                               </tr>
                               <tr>
                                   <th>3</th>
                                   <th>2018/04/03</th>
                                   <th>3020</th>
                                   <th style="color: red">22</th>
                               </tr>
                               <tr>
                                   <th>4</th>
                                   <th>2018/04/04</th>
                                   <th>5030</th>
                                   <th style="color: red">35</th>
                               </tr>
                               <tr>
                                   <th>5</th>
                                   <th>2018/04/05</th>
                                   <th>6780</th>
                                   <th style="color: red">52</th>
                               </tr>
                               <%--<c:forEach items="${pageInfo}" var="s">--%>
                                   <%--<tr>--%>
                                       <%--<td>${s.roomId}</td>--%>
                                       <%--<td>${s.roomName}</td>--%>
                                       <%--<td>${s.roomType=="1"?"普通房 ":"特价房"}</td>--%>
                                       <%--<td>${s.roomFloat}cm²</td>--%>
                                       <%--<td>${s.price}元</td>--%>
                                       <%--<td>${s.isWindow=="true"?"有窗 ":" "}${s.isTv=="true"?"有电视 ":" "}${s.isBreakfirst=="true"?"含早 ":" "}${s.isBathroom=="true"?"独卫 ":" "}${s.isBlower=="true"?"有吹风机 ":" "}</td>--%>
                                       <%--<td>--%>
                                           <%--<span style="color: green">${s.status=="0"?"空闲":" "}</span>--%>
                                           <%--<span style="color: #df8505">${s.status=="1"?"已预订":" "}</span>--%>
                                           <%--<span style="color: red">${s.status=="2"?"有人":" "}</span>--%>
                                       <%--</td>--%>
                                       <%--<td>--%>
                                           <%--<button class="btn btn-primary btn-sm">--%>
                                               <%--<span class="glyphicon glyphicon-pencil" aria-hidden="true"></span>--%>
                                               <%--入住--%>
                                           <%--</button>--%>
                                           <%--<button class="btn btn-primary btn-sm">--%>
                                               <%--<span class="glyphicon glyphicon-pencil" aria-hidden="true"></span>--%>
                                               <%--编辑--%>
                                           <%--</button>--%>
                                           <%--<button class="btn btn-danger btn-sm">--%>
                                               <%--<span class="glyphicon glyphicon-trash" aria-hidden="true"></span>--%>
                                               <%--删除--%>
                                           <%--</button>--%>
                                       <%--</td>--%>
                                   <%--</tr>--%>
                               <%--</c:forEach>--%>

                           </table>
                           <div class="pagination-container">
                               <ul class="pagination">
                                   <li><a href="#">«</a></li>
                                   <li class="active">
                                       <a href="#">1</a>
                                   </li>
                                   <li><a href="#">2</a></li>
                                   <li><a href="#">3</a></li>
                                   <li><a href="#">»</a></li>
                               </ul>
                           </div>
                           <%--<div class="row">--%>
                               <%--<div class="col-md-6">--%>
                                   <%--<li>当前第${pageIndex.toString()}页，总共${pages.toString()}页，总共有${allCounts.toString()}间房</li>--%>
                               <%--</div>--%>
                               <%--<div class="col-md-6">--%>
                                   <%--<div class="pagination-container pagination-container-first">--%>
                                       <%--<ul class="pagination">--%>
                                           <%--<c:if test="${allCounts>0}">--%>
                                               <%--<li><a href="<%=request.getContextPath()%>/room/rooms?pageIndex=1">首页</a></li>--%>
                                           <%--</c:if>--%>
                                           <%--<c:if test="${pageIndex>1}">--%>
                                               <%--<li><a href="<%=request.getContextPath()%>/room/rooms?pageIndex=${pageIndex-1}">上一页</a></li>--%>
                                           <%--</c:if>--%>
                                           <%--<c:forEach begin="1" end="${Pages}" varStatus="loop">--%>
                                               <%--<c:set var="active" value="${loop.index==pageIndex?'active':''}"/>--%>
                                               <%--<li class="${active}"><a--%>
                                                       <%--href="<%=request.getContextPath()%>/room/rooms?pageIndex=${loop.index}"> ${loop.index}</a>--%>
                                               <%--</li>--%>
                                           <%--</c:forEach>--%>
                                           <%--&lt;%&ndash;<c:forEach items="${pageInfo.navigatepageNums}" var="num">&ndash;%&gt;--%>
                                           <%--&lt;%&ndash;<c:if test="${num == pageInfo.pageNum}">&ndash;%&gt;--%>
                                           <%--&lt;%&ndash;<li class="active"><a href="#">${num}</a></li>&ndash;%&gt;--%>
                                           <%--&lt;%&ndash;</c:if>&ndash;%&gt;--%>
                                           <%--&lt;%&ndash;<c:if test="${num != pageInfo.pageNum}">&ndash;%&gt;--%>
                                           <%--&lt;%&ndash;&lt;%&ndash;这里以后需要优化&ndash;%&gt;&ndash;%&gt;--%>
                                           <%--&lt;%&ndash;<li><a href="<%=request.getContextPath()%>/room/roomList?pn=${num}">${num}</a></li>&ndash;%&gt;--%>
                                           <%--&lt;%&ndash;</c:if>&ndash;%&gt;--%>
                                           <%--&lt;%&ndash;</c:forEach>&ndash;%&gt;--%>

                                           <%--<c:if test="${pageIndex<pages}">--%>
                                               <%--<li>--%>
                                                   <%--<a href="<%=request.getContextPath()%>/room/rooms?pageIndex=${pageIndex+1}">下一页</a>--%>
                                               <%--</li>--%>
                                           <%--</c:if>--%>
                                           <%--<c:if test="${allCounts>0}">--%>
                                               <%--<li><a href="<%=request.getContextPath()%>/room/rooms?pageIndex=${pages}">末页</a></li>--%>
                                           <%--</c:if>--%>
                                       <%--</ul>--%>
                                   <%--</div>--%>
                               <%--</div>--%>
                           <%--</div>--%>
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