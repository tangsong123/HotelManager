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
    <title>客房管理</title>
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
        function d() {
            location.replace("<%=request.getContextPath()%>/room/add");
        }
        function ruzhu(params) {

            self.location.href="<%=request.getContextPath()%>/order/ruzhu?str="+params;
        }
        function clearRoom(a) {
            alert("请立刻让保洁前去打扫！");
            self.location.href="<%=request.getContextPath()%>/room/clearRoom?id="+a;
        }
        function doDelete(param) {
            var i = confirm("确认删除嘛？");
            if(i == true){
                self.location.href="<%=request.getContextPath()%>/room/doDelete?id="+param;
            }
        }
        function loginOut() {
            var s = confirm("你确定要退出登陆吗？");
            if(s == true){
                 location.replace("<%=request.getContextPath()%>/login/loginOut"); //loginOut即是你所要转的退出登录的地址
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
                <div class="panel panel-default">
                    <div class="panel-heading">
                        <div class="text-muted bootstrap-admin-box-title">客房管理</div>
                    </div>
                    <form class="" role="search" method="get" action="/room/queryByCondition">
                        <div class="panel-heading">
                            <div class="form-group">
                                <div class="row">
                                    <label class="col-lg-2 control-label" for="select01" >房间类型</label>
                                    <div class="col-lg-3">
                                        <select id="select01" name="roomType" class="chzn-select"  style="width: 150px">
                                            <option value="0">请选择</option>
                                            <option value="1">特价房</option>
                                            <option value="2">豪华房</option>
                                            <option value="3">主题房</option>
                                            <option value="4">总统房</option>
                                        </select>
                                    </div>
                                    <label class="col-lg-2 control-label" for="select02" >床位数量</label>
                                    <div class="col-lg-3">
                                        <select id="select02" name="roomBedNum" class="chzn-select" style="width: 150px">
                                            <%--1--单人床 2--双人床 3--三人床 4--豪华大床--%>
                                            <option value="0">请选择</option>
                                            <option value="1">单人/大床/特价</option>
                                            <option value="2">双人/总统套房</option>
                                            <option value="3">三人/家庭房</option>
                                            <option value="5">海景/5床</option>
                                            <option value="8">麻将/8床</option>
                                        </select>
                                    </div>
                                </div>
                                <div class="row">
                                    <label class="col-lg-2 control-label" for="select03" >状态</label>
                                    <div class="col-lg-3">
                                    <select id="select03" name="status" class="chzn-select" style="width: 150px">
                                            <option value="0">请选择</option>
                                            <option value="1">空闲</option>
                                            <option value="2">已预订</option>
                                            <option value="3">有人</option>
                                            <option value="4">请立即打扫</option>
                                    </select>
                                    </div>
                                <%--房间设施--%>
                                    <label class="col-lg-1 control-label" >设施</label>
                                    <label class="col-lg-1"><input type="checkbox" id="tv" name="isTv" value="true" >电视</label>

                                    <label class="col-lg-1"><input type="checkbox" id="window" name="isWindow" value="true">窗户</label>

                                    <label class="col-lg-1"><input type="checkbox" id="breakfirst" name="isBreakfirst" value="true">早餐</label>

                                    <label class="col-lg-1"><input type="checkbox" id="bathroom" name="isBathroom" value="true">独卫</label>

                                    <label class="col-lg-2"><input type="checkbox" id="blower" name="isBlower" value="true">吹风机</label>
                               </div>
                                <div class="col-md-4 col-md-offset-8">
                                </div>
                                <div class="col-md-4 col-md-offset-8">
                                    <button class="btn btn-primary" >查找</button>
                                    <button type="reset" class="btn btn-default">清空</button>
                                    <%--<button class="btn btn-danger" id="clear">清空</button>--%>
                                </div>
                            </div>
                        </div>
                    </form>
                    <div class="row">
                        <div class="col-md-4 col-md-offset-8">
                            <button class="btn btn-primary" onclick="d()">新增房间</button>
                        </div>
                    </div>
                    <div class="bootstrap-admin-panel-content">
                        <table class="table">
                            <thead>
                            <tr>
                                <th>房号</th>
                                <th>房间名字</th>
                                <th>房型</th>
                                <th>面积</th>
                                <th>价格</th>
                                <th>房内设施</th>
                                <th>状态</th>
                                <th>操作</th>
                            </tr>
                            </thead>
                            <c:forEach items="${pageInfo}" var="s">
                                <tr>
                                    <td>${s.roomId}</td>
                                    <td>${s.roomName}</td>
                                    <td>
                                        <c:if test="${s.roomType==1}">
                                            特价房
                                        </c:if>
                                        <c:if test="${s.roomType==2}">
                                            豪华房
                                        </c:if>
                                        <c:if test="${s.roomType==3}">
                                            主题房
                                        </c:if>
                                        <c:if test="${s.roomType==4}">
                                            总统房
                                        </c:if>
                                    </td>
                                    <td>${s.roomFloat}cm²</td>
                                    <td>${s.price}元</td>
                                    <td>${s.isWindow=="true"?"有窗 ":" "}${s.isTv=="true"?"有电视 ":" "}${s.isBreakfirst=="true"?"含早 ":" "}${s.isBathroom=="true"?"独卫 ":" "}${s.isBlower=="true"?"有吹风机 ":" "}</td>
                                    <td>
                                        <span style="color: green">${s.status=="1"?"空闲":" "}</span>
                                        <span style="color: #df8505">${s.status=="2"?"已预订":" "}</span>
                                        <span style="color: red">${s.status=="3"?"有人":" "}</span>
                                        <span style="color: red">${s.status=="4"?"请立即打扫":" "}</span>
                                    </td>
                                    <td>
                                        <c:if test="${s.status==4}">
                                            <button class="btn btn-info btn-sm" id="dasao" onclick="clearRoom(${s.roomId})">
                                                打扫
                                            </button>
                                        </c:if>
                                        <c:if test="${s.status!=3&&s.status!=4}">
                                            <button class="btn btn-primary btn-sm" id="ruzhu" onclick="ruzhu(${s.id})">
                                                入住
                                            </button>
                                        </c:if>
                                        <button class="btn btn-danger btn-sm" id="delete" onclick="doDelete(${s.id})">
                                            删除
                                        </button>
                                    </td>
                                </tr>
                            </c:forEach>
                        </table>
                        <div class="row">
                            <c:if test="${result.message!=null}">
                                <div class="row">
                                    <div class="alert alert-success bootstrap-admin-alert">
                                        <button type="button" class="close" data-dismiss="alert">×</button>
                                        <h5>${result.message}</h5>
                                    </div>
                                </div>
                            </c:if>
                            <div class="col-md-6">
                                <li>当前第${pageIndex.toString()}页，总共${pages.toString()}页，总共有${allCounts.toString()}间房</li>
                            </div>
                            <div class="col-md-6">
                                <div class="pagination-container pagination-container-first">
                                    <ul class="pagination">
                                        <c:if test="${allCounts>0}">
                                            <li><a href="<%=request.getContextPath()%>/room/rooms?pageIndex=1">首页</a></li>
                                        </c:if>
                                        <c:if test="${pageIndex>1}">
                                            <li><a href="<%=request.getContextPath()%>/room/rooms?pageIndex=${pageIndex-1}">上一页</a></li>
                                        </c:if>
                                        <c:forEach begin="1" end="${Pages}" varStatus="loop">
                                            <c:set var="active" value="${loop.index==pageIndex?'active':''}"/>
                                            <li class="${active}"><a
                                                    href="<%=request.getContextPath()%>/room/rooms?pageIndex=${loop.index}"> ${loop.index}</a>
                                            </li>
                                        </c:forEach>
                                        <%--<c:forEach items="${pageInfo.navigatepageNums}" var="num">--%>
                                            <%--<c:if test="${num == pageInfo.pageNum}">--%>
                                                <%--<li class="active"><a href="#">${num}</a></li>--%>
                                            <%--</c:if>--%>
                                            <%--<c:if test="${num != pageInfo.pageNum}">--%>
                                                <%--&lt;%&ndash;这里以后需要优化&ndash;%&gt;--%>
                                                <%--<li><a href="<%=request.getContextPath()%>/room/roomList?pn=${num}">${num}</a></li>--%>
                                            <%--</c:if>--%>
                                        <%--</c:forEach>--%>

                                        <c:if test="${pageIndex<pages}">
                                            <li>
                                                <a href="<%=request.getContextPath()%>/room/rooms?pageIndex=${pageIndex+1}">下一页</a>
                                            </li>
                                        </c:if>
                                        <c:if test="${allCounts>0}">
                                            <li><a href="<%=request.getContextPath()%>/room/rooms?pageIndex=${pages}">末页</a></li>
                                        </c:if>
                                    </ul>
                                </div>
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
</body>
</html>
