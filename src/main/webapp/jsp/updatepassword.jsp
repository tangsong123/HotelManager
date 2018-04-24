<%--<%@ page contentType="text/html;charset=UTF-8" language="java" %>--%>
<%-- 拦截器--%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" import="java.util.*" isELIgnored="false"%>
<%@ page import="com.hotel.bean.User" %>

<html>
    <head>
        <title>修改密码</title>
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
           <!-- content -->
           <div class="col-md-10">
               <div class="row">
                   <div class="panel panel-default bootstrap-admin-no-table-panel">
                       <div class="panel-heading">
                           <div class="text-muted bootstrap-admin-box-title">修改密码</div>
                       </div>
                       <div class="bootstrap-admin-no-table-panel-content bootstrap-admin-panel-content collapse in">
                           <form class="form-horizontal">
                               <fieldset>
                                   <legend>修改密码</legend>
                                   <div class="form-group">
                                       <label class="col-lg-2 control-label" for="opassword">旧密码</label>
                                       <div class="col-lg-10">
                                           <input class="form-control" id="opassword" type="text" value="请输入旧密码...">
                                       </div>
                                   </div>
                                   <div class="form-group">
                                       <label class="col-lg-2 control-label" for="password">新密码</label>
                                       <div class="col-lg-10">
                                           <input class="form-control" id="password" type="text" value="请输入新密码...">
                                       </div>
                                   </div>
                                   <div class="form-group">
                                       <label class="col-lg-2 control-label" for="repassword">新密码</label>
                                       <div class="col-lg-10">
                                           <input class="form-control" id="repassword" type="text" value="再次输入...">
                                       </div>
                                   </div>

                                   <div class="row">
                                       <button type="button" class="btn btn-lg btn-primary btn-sm">修改</button>
                                       <button type="button" class="btn btn-danger btn-sm">取消</button>
                                    </div>
                               </fieldset>

                           </form>
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