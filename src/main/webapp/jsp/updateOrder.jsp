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
    <title>退房/结账</title>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <link rel="stylesheet" href="https://cdn.bootcss.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <script src="https://cdn.bootcss.com/jquery/2.1.1/jquery.min.js"></script>
    <script src="https://cdn.bootcss.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <!-- Bootstrap -->
    <link href="<%=request.getContextPath()%>/css/bootstrap.min.css" rel="stylesheet" media="screen">
    <link href="<%=request.getContextPath()%>/css/bootstrap-theme.min.css" rel="stylesheet" media="screen">

    <!-- Bootstrap Admin Theme -->
    <link href="<%=request.getContextPath()%>/css/bootstrap-admin-theme.css" rel="stylesheet" media="screen">

    <!-- Datatables -->
    <link href="<%=request.getContextPath()%>/css/DT_bootstrap.css" rel="stylesheet" media="screen">

    <!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!--[if lt IE 9]>
    <script type="text/javascript" src="<%=request.getContextPath()%>/js/html5shiv.js"></script>
    <script type="text/javascript" src="<%=request.getContextPath()%>/js/respond.min.js"></script>
    <![endif]-->
    <script>
        function loginOut() {
            layer.alert("你确定要退出登陆吗？");
            <%
                session.invalidate(); //运用invalidate()比较好，退出时使session失效
            %>
            location.replace("<%=request.getContextPath()%>/login/loginOut"); //loginOut即是你所要转的退出登录的地址
        }
    </script>
    <script>
        jQuery(document).ready(function() {
            $("#clear").click(function () {
                $("#select01").val("0");
                $("#select02").val("0");
                $("#select03").val("0");
                $("#tv").attr("checked",false);
                $("#window").attr("checked",false);
                $("#breakfirst").attr("checked",false);
                $("#bathroom").attr("checked",false);
                $("#blower").attr("checked",false);
            })

        function rebateBillConfirmService(rebateWay,rebateBillId) {
            //判断是否是京准通的返利单
            if(rebateWay==2){
                //判断是否开通了京准通。
                jQuery.ajax({
                    type: "post",
                    url: "/rebate/rebateService_verifyVenderOpenJZTService.action",
                    dataType: "json",
                    success: function (result) {
                        if(result.result){
                            layer.confirm(
                                "您确认返利单："+rebateBillId,{
                                    title: "信息提示"
                                }, function(index){
                                    //点击确认后的操作
                                    rebateBillConfirm(rebateBillId);
                                    layer.close(index);
                                });

                        }else {
                            layer.confirm(
                                "您的激励方式为:京准通,本店铺尚未开通京准通服务,请尽快开通。京准通服务开通地址:<a href='https://jzt.jd.com' target='_blank'>https://jzt.jd.com</a>",{
                                    title: "提示信息"
                                }, function(index){
                                    window.open(" https://jzt.jd.com");
                                    layer.close(index);
                                });
                        }
                    }
                })
            }else{
                layer.confirm(
                    "您确认返利单："+rebateBillId,{
                        title: "信息提示"
                    }, function(index){
                        //点击确认后的操作
                        rebateBillConfirm(rebateBillId);
                        layer.close(index);
                    });
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
                            <li><a href="<%=request.getContextPath()%>/room/roomList">入住</a></li>
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
                        <div class="text-muted bootstrap-admin-box-title">退房/结账操作（只会查到订单状态为正在进行的状态的订单）</div>
                    </div>
                    <legend>退房/结账</legend>
                    <div class="bootstrap-admin-panel-content">
                        <table class="table">
                            <thead>
                            <tr>
                                <th>订单号</th>
                                <th>会员名</th>
                                <th>房间名</th>
                                <th>金额</th>
                                <th>订单开始时间</th>
                                <th>操作</th>
                            </tr>
                            </thead>
                            <tr>
                                <th>7364682016</th>
                                <th>汤松</th>
                                <th>303</th>
                                <th>100</th>
                                <th>2018/04/28</th>
                                <th>
                                    <button class="btn btn-primary btn-sm">
                                        <span class="glyphicon glyphicon-pencil" aria-hidden="true"></span>
                                        退房
                                    </button>
                                    <button class="btn btn-danger btn-sm">
                                        <span class="glyphicon glyphicon-trash" aria-hidden="true"></span>
                                        取消订单
                                    </button>
                                </th>
                            </tr>
                            <tr>
                                <th>7364682017</th>
                                <th>刘建新</th>
                                <th>308</th>
                                <th>202</th>
                                <th>2018/04/20</th>
                                <th>
                                    <button class="btn btn-primary btn-sm">
                                        <span class="glyphicon glyphicon-pencil" aria-hidden="true"></span>
                                        退房
                                    </button>
                                    <button class="btn btn-danger btn-sm">
                                        <span class="glyphicon glyphicon-trash" aria-hidden="true"></span>
                                        取消订单
                                    </button>
                                </th>
                            </tr>
                            <tr>
                                <th>7364682018</th>
                                <th>汤磊</th>
                                <th>502</th>
                                <th>190</th>
                                <th>2018/04/16</th>
                                <th>
                                    <button class="btn btn-primary btn-sm">
                                        <span class="glyphicon glyphicon-pencil" aria-hidden="true"></span>
                                        退房
                                    </button>
                                    <button class="btn btn-danger btn-sm">
                                        <span class="glyphicon glyphicon-trash" aria-hidden="true"></span>
                                        取消订单
                                    </button>
                                </th>
                            </tr>
                            <tr>
                                <th>7364682019</th>
                                <th>王志伟</th>
                                <th>501</th>
                                <th>123</th>
                                <th>2018/04/15</th>
                                <th>
                                    <button class="btn btn-primary btn-sm">
                                        <span class="glyphicon glyphicon-pencil" aria-hidden="true"></span>
                                        退房
                                    </button>
                                    <button class="btn btn-danger btn-sm">
                                        <span class="glyphicon glyphicon-trash" aria-hidden="true"></span>
                                        取消订单
                                    </button>
                                </th>
                            </tr>
                            <tr>
                                <th>7364682020</th>
                                <th>万小伟</th>
                                <th>301</th>
                                <th>180</th>
                                <th>2018/04/12</th>
                                <th>
                                    <button class="btn btn-primary btn-sm">
                                        <span class="glyphicon glyphicon-pencil" aria-hidden="true"></span>
                                        退房
                                    </button>
                                    <button class="btn btn-danger btn-sm">
                                        <span class="glyphicon glyphicon-trash" aria-hidden="true"></span>
                                        取消订单
                                    </button>
                                </th>
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

    <div class="row">
        <hr>
        <footer role="contentinfo">
            <p>&copy; 2013 <a href="#" target="_blank">Boot3Admin</a>-More Templates <a href="http://www.cssmoban.com/" target="_blank" title="模板之家">模板之家</a> - Collect from <a href="http://www.cssmoban.com/" title="网页模板" target="_blank">网页模板</a></p>
        </footer>
    </div>
</div>

<script type="text/javascript" src="<%=request.getContextPath()%>/http://code.jquery.com/jquery-2.0.3.min.js"></script>
<script type="text/javascript" src="<%=request.getContextPath()%>/js/bootstrap.min.js"></script>
<script type="text/javascript" src="<%=request.getContextPath()%>/js/twitter-bootstrap-hover-dropdown.min.js"></script>
<script type="text/javascript" src="<%=request.getContextPath()%>/vendors/datatables/js/jquery.dataTables.min.js"></script>
<script type="text/javascript" src="<%=request.getContextPath()%>/js/DT_bootstrap.js"></script>
</body>
</html>
