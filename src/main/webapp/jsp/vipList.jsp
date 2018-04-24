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
    <title>会员管理</title>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <link rel="stylesheet" href="https://cdn.bootcss.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <script type="text/javascript"  src="https://code.jquery.com/jquery-3.3.1.min.js"/>
    <%--<script src="https://cdn.bootcss.com/jquery/2.1.1/jquery.min.js"></script>--%>
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
            alert("你确定要退出登陆吗？");
            <%
                session.invalidate(); //运用invalidate()比较好，退出时使session失效
            %>
            location.replace("<%=request.getContextPath()%>/login/loginOut"); //loginOut即是你所要转的退出登录的地址
        }
        function c(){
            alert('单击了我');
            location.replace("<%=request.getContextPath()%>/vip/addVip");
        }
        function updateVip(param) {
            alert(param);
//            var r=confirm("是否删除？")
//            if (r==true){
//                alert("删除了");
//            }
            parent.location.href="<%=request.getContextPath()%>/vip/doUpdate?id="+param;
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
                            <li><a href="<%=request.getContextPath()%>/vip/vipList">会员管理</a></li>
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
                        <div class="text-muted bootstrap-admin-box-title">Basic Table</div>
                    </div>
                    <div class="row">
                        <form class="navbar-form navbar-left" role="search" method="post" action="/vip/vips">
                        <div class="form-group">
                            <label class="col-lg-2 control-label" for="select01">会员类型</label>
                            <div class="col-lg-2">
                                <select id="select01" name="vipType" class="chzn-select" style="width: 150px">
                                    <option value="0">请选择</option>
                                    <option value="1">普通VIP</option>
                                    <option value="2">黄金VIP</option>
                                </select>
                            </div>
                            <label class="col-lg-2 control-label" for="select02">消费能力</label>
                            <div class="col-lg-2">
                                <select id="select02" name="spendingPower" class="chzn-select" style="width: 150px">
                                    <%-- 消费能力 --%>
                                    <option value="0">请选择</option>
                                    <option value="100">小于等于100</option>
                                    <option value="200">大于100小于等于200</option>
                                    <option value="500">大于200小于等于500</option>
                                    <option value="1000">大于500小于等于1000</option>
                                    <option value="10000">大于1000</option>
                                </select>
                            </div>
                            <label class="col-lg-1 control-label" >会员名</label>
                            <div class="col-lg-2">
                                <input class="form-control" name="vipName" placeholder="请输入会员姓名" type="text">
                            </div>
                            <label class="col-lg-2 control-label" for="select04">会员核销</label>
                            <div class="col-lg-2">
                                <select id="select04" name="valid" class="chzn-select" style="width: 150px">
                                    <%-- 消费能力 --%>
                                    <option value="0">请选择</option>
                                    <option value="1">未核销</option>
                                    <option value="2">已核销</option>
                                </select>
                            </div>
                            <label class="col-lg-2 control-label" for="select05">会员状态</label>
                            <div class="col-lg-2">
                                <select id="select05" name="status" class="chzn-select" style="width: 150px">
                                    <%-- 会员状态 --%>
                                    <option value="0">请选择</option>
                                    <option value="1">状态1</option>
                                    <option value="2">状态2</option>
                                    <option value="3">状态3</option>
                                </select>
                            </div>
                            <div class="col-lg-2">
                                <button type="submit" class="btn btn-default">查找</button>
                            </div>
                        </div>

                        </form>
                    </div>
                    <div class="row">
                        <div class="col-md-4 col-md-offset-8">
                            <button class="btn btn-primary" >新增</button>
                        </div>
                    </div>
                    <div class="bootstrap-admin-panel-content" >
                        <table class="table" style="overflow:scroll">
                            <thead>
                            <tr>
                                <th>编号</th>
                                <th>会员姓名</th>
                                <th>会员类型</th>
                                <th>生日</th>
                                <th>爱好</th>
                                <th>入住次数</th>
                                <th>状态</th>
                                <th>身份证</th>
                                <th>备注</th>
                                <th>是否已核销</th>
                                <th>会员创建时间</th>
                                <th>最近一次入住时间</th>
                                <th>操作</th>
                            </tr>
                            </thead>
                            <c:forEach items="${pageInfo}" var="s">
                                <tr>
                                    <td>${s.id}</td>
                                    <td>${s.vipName}</td>
                                    <td>${s.vipType==1?"普通VIP":"黄金VIP"}</td>a
                                    <td>${s.uuid.substring(8,14)}</td>
                                    <td>${s.vipHobby}</td>
                                    <td>${s.times}次</td>
                                    <td>
                                        <span style="color: green">${s.status=="0"?"状态0":" "}</span>
                                        <span style="color: #df8505">${s.status=="1"?"状态1":" "}</span>
                                        <span style="color: red">${s.status=="2"?"状态2":" "}</span>
                                    </td>
                                    <td>${s.uuid}</td>
                                    <td>${s.remark}</td>
                                    <td>${s.valid==1?"未核销":"已核销"}</td>
                                    <td>${s.vipCreateTime.substring(0,10)}</td>
                                    <td>${s.vipLastTime.substring(0,10)}</td>
                                    <td>
                                        <form method="post" action="/vip/doDelete" >
                                            <input type="hidden" value="${s.id}"id="deleteid">
                                        </form>

                                        <button class="btn btn-primary btn-sm" id="updateVip" onclick="updateVip(${s.id})">
                                            <span class="glyphicon glyphicon-pencil" aria-hidden="true"></span>
                                            编辑
                                        </button>
                                        <button class="btn btn-danger btn-sm" id="delete" >
                                            <span class="glyphicon glyphicon-trash" aria-hidden="true" ></span>
                                            删除
                                        </button>
                                    </td>
                                </tr>
                            </c:forEach>
                        </table>
                        <div class="row">
                            <div class="col-md-6">
                                <li>当前第${pageIndex.toString()}页，总共${pages.toString()}页，总共有${allCounts.toString()}个会员</li>
                            </div>
                            <div class="col-md-6">
                                <div class="pagination-container pagination-container-first">
                                    <ul class="pagination">
                                        <c:if test="${allCounts>0}">
                                            <li><a href="<%=request.getContextPath()%>/vip/vipList?pageIndex=1">首页</a></li>
                                        </c:if>
                                        <c:if test="${pageIndex>1}">
                                            <li><a href="<%=request.getContextPath()%>/vip/vipList?pageIndex=${pageIndex-1}">上一页</a></li>
                                        </c:if>
                                        <c:forEach begin="1" end="${Pages}" varStatus="loop">
                                            <c:set var="active" value="${loop.index==pageIndex?'active':''}"/>
                                            <li class="${active}"><a
                                                    href="<%=request.getContextPath()%>/vip/vipList?pageIndex=${loop.index}"> ${loop.index}</a>
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
                                                <a href="<%=request.getContextPath()%>/vip/vipList?pageIndex=${pageIndex+1}">下一页</a>
                                            </li>
                                        </c:if>
                                        <c:if test="${allCounts>0}">
                                            <li><a href="<%=request.getContextPath()%>/vip/vipList?pageIndex=${pages}">末页</a></li>
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

    <div class="row">
        <hr>
        <footer role="contentinfo">
            <p>&copy; 2013 <a href="#" target="_blank">Boot3Admin</a>-More Templates <a href="http://www.cssmoban.com/" target="_blank" title="模板之家">模板之家</a> - Collect from <a href="http://www.cssmoban.com/" title="网页模板" target="_blank">网页模板</a></p>
        </footer>
    </div>
</div>

<script>
    $(document).ready(function(){
        $("#delete").bind("click",function(){
            var r=confirm("是否删除？")
            if (r==true){
                var param = $("#deleteid").val();
                $.ajax({
                    type: "post",
                    url: "<%=request.getContextPath()%>/vip/doDelete",
                    dataType: 'json',
                    data: {id:param},
                    success: function (data) {
                        if(data == -1)
                            alert("该用户不存在");
                        else
                            $(location).attr('href','http://www.baidu.com');
                    },
                    error:function(){
                        alert("删除成功!");
                    }
                });
            }
        });
        <%--$("#updateVip").bind("click",function () {--%>
            <%--var param2 = $("#updateid").val();--%>
            <%--$.ajax({--%>
                <%--type: "post",--%>
                <%--url: "<%=request.getContextPath()%>/vip/doUpdate",--%>
                <%--dataType: 'json',--%>
                <%--data: {id:param2},--%>
                <%--success: function (data) {--%>
                    <%--if(data == -1)--%>
                        <%--alert("该用户不存在");--%>
                    <%--else--%>
                        <%--$(location).attr('href','http://www.baidu.com');--%>
                <%--},--%>
                <%--error:function(){--%>
                    <%--alert("更新成功!");--%>
                <%--}--%>
            <%--});--%>
        <%--})--%>
    });
</script>
<script type="text/javascript" src="<%=request.getContextPath()%>/js/bootstrap.min.js"></script>
<script type="text/javascript" src="<%=request.getContextPath()%>/js/twitter-bootstrap-hover-dropdown.min.js"></script>
<script type="text/javascript" src="<%=request.getContextPath()%>/vendors/datatables/js/jquery.dataTables.min.js"></script>
<script type="text/javascript" src="<%=request.getContextPath()%>/js/DT_bootstrap.js"></script>
</body>
</html>
