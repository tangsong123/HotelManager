<%--
  Created by IntelliJ IDEA.
  User: tangsong1
  Date: 2018/4/14
  Time: 14:37
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" import="java.util.*" isELIgnored="false"%>
<html>
<head>
    <title>更新房间信息</title>
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
                    <div class="panel-heading">
                        <div class="text-muted bootstrap-admin-box-title">Form Example</div>
                    </div>
                    <div class="bootstrap-admin-no-table-panel-content bootstrap-admin-panel-content collapse in">
                        <form class="form-horizontal" action="<%=request.getContextPath()%>/vip/updateVip"  method="post">
                            <input type="hidden" value="${vip.id}" name="id">
                            <fieldset>
                                <legend>新增/修改会员</legend>
                                <div class="form-group">
                                    <label class="col-lg-2 control-label" for="focusedInput">会员姓名</label>
                                    <div class="col-lg-10">
                                        <input class="form-control" id="focusedInput" name="vipName" type="text" value="${vip.vipName}">
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label class="col-lg-2 control-label" for="date01">会员生日</label>
                                    <div class="col-lg-10">
                                        <input class="form-control datepicker" id="date01" name="vipBirthday" value="${vip.vipBirthday}" type="text">
                                        <p class="help-block">格式是19960930</p>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label class="col-lg-2 control-label" for="phonenum">会员手机</label>
                                    <div class="col-lg-10">
                                        <input class="form-control datepicker" id="phonenum" name="vipPhonenum" value="${vip.vipPhonenum}" type="text">
                                        <p class="help-block">请输入11位数字</p>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label class="col-lg-2 control-label" for="uuid">身份证</label>
                                    <div class="col-lg-10">
                                        <input class="form-control datepicker" id="uuid" name="uuid" value="${vip.uuid}" type="text">
                                        <p class="help-block">请输入身份证号码</p>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label class="col-lg-2 control-label" for="hobby">会员喜好</label>
                                    <div class="col-lg-10">
                                        <input class="form-control datepicker" id="hobby" name="vipHobby" value="${vip.vipHobby}" type="text">
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label class="col-lg-2 control-label" for="select01">会员等级※</label>
                                    <div class="col-lg-10">
                                        <select id="select01" name="vipType" class="chzn-select"  style="width: 150px">
                                            <option value="0">请选择</option>
                                            <option value="1">1</option>
                                            <option value="2">2</option>
                                            <option value="3">3</option>
                                            <option value="4">4</option>
                                            <option value="5">5</option>
                                            <option value="6">6</option>
                                        </select>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label class="col-lg-2 control-label" for="times">入住次数</label>
                                    <div class="col-lg-10">
                                        <input class="form-control datepicker" id="times" name="times" value="${vip.times}" type="text">
                                        <p class="help-block">请输入入住次数</p>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label class="col-lg-2 control-label" for="power">消费能力</label>
                                    <div class="col-lg-10">
                                        <input class="form-control datepicker" id="power" name="spendingPower" value="${vip.spendingPower}" type="text">
                                        <p class="help-block">建议填此次入住房间价格</p>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label class="col-lg-2 control-label" for="remark">备注</label>
                                    <div class="col-lg-10">
                                        <input class="form-control datepicker" id="remark" name="remark" value="${vip.remark}" type="text">
                                        <p class="help-block">给客人备注一下吧</p>
                                    </div>
                                </div>
                                <%--<input type="date" value="2015-09-24"/>--%>
                                <div class="form-group">
                                    <label class="col-lg-2 control-label" for="createTime">创建时间</label>
                                    <div class="col-lg-10">
                                        <input class="form-control datepicker" id="createTime" name="vipCreateTime" value="2018/04/17" type="date">
                                        <p class="help-block">请修改</p>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label class="col-lg-2 control-label" for="lastCreateTime">最后一次入住时间</label>
                                    <div class="col-lg-10">
                                        <input class="form-control datepicker" id="lastCreateTime" name="vipLastTime" value="2018/04/17" type="date">
                                        <p class="help-block">请修改</p>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label class="col-lg-2 control-label" for="select03">会员状态</label>
                                    <div class="col-lg-10">
                                        <select id="select03" name="status" class="chzn-select" style="width: 150px">
                                            <option value="0">请选择</option>
                                            <option value="1">入住状态</option>
                                            <option value="2">离店状态</option>
                                        </select>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label class="col-lg-2 control-label" for="select02">是否有效会员</label>
                                    <div class="col-lg-10">
                                        <select id="select02" name="valid" class="chzn-select" style="width: 150px">
                                            <option value="0">请选择</option>
                                            <option value="1">有效</option>
                                            <option value="2">无效</option>
                                        </select>
                                    </div>
                                </div>
                                <button type="submit" class="btn btn-primary">提交</button>
                                <%--《之后实现》--%>
                                <button type="reset" class="btn btn-default">清空</button>
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


</body>
</html>
