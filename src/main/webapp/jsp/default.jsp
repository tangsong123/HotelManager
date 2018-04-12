<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" import="java.util.*" isELIgnored="false"%>
<html>
    <head>
        <title>空白页面_Bootstrap3响应式后台主题模板Boot3Admin - cssmoban</title>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">

        <!-- Bootstrap -->
        <link href="<%=request.getContextPath()%>/css/bootstrap.min.css" rel="stylesheet" media="screen">
        <link href="<%=request.getContextPath()%>/css/bootstrap-theme.min.css" rel="stylesheet" media="screen">

        <!-- Bootstrap Admin Theme -->
        <link href="<%=request.getContextPath()%>/css/bootstrap-admin-theme.css" rel="stylesheet" media="screen">

        <!-- Vendors -->
        <!-- (...) -->

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
			<a class="navbar-brand" href="#">Boot3Admin</a>
		  </div>
		  <!-- Collect the nav links, forms, and other content for toggling -->
		  <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
			<ul class="nav navbar-nav">
			  <li class="active"><a href="#">首页</a></li>
			  <li ><a href="#">关于我们</a></li>			  
			  <li class="dropdown">
				<a href="#" class="dropdown-toggle" data-toggle="dropdown">下拉菜单<b class="caret"></b></a>
				<ul class="dropdown-menu">
				  <li><a href="#">Action</a></li>
				  <li><a href="#">Another action</a></li>
				  <li><a href="#">Something else here</a></li>
				  <li class="divider"></li>
				  <li><a href="#">Separated link</a></li>
				  <li class="divider"></li>
				  <li><a href="#">One more separated link</a></li>
				</ul>
			  </li>
			</ul>
			<form class="navbar-form navbar-left" role="search">
			  <div class="form-group">
				<input type="text" class="form-control" placeholder="请输入内容">
			  </div>
			  <button type="submit" class="btn btn-default">搜索</button>
			</form>
			<ul class="nav navbar-nav navbar-right">
			  <li><a href="#">链接</a></li>
			  <li class="dropdown">
				<a href="#" class="dropdown-toggle" data-toggle="dropdown">管理员<b class="caret"></b></a>
				<ul class="dropdown-menu">
				  <li><a href="#">设置</a></li>
				  <li><a href="#">个人资料</a></li>
				  <li><a href="#">账户中心</a></li>
				  <li class="divider"></li>
				  <li><a href="#">退出登录</a></li>
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
                            <a href="index.jsp"><i class="glyphicon glyphicon-chevron-right"></i> 首页</a>
                        </li>
						<li >
                            <a href="about.jsp"><i class="glyphicon glyphicon-chevron-right"></i> 关于我们</a>
                        </li>                       
                        <li class="disabled">
                            <a href="#"><i class="glyphicon glyphicon-chevron-right"></i> 日历</a><!-- calendar.html -->
                        </li>
                        <li class="disabled">
                            <a href="#"><i class="glyphicon glyphicon-chevron-right"></i> 统计图表</a><!-- stats.html -->
                        </li>
                        <li>
                            <a href="forms.jsp"><i class="glyphicon glyphicon-chevron-right"></i> 表单</a>
                        </li>
                        <li>
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
                                <div class="text-muted bootstrap-admin-box-title">标题</div>
                            </div>
                            <div class="bootstrap-admin-panel-content text-muted" style="padding: 60px 0; text-align: center">
                                这里是你要显示的内容
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
    </body>
</html>
