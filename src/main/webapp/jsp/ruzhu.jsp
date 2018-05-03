<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" import="java.util.*" isELIgnored="false"%>
<html>
<head>
    <title>生成订单</title>
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
                <!-- content -->
                <div class="col-md-10">
                    <div class="row">
                        <div class="panel panel-default bootstrap-admin-no-table-panel">
                            <div class="panel-heading">
                                <div class="text-muted bootstrap-admin-box-title">散客入住（入住即生成一个订单）</div>
                            </div>
                            <div class="bootstrap-admin-no-table-panel-content bootstrap-admin-panel-content collapse in">
                                <%session.getAttribute("admin");%>
                                <form class="form-horizontal" action="<%=request.getContextPath()%>/order/createOrder"  method="post">
                                    <fieldset>
                                        <legend>入住</legend>
                                        <div class="form-group">
                                            <label class="col-lg-2 control-label" for="vipName">会员名字</label>
                                            <div class="col-lg-10">
                                                <input class="form-control" id="vipName" name="vipName" type="text" value="会员名字...">
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label class="col-lg-2 control-label" for="vipType">会员类型</label>
                                            <div class="col-lg-10">
                                                <input class="form-control" id="vipType" name="vipType" type="text" value="1代表普通会员2代表黄金会员，请用数字表示">
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label class="col-lg-2 control-label" for="username">管理员名字</label>
                                            <div class="col-lg-10">
                                                <input class="form-control" id="username" name="username" type="text" value="${admin.username}">
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label class="col-lg-2 control-label" for="price">金额</label>
                                            <div class="col-lg-10">
                                                <input class="form-control" id="price" name="price" type="text" value="${roomMessage.price}">
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label class="col-lg-2 control-label" for="roomId">房间号</label>
                                            <div class="col-lg-10">
                                                <input class="form-control" id="roomId" name="roomId" type="text" value="${roomMessage.roomId}">
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label class="col-lg-2 control-label" for="roomName">房间名</label>
                                            <div class="col-lg-10">
                                                <input class="form-control" id="roomName" name="roomName" type="text" value="${roomMessage.roomName}">
                                            </div>
                                        </div>
                                        <button type="submit" class="btn btn-primary">保存</button>
                                        <button type="reset" class="btn btn-default">返回</button>
                                    </fieldset>
                                </form>
                            </div>
                        </div>
                    </div>

                </div>
            </div>


        </div>
        <% session.getAttribute("admin"); %>
        <script type="text/javascript">
            $(document).ready(function(){
                alert(window.location.href);
                //var herf = window.location.href;
//                var userid = getQueryString('userid');
//                alert(userid);
//                var v1 = ${admin.username};
 //             alert(v1);
            });

            //获得参数(只对字母数字等有效,参数值为中文则不能传)
            function getQueryString(name) {
                var reg = new RegExp("(^|&)" + name + "=([^&]*)(&|$)", "i");
                var r = window.location.search.substr(1).match(reg);
                if (r != null) return decodeURIComponent(r[2]); return null;
            }

            //获取参数2(对数字、字母、中文均有效.但在对URL进行escape()编码再解码unescape()时不能使用,只能用上述方法)
            function getQueryString2(name) {
                var reg = new RegExp("(^|&)" + name + "=([^&]*)(&|$)", "i");
                var r = window.location.search.substr(1).match(reg);
                if(r != null) return decodeURI(r[2]);
                return null;
            }

        </script>
        <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
        <script type="text/javascript" src="http://code.jquery.com/jquery-2.0.3.min.js"></script>
        <!-- Include all compiled plugins (below), or include individual files as needed -->
        <script type="text/javascript" src="<%=request.getContextPath()%>/js/bootstrap.min.js"></script>
        <script type="text/javascript" src="<%=request.getContextPath()%>/js/twitter-bootstrap-hover-dropdown.min.js"></script>
        <script type="text/javascript" src="<%=request.getContextPath()%>/vendors/easypiechart/jquery.easy-pie-chart.js"></script>

    </body>
</html>
