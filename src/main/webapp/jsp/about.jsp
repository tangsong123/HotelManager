<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" import="java.util.*" isELIgnored="false"%>
<html>
    <head>
        <title>关于我们</title>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <!-- Bootstrap Docs -->
        <link href="http://getbootstrap.com/assets/css/docs.css" rel="stylesheet" media="screen">

        <!-- Bootstrap -->
        <link href="<%=request.getContextPath()%>/css/bootstrap.min.css" rel="stylesheet" media="screen">
        <link href="<%=request.getContextPath()%>/css/bootstrap-theme.min.css" rel="stylesheet" media="screen">

        <!-- Bootstrap Admin Theme -->
        <link href="<%=request.getContextPath()%>/css/bootstrap-admin-theme.css" rel="stylesheet" media="screen">

        <!-- Custom styles -->
        <style type="text/css">
            .bootstrap-admin-content-title h1{
                font-size: 45px;
                margin-bottom: 30px;
            }
            .bs-docs-home{
            }
            .bs-masthead{
                padding: 0;
            }
            .bs-masthead h1{
                font-size: 40px;
                margin: 0;
                padding: 34px 0;
                text-align: center;
            }
            .bs-masthead a:hover{
                text-decoration: none;
            }
            .meritoo-logo a{
                background-color: #fff;
                border: 1px solid rgba(66, 139, 202, 0.4);
                display: block;
                padding: 12px 0;
            }
            .meritoo-logo a img{
                display: block;
                margin: 0 auto;
            }
            .row-urls{
                margin-top: 4px;
            }
            .row-urls .col-md-6{
                text-align: center;
            }
            .row-urls .col-md-6 a{
                font-size: 18px;
            }
        </style>

        <!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
        <!--[if lt IE 9]>
           <script type="text/javascript" src="js/html5shiv.js"></script>
           <script type="text/javascript" src="js/respond.min.js"></script>
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
             <div class="row bootstrap-admin-no-edges-padding">
                <div class="col-md-6">
                    <div class="panel panel-default">
                        <div class="panel-heading">
                            <div class="text-muted bootstrap-admin-box-title">营业时间</div>
                        </div>
                        <div class="bootstrap-admin-panel-content">
                            <ul>
                                <li>节假日24小时营业</li>
                                <li>非节假日，周一到周五07:00——23:59</li>
                                <li>非节假日，周六周日07:00——02:00</li>
                            </ul>
                        </div>
                    </div>
                </div>
                <div class="col-md-6">
                    <div class="panel panel-default">
                        <div class="panel-heading">
                            <div class="text-muted bootstrap-admin-box-title">店铺信息</div>
                        </div>
                        <div class="bootstrap-admin-panel-content">
                            <ul>
                                <li>
                                   地址：<a href="http://map.baidu.com/?newmap=1&s=inf%26uid%3D5b95847f9484a8e46240a98a%26wd%3D%E9%95%BF%E6%B2%99%E5%AE%89%E5%9B%BE%E6%A3%AE%26all%3D1%26c%3D131&from=alamap&tpl=map_singlepoint">长沙安图森主体客栈</a>
                                </li>
                                <li>
                                    联系电话：15770938000
                                </li>
                                <li>
                                    微信同号
                                </li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
            <div class="row bootstrap-admin-no-edges-padding">
                <div class="col-md-12">
                    <div class="panel panel-default">
                        <div class="panel-heading">
                            <div class="text-muted bootstrap-admin-box-title">有关附近旅游景点的网站</div>
                        </div>
                        <div class="bootstrap-admin-panel-content">
                            <ul>
                                <li>
                                    <a href="http://www.mafengwo.cn/travel-scenic-spot/mafengwo/10466.html">长沙旅游网址</a>
                                </li>
                                <li>
                                    <a href="http://www.mafengwo.cn/travel-scenic-spot/mafengwo/10208.html">重庆旅游网址</a>
                                </li>
                                <li>
                                    <a href="http://www.mafengwo.cn/travel-scenic-spot/mafengwo/10065.html">北京旅游网址</a>
                                </li>
                                <li>
                                    <a href="http://www.mafengwo.cn/travel-scenic-spot/mafengwo/10132.html">厦门旅游网址</a>
                                </li>
                                <li>
                                    <a href="http://www.mafengwo.cn/travel-scenic-spot/mafengwo/10133.html">武汉旅游网址</a>
                                </li>
                            </ul>
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
