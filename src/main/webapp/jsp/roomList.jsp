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
                <li >
                    <a href="<%=request.getContextPath()%>/hello/index"><i class="glyphicon glyphicon-chevron-right"></i> 首页</a>
                </li>
                <li >
                    <a href="<%=request.getContextPath()%>/hello/about"><i class="glyphicon glyphicon-chevron-right"></i> 关于我们</a>
                </li>
                <li >
                    <a href="<%=request.getContextPath()%>/hello/rili"><i class="glyphicon glyphicon-chevron-right"></i> 日历</a><!-- calendar.html -->
                </li>
                <li class="disabled">
                    <a href="#"><i class="glyphicon glyphicon-chevron-right"></i> 统计图表</a><!-- stats.html -->
                </li>
                <li >
                    <a href="forms.jsp"><i class="glyphicon glyphicon-chevron-right"></i> 表单</a>
                </li>
                <li class="active">
                    <a href="tables.jsp"><i class="glyphicon glyphicon-chevron-right"></i> 数据表格</a>
                </li>
                <li >
                    <a href="buttons-and-icons.jsp"><i class="glyphicon glyphicon-chevron-right"></i> 按钮 &amp; 图标</a>
                </li>
                <li>
                    <a href="wysiwyg-editors.jsp"><i class="glyphicon glyphicon-chevron-right"></i> HTML编辑器</a>
                </li>
                <li>
                    <a href="ui-and-interface.jsp"><i class="glyphicon glyphicon-chevron-right"></i> UI界面</a>
                </li>
                <li>
                    <a href="#"><span class="badge pull-right">731</span> 订单</a>
                </li>
                <li>
                    <a href="#"><span class="badge pull-right">812</span> 清单</a>
                </li>
                <li>
                    <a href="#"><span class="badge pull-right">27</span> 客户</a>
                </li>
                <li>
                    <a href="#"><span class="badge pull-right">1,234</span> 用户</a>
                </li>
                <li>
                    <a href="#"><span class="badge pull-right">2,221</span> 消息</a>
                </li>
                <li>
                    <a href="#"><span class="badge pull-right">11</span> 报告</a>
                </li>
                <li>
                    <a href="#"><span class="badge pull-right">83</span> 错误</a>
                </li>
                <li>
                    <a href="#"><span class="badge pull-right">4,231</span> 日志</a>
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
                        <div class="form-group">
                            <label class="col-lg-2 control-label" for="select01">房间类型</label>
                            <div class="col-lg-2">
                                <select id="select01" class="chzn-select" style="width: 150px">
                                    <option>请选择</option>
                                    <option>普通房</option>
                                    <option>特价房</option>
                                </select>
                            </div>
                            <label class="col-lg-2 control-label" for="select02">床位数量</label>
                            <div class="col-lg-2">
                                <select id="select02" class="chzn-select" style="width: 150px">
                                    <%--1--单人床 2--双人床 3--三人床 4--豪华大床--%>
                                    <option>请选择</option>
                                    <option>单人床</option>
                                    <option>双人床</option>
                                    <option>三人床</option>
                                    <option>豪华大床</option>
                                </select>
                            </div>
                            <label class="col-lg-2 control-label" for="select03">床位数量</label>
                            <div class="col-lg-2">
                                <select id="select03" class="chzn-select" style="width: 150px">
                                    <%--1--单人床 2--双人床 3--三人床 4--豪华大床--%>
                                    <option>请选择</option>
                                    <option>单人床</option>
                                    <option>双人床</option>
                                    <option>三人床</option>
                                    <option>豪华大床</option>
                                </select>
                            </div>
                            <%--房间设施--%>
                            <label class="col-lg-2 control-label" for="select03">房内设施</label>
                            <div class="checkbox">
                                <label><input type="checkbox" value="">电视</label>
                            </div>
                            <div class="checkbox">
                                <label><input type="checkbox" value="">窗户</label>
                            </div>
                            <div class="checkbox">
                                <label><input type="checkbox" value="">早餐</label>
                            </div>
                            <div class="checkbox">
                                <label><input type="checkbox" value="">独卫</label>
                            </div>
                            <div class="checkbox">
                                <label><input type="checkbox" value="">吹风机</label>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-4 col-md-offset-8">
                            <button class="btn btn-primary">新增</button>
                            <button class="btn btn-danger">删除</button>
                        </div>
                    </div>
                    <div class="bootstrap-admin-panel-content">
                        <table class="table">
                            <thead>
                            <tr>
                                <th>#</th>
                                <th>First Name</th>
                                <th>Last Name</th>
                                <th>Username</th>
                                <th>操作</th>
                            </tr>
                            </thead>
                            <c:forEach items="${pageInfo.list}" var="s">
                                <tr>
                                    <td>${s.id}</td>
                                    <td>${s.id}</td>
                                    <td>${s.isBathroom=="true"?"是":"没有"}</td>
                                    <td>${s.isWindow=="true"?"是":"没有"}</td>
                                    <td>
                                        <button class="btn btn-primary btn-sm">
                                            <span class="glyphicon glyphicon-pencil" aria-hidden="true"></span>
                                            编辑
                                        </button>
                                        <button class="btn btn-danger btn-sm">
                                            <span class="glyphicon glyphicon-trash" aria-hidden="true"></span>
                                            删除
                                        </button>
                                    </td>
                                </tr>
                            </c:forEach>
                            <%--
                                <ul>
                                    <li><a href='?nowPage=${nowPage-1}'>←上一页</a></li>
                                    <c:forEach varStatus="i" begin="1" end="${sumPage}">
                                        <c:choose>
                                            <c:when test="${nowPage==i.count}">
                                                <li class='disabled'>${i.count}</li>
                                            </c:when>
                                            <c:otherwise>
                                                <li  class='active'><a href='?nowPage=${i.count}'>${i.count}</a></li>
                                            </c:otherwise>
                                        </c:choose>
                                    </c:forEach>
                                    <li><a href='?nowPage=${nowPage+1}'>下一页→</a></li>
                                </ul>
                             --%>
                        </table>
                        <div class="row">
                            <div class="col-md-8">
                                当前第${pageInfo.pageNum}页，总共${pageInfo.pages}页，总共有${pageInfo.total}间房
                            </div>
                            <div class="col-md-4">
                                <div class="pagination-container pagination-container-first">
                                    <ul class="pagination pagination-lg">
                                        <c:if test="${pageInfo.isFirstPage}">
                                            <li><a href="<%=request.getContextPath()%>/room/roomList?pn=${pageInfo.firstPage}">首页</a></li>
                                        </c:if>
                                        <c:if test="${pageInfo.hasPreviousPage}">
                                            <li><a href="<%=request.getContextPath()%>/room/roomList?pn=${num-1}">上一页</a></li>
                                        </c:if>

                                        <c:forEach items="${pageInfo.navigatepageNums}" var="num">
                                            <c:if test="${num == pageInfo.pageNum}">
                                                <li class="active"><a href="#">${num}</a></li>
                                            </c:if>
                                            <c:if test="${num != pageInfo.pageNum}">
                                                <%--这里以后需要优化--%>
                                                <li><a href="<%=request.getContextPath()%>/room/roomList?pn=${num}">${num}</a></li>
                                            </c:if>
                                        </c:forEach>
                                        <c:if test="${pageInfo.hasNextPage}">
                                            <li><a href="<%=request.getContextPath()%>/room/roomList?pn=${num+1}">下一页</a></li>
                                        </c:if>
                                        <c:if test="${pageInfo.isLastPage}">
                                            <li><a href="<%=request.getContextPath()%>/room/roomList?pn=${pageInfo.lastPage}">末页</a></li>
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

<script type="text/javascript" src="http://code.jquery.com/jquery-2.0.3.min.js"></script>
<script type="text/javascript" src="js/bootstrap.min.js"></script>
<script type="text/javascript" src="js/twitter-bootstrap-hover-dropdown.min.js"></script>
<script type="text/javascript" src="vendors/datatables/js/jquery.dataTables.min.js"></script>
<script type="text/javascript" src="js/DT_bootstrap.js"></script>
</body>
</html>
