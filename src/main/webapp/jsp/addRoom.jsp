<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
    <title>增加房间</title>
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
                <a class="navbar-brand" href="#">Boot3Admin</a>
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
                        <form class="form-horizontal" action="<%=request.getContextPath()%>/room/addRoom"  method="post">
                            <fieldset>
                                <legend>新增房间</legend>
                                <c:if test="${result.message!=null}">
                                    <div class="row">
                                        <div class="alert alert-success bootstrap-admin-alert">
                                            <button type="button" class="close" data-dismiss="alert">×</button>
                                            <h5>${result.message}</h5>
                                        </div>
                                    </div>
                                </c:if>
                                <div class="form-group">
                                    <label class="col-lg-2 control-label" for="select01">房间状态※</label>
                                    <div class="col-lg-10">
                                        <select id="select01" name="status" class="chzn-select" style="width: 150px">
                                            <option value="0">请选择</option>
                                            <option value="1">空闲</option>
                                            <option value="2">已预订</option>
                                            <option value="3">有人</option>
                                            <option value="4">请立即打扫</option>
                                        </select>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label class="col-lg-2 control-label" for="focusedInput">房间ID</label>
                                    <div class="col-lg-10">
                                        <input class="form-control" id="focusedInput" name="roomId" type="text" >
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label class="col-lg-2 control-label" for="focusedInput2">房间名字</label>
                                    <div class="col-lg-10">
                                        <input class="form-control" id="focusedInput2" name="roomName" type="text" >
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label class="col-lg-2 control-label" for="select10">房间类型※</label>
                                    <div class="col-lg-10">
                                        <select id="select10" name="roomType" class="chzn-select" style="width: 150px">
                                            <option value="0">请选择</option>
                                            <option value="1">特价房</option>
                                            <option value="2">豪华房</option>
                                            <option value="3">主题房</option>
                                            <option value="4">总统套房</option>
                                        </select>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label class="col-lg-2 control-label" for="select15">※电视</label>
                                    <div class="col-lg-10">
                                        <select id="select15" name="isTv" class="chzn-select" style="width: 150px">
                                            <option value="0">请选择</option>
                                            <option value="true">有</option>
                                            <option value="false">没有</option>
                                        </select>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label class="col-lg-2 control-label" for="select16">※窗户</label>
                                    <div class="col-lg-10">
                                        <select id="select16" name="isWindow" class="chzn-select" style="width: 150px">
                                            <option value="0">请选择</option>
                                            <option value="true">有</option>
                                            <option value="false">没有</option>
                                        </select>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label class="col-lg-2 control-label" for="select17">※早餐</label>
                                    <div class="col-lg-10">
                                        <select id="select17" name="isBreakfirst" class="chzn-select" style="width: 150px">
                                            <option value="0">请选择</option>
                                            <option value="true">有</option>
                                            <option value="false">没有</option>
                                        </select>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label class="col-lg-2 control-label" for="select18">※独卫</label>
                                    <div class="col-lg-10">
                                        <select id="select18" name="isBathroom" class="chzn-select" style="width: 150px">
                                            <option value="0">请选择</option>
                                            <option value="true">有</option>
                                            <option value="false">没有</option>
                                        </select>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label class="col-lg-2 control-label" for="select19">※吹风机</label>
                                    <div class="col-lg-10">
                                        <select id="select19" name="isBlower" class="chzn-select" style="width: 150px">
                                            <option value="0">请选择</option>
                                            <option value="true">有</option>
                                            <option value="false">没有</option>
                                        </select>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label class="col-lg-2 control-label" for="Input">房间大小</label>
                                    <div class="col-lg-10">
                                        <input class="form-control" id="Input" name="roomFloat" type="text" >
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label class="col-lg-2 control-label" for="select11">房间类型※</label>
                                    <div class="col-lg-10">
                                        <select id="select11" name="roomBedNum" class="chzn-select" style="width: 150px">
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
                                <div class="form-group">
                                    <label class="col-lg-2 control-label" for="phonenum1">房间实际价格</label>
                                    <div class="col-lg-10">
                                        <input class="form-control datepicker" id="phonenum1" name="price"  type="text">
                                        <p class="help-block">房间实际价格</p>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label class="col-lg-2 control-label" for="phonenum">房间定价</label>
                                    <div class="col-lg-10">
                                        <input class="form-control datepicker" id="phonenum" name="proprice"  type="text">
                                        <p class="help-block">房间定价</p>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label class="col-lg-2 control-label" for="remark">备注</label>
                                    <div class="col-lg-10">
                                        <input class="form-control datepicker" id="remark" name="remark" type="text">
                                        <p class="help-block">给客人备注一下吧</p>
                                    </div>
                                </div>
                                <%--<input type="date" value="2015-09-24"/>--%>
                                <div class="form-group">
                                    <label class="col-lg-2 control-label" for="createTime">创建时间</label>
                                        <div class="col-lg-10">
                                            <input class="form-control datepicker" id="createTime" name="roomCreateTime" value="2018/04/17" type="date">
                                            <p class="help-block">给客人备注一下创建时间吧</p>
                                        </div>
                                </div>
                                <div class="form-group">
                                    <label class="col-lg-2 control-label" for="lastCreateTime">最后一次入住时间</label>
                                    <div class="col-lg-10">
                                        <input class="form-control datepicker" id="lastCreateTime" name="roomLastTime" value="2018/04/17" type="date">
                                        <p class="help-block">给客人备注一下最后一次入住时间吧</p>
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

    <div class="row">
        <hr>
        <footer role="contentinfo">
            <p>&copy; 2013 <a href="#" target="_blank">Boot3Admin</a>-More Templates <a href="http://www.cssmoban.com/" target="_blank" title="模板之家">模板之家</a> - Collect from <a href="http://www.cssmoban.com/" title="网页模板" target="_blank">网页模板</a></p>
        </footer>
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
        $('.datepicker').datepicker();
        $('.uniform_on').uniform();
        $('.chzn-select').chosen();
        $('.textarea-wysihtml5').wysihtml5({
            stylesheets: [
                'vendors/bootstrap-wysihtml5-rails-b3/vendor/assets/stylesheets/bootstrap-wysihtml5/wysiwyg-color.css'
            ]
        });

        $('#rootwizard').bootstrapWizard({
            'nextSelector': '.next',
            'previousSelector': '.previous',
            onNext: function(tab, navigation, index) {
                var $total = navigation.find('li').length;
                var $current = index + 1;
                var $percent = ($current / $total) * 100;
                $('#rootwizard').find('.progress-bar').css('width', $percent + '%');
                // If it's the last tab then hide the last button and show the finish instead
                if ($current >= $total) {
                    $('#rootwizard').find('.pager .next').hide();
                    $('#rootwizard').find('.pager .finish').show();
                    $('#rootwizard').find('.pager .finish').removeClass('disabled');
                } else {
                    $('#rootwizard').find('.pager .next').show();
                    $('#rootwizard').find('.pager .finish').hide();
                }
            },
            onPrevious: function(tab, navigation, index) {
                var $total = navigation.find('li').length;
                var $current = index + 1;
                var $percent = ($current / $total) * 100;
                $('#rootwizard').find('.progress-bar').css('width', $percent + '%');
                // If it's the last tab then hide the last button and show the finish instead
                if ($current >= $total) {
                    $('#rootwizard').find('.pager .next').hide();
                    $('#rootwizard').find('.pager .finish').show();
                    $('#rootwizard').find('.pager .finish').removeClass('disabled');
                } else {
                    $('#rootwizard').find('.pager .next').show();
                    $('#rootwizard').find('.pager .finish').hide();
                }
            },
            onTabShow: function(tab, navigation, index) {
                var $total = navigation.find('li').length;
                var $current = index + 1;
                var $percent = ($current / $total) * 100;
                $('#rootwizard').find('.bar').css({width: $percent + '%'});
            }
        });
        $('#rootwizard .finish').click(function() {
            alert('Finished!, Starting over!');
            $('#rootwizard').find('a[href*=\'tab1\']').trigger('click');
        });
    });
</script>
</body>
</html>
