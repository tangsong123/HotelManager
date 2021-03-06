<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" import="java.util.*" isELIgnored="false"%>jing
<html>
    <head>
        <title>UI界面_Bootstrap3响应式后台主题模板Boot3Admin - cssmoban</title>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">

        <!-- Bootstrap -->
        <link href="<%=request.getContextPath()%>/css/bootstrap.min.css" rel="stylesheet" media="screen">
        <link href="<%=request.getContextPath()%>/css/bootstrap-theme.min.css" rel="stylesheet" media="screen">

        <!-- Bootstrap Admin Theme -->
        <link href="<%=request.getContextPath()%>/css/bootstrap-admin-theme.css" rel="stylesheet" media="screen">

        <!-- Vendors -->
        <link href="<%=request.getContextPath()%>/vendors/jGrowl/jquery.jgrowl.css" rel="stylesheet" media="screen">

        <!-- Custom styles -->
        <style type="text/css">
            .pagination-container{
                margin-top: 20px;
            }
            .pagination-container-first{
                margin-top: 10px;
            }
            .pagination-container .pagination{
                margin: 0;
            }
            .notification{
                margin: 5px 0;
            }
        </style>

        <!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
        <!--[if lt IE 9]>
           <script type="text/javascript" src="js/html5shiv.js"></script>
           <script type="text/javascript" src="js/respond.min.js"></script>
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
                        <li >
                            <a href="forms.jsp"><i class="glyphicon glyphicon-chevron-right"></i> 表单</a>
                        </li>
                        <li >
                            <a href="tables.jsp"><i class="glyphicon glyphicon-chevron-right"></i> 数据表格</a>
                        </li>
                        <li >
                            <a href="buttons-and-icons.jsp"><i class="glyphicon glyphicon-chevron-right"></i> 按钮 &amp; 图标</a>
                        </li>
                        <li>
                            <a href="wysiwyg-editors.jsp"><i class="glyphicon glyphicon-chevron-right"></i> HTML编辑器</a>
                        </li>
                        <li class="active">
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
                                <div class="text-muted bootstrap-admin-box-title">Alerts</div>
                            </div>
                            <div class="bootstrap-admin-panel-content">
                                <h4>Basic Alerts</h4>
                                <div class="alert alert-success">
                                    <a class="close" data-dismiss="alert" href="#">&times;</a>
                                    <strong>Success!</strong> This is a success message.
                                </div>
                                <div class="alert alert-info">
                                    <a class="close" data-dismiss="alert" href="#">&times;</a>
                                    <strong>Info!</strong> This is an information message.
                                </div>
                                <div class="alert alert-warning">
                                    <a class="close" data-dismiss="alert" href="#">&times;</a>
                                    <strong>Warning!</strong> This is a warning message.
                                </div>
                                <div class="alert alert-danger">
                                    <a class="close" data-dismiss="alert" href="#">&times;</a>
                                    <strong>Error!</strong> This is a danger message.
                                </div>

                                <h4>Block Alerts</h4>
                                <div class="alert alert-success">
                                    <a class="close" data-dismiss="alert" href="#">&times;</a>
                                    <h4>Success!</h4>
                                    Best check yo self, you're not looking too good. Nulla vitae elit libero, a pharetra augue. Praesent commodo cursus magna, vel scelerisque nisl consectetur et.
                                </div>
                                <div class="alert alert-info">
                                    <a class="close" data-dismiss="alert" href="#">&times;</a>
                                    <h4>Info!</h4>
                                    Best check yo self, you're not looking too good. Nulla vitae elit libero, a pharetra augue. Praesent commodo cursus magna, vel scelerisque nisl consectetur et.
                                </div>
                                <div class="alert alert-warning">
                                    <a class="close" data-dismiss="alert" href="#">&times;</a>
                                    <h4>Warning!</h4>
                                    Best check yo self, you're not looking too good. Nulla vitae elit libero, a pharetra augue. Praesent commodo cursus magna, vel scelerisque nisl consectetur et.
                                </div>
                                <div class="alert alert-danger">
                                    <a class="close" data-dismiss="alert" href="#">&times;</a>
                                    <h4>Error!</h4>
                                    Best check yo self, you're not looking too good. Nulla vitae elit libero, a pharetra augue. Praesent commodo cursus magna, vel scelerisque nisl consectetur et.
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="row bootstrap-admin-no-edges-padding">
                        <div class="col-md-6">
                            <div class="panel panel-default">
                                <div class="panel-heading">
                                    <div class="text-muted bootstrap-admin-box-title">Progress Bars</div>
                                </div>
                                <div class="bootstrap-admin-panel-content">
                                    <h4>Basic progress bars</h4>
                                    <div class="progress">
                                        <div class="progress-bar" role="progressbar" aria-valuenow="60" aria-valuemin="0" aria-valuemax="100" style="width: 60%">
                                            <span class="sr-only">60% Complete</span>
                                        </div>
                                    </div>
                                    <div class="progress">
                                        <div class="progress-bar progress-bar-success" role="progressbar" aria-valuenow="60" aria-valuemin="0" aria-valuemax="100" style="width: 60%">
                                            <span class="sr-only">60% Complete (success)</span>
                                        </div>
                                    </div>
                                    <div class="progress">
                                        <div class="progress-bar progress-bar-warning" role="progressbar" aria-valuenow="60" aria-valuemin="0" aria-valuemax="100" style="width: 60%">
                                            <span class="sr-only">60% Complete (warning)</span>
                                        </div>
                                    </div>
                                    <div class="progress">
                                        <div class="progress-bar progress-bar-info" role="progressbar" aria-valuenow="60" aria-valuemin="0" aria-valuemax="100" style="width: 60%">
                                            <span class="sr-only">60% Complete (info)</span>
                                        </div>
                                    </div>
                                    <div class="progress">
                                        <div class="progress-bar progress-bar-danger" role="progressbar" aria-valuenow="60" aria-valuemin="0" aria-valuemax="100" style="width: 60%">
                                            <span class="sr-only">60% Complete (danger)</span>
                                        </div>
                                    </div>

                                    <h4>Striped progress bars</h4>
                                    <div class="alert alert-warning">
                                        Internet Explorer doesn't support striped progress bars!
                                    </div>
                                    <div class="progress progress-striped">
                                        <div class="progress-bar" role="progressbar" aria-valuenow="60" aria-valuemin="0" aria-valuemax="100" style="width: 60%">
                                            <span class="sr-only">60% Complete</span>
                                        </div>
                                    </div>
                                    <div class="progress progress-striped">
                                        <div class="progress-bar progress-bar-success" role="progressbar" aria-valuenow="60" aria-valuemin="0" aria-valuemax="100" style="width: 60%">
                                            <span class="sr-only">60% Complete (success)</span>
                                        </div>
                                    </div>
                                    <div class="progress progress-striped">
                                        <div class="progress-bar progress-bar-info" role="progressbar" aria-valuenow="60" aria-valuemin="0" aria-valuemax="100" style="width: 60%">
                                            <span class="sr-only">60% Complete (info)</span>
                                        </div>
                                    </div>
                                    <div class="progress progress-striped">
                                        <div class="progress-bar progress-bar-warning" role="progressbar" aria-valuenow="60" aria-valuemin="0" aria-valuemax="100" style="width: 60%">
                                            <span class="sr-only">60% Complete (warning)</span>
                                        </div>
                                    </div>
                                    <div class="progress progress-striped">
                                        <div class="progress-bar progress-bar-danger" role="progressbar" aria-valuenow="60" aria-valuemin="0" aria-valuemax="100" style="width: 60%">
                                            <span class="sr-only">60% Complete (danger)</span>
                                        </div>
                                    </div>

                                    <h4>Animated progress bars</h4>
                                    <div class="alert alert-warning">
                                        Internet Explorer doesn't support animated progress bars!
                                    </div>
                                    <div class="progress progress-striped active">
                                        <div class="progress-bar" role="progressbar" aria-valuenow="60" aria-valuemin="0" aria-valuemax="100" style="width: 60%">
                                            <span class="sr-only">60% Complete</span>
                                        </div>
                                    </div>
                                    <div class="progress progress-striped active">
                                        <div class="progress-bar progress-bar-success" role="progressbar" aria-valuenow="60" aria-valuemin="0" aria-valuemax="100" style="width: 60%">
                                            <span class="sr-only">60% Complete (success)</span>
                                        </div>
                                    </div>
                                    <div class="progress progress-striped active">
                                        <div class="progress-bar progress-bar-info" role="progressbar" aria-valuenow="60" aria-valuemin="0" aria-valuemax="100" style="width: 60%">
                                            <span class="sr-only">60% Complete (info)</span>
                                        </div>
                                    </div>
                                    <div class="progress progress-striped active">
                                        <div class="progress-bar progress-bar-warning" role="progressbar" aria-valuenow="60" aria-valuemin="0" aria-valuemax="100" style="width: 60%">
                                            <span class="sr-only">60% Complete (warning)</span>
                                        </div>
                                    </div>
                                    <div class="progress progress-striped active">
                                        <div class="progress-bar progress-bar-danger" role="progressbar" aria-valuenow="60" aria-valuemin="0" aria-valuemax="100" style="width: 60%">
                                            <span class="sr-only">60% Complete (danger)</span>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <div class="col-md-6" style="padding-right: 0;">
                            <div class="panel panel-default">
                                <div class="panel-heading">
                                    <div class="text-muted bootstrap-admin-box-title">Labels & Badges</div>
                                </div>
                                <div class="bootstrap-admin-panel-content">
                                    <h4>Available labels</h4>
                                    <table class="table table-bordered table-striped">
                                        <thead>
                                            <tr>
                                                <th>Labels</th>
                                                <th>Markup</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <tr>
                                                <td>
                                                    <span class="label label-default">Default</span>
                                                </td>
                                                <td>
                                                    <code>&lt;span class="label label-default"&gt;</code>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>
                                                    <span class="label label-primary">Success</span>
                                                </td>
                                                <td>
                                                    <code>&lt;span class="label label-primary"&gt;</code>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>
                                                    <span class="label label-success">Success</span>
                                                </td>
                                                <td>
                                                    <code>&lt;span class="label label-success"&gt;</code>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>
                                                    <span class="label label-info">Info</span>
                                                </td>
                                                <td>
                                                    <code>&lt;span class="label label-info"&gt;</code>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>
                                                    <span class="label label-warning">Warning</span>
                                                </td>
                                                <td>
                                                    <code>&lt;span class="label label-warning"&gt;</code>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>
                                                    <span class="label label-danger">Danger</span>
                                                </td>
                                                <td>
                                                    <code>&lt;span class="label label-danger"&gt;</code>
                                                </td>
                                            </tr>
                                        </tbody>
                                    </table>

                                    <h4 style="margin-top: 20px">Badges</h4>
                                    <ul class="nav nav-pills nav-stacked" style="max-width: 260px;">
                                        <li class="active">
                                            <a href="#">
                                                <span class="badge pull-right">42</span>
                                                Home
                                            </a>
                                        </li>
                                        <li><a href="#">Profile</a></li>
                                        <li>
                                            <a href="#">
                                                <span class="badge pull-right">3</span>
                                                Messages
                                            </a>
                                        </li>
                                    </ul>
                                </div>
                            </div>
                        </div>

                        <div class="col-md-6">
                            <div class="panel panel-default">
                                <div class="panel-heading">
                                    <div class="text-muted bootstrap-admin-box-title">Modals & Notifications</div>
                                </div>
                                <div class="bootstrap-admin-panel-content">
                                    <a href="#myModal" data-toggle="modal" class="btn btn-primary">Modal dialog</a>
                                    <a href="#myAlert" data-toggle="modal" class="btn btn-danger">Alert</a>



                                    <div id="myModal" class="modal fade" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
                                        <div class="modal-dialog">
                                            <div class="modal-content">
                                                <div class="modal-header">
                                                    <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                                                    <h4 id="myModalLabel" class="modal-title">Modal title</h4>
                                                </div>
                                                <div class="modal-body">
                                                    <p>Lorem ipsum dolor sit amet...</p>
                                                </div>
                                                <div class="modal-footer">
                                                    <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                                                    <button type="button" class="btn btn-primary">Save changes</button>
                                                </div>
                                            </div>
                                        </div>
                                    </div>

                                    <div id="myAlert" class="modal fade" tabindex="-1" role="dialog" aria-labelledby="myModalAlertLabel" aria-hidden="true">
                                        <div class="modal-dialog">
                                            <div class="modal-content">
                                                <div class="modal-header">
                                                    <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                                                    <h4 id="myModalAlertLabel" class="modal-title">Modal title</h4>
                                                </div>
                                                <div class="modal-body">
                                                    <p>Lorem ipsum dolor sit amet...</p>
                                                </div>
                                                <div class="modal-footer">
                                                    <button type="button" class="btn btn-primary" data-dismiss="modal">Confirm</button>
                                                    <button type="button" class="btn btn-default">Cancel</button>
                                                </div>
                                            </div>
                                        </div>
                                    </div>

                                    <div style="margin-top: 20px;">
                                        <button class="btn btn-default notification" id="notification">Notification</button><br />
                                        <button class="btn btn-default notification" id="notification-sticky">Sticky Notification</button><br />
                                        <button class="btn btn-default notification" id="notification-header">Notification With Header</button>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="row bootstrap-admin-no-edges-padding">
                        <div class="col-md-6">
                            <div class="panel panel-default">
                                <div class="panel-heading">
                                    <div class="text-muted bootstrap-admin-box-title">Tooltips, Popovers & Pagination</div>
                                </div>
                                <div class="bootstrap-admin-panel-content">
                                    <div style="padding: 12px 20px 40px;">
                                        <button class="btn btn-default tooltip-top" data-original-title="Tooltip in top">Top</button>
                                        <button class="btn btn-default tooltip-left" data-original-title="Tooltip in left">Left</button>
                                        <button class="btn btn-default tooltip-right" data-original-title="Tooltip in right">Right</button>
                                        <button class="btn btn-default tooltip-bottom" data-original-title="Tooltip in bottom">Bottom</button>
                                    </div>

                                    <div style="padding-left: 50%; padding-bottom: 20px;">
                                        <button class="btn btn-default popover-top" data-original-title="Popover in top">Top</button>
                                        <button class="btn btn-default popover-left" data-original-title="Popover in left">Left</button>
                                    </div>

                                    <div style="padding-left: 10%;">
                                        <button class="btn btn-default popover-right" data-original-title="Popover in right">Right</button>
                                        <button class="btn btn-default popover-bottom" data-original-title="Popover in bottom">Bottom</button>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <div class="col-md-6">
                            <div class="panel panel-default">
                                <div class="panel-heading">
                                    <div class="text-muted bootstrap-admin-box-title">Pagination</div>
                                </div>
                                <div class="bootstrap-admin-panel-content">
                                    <div class="pagination-container pagination-container-first">
                                        <ul class="pagination pagination-lg">
                                            <li class="disabled"><a href="#">&laquo;</a></li>
                                            <li class="active">
                                                <a href="#">1</a>
                                            </li>
                                            <li><a href="#">2</a></li>
                                            <li><a href="#">3</a></li>
                                            <li><a href="#">4</a></li>
                                            <li><a href="#">&raquo;</a></li>
                                        </ul>
                                    </div>

                                    <div class="pagination-container">
                                        <ul class="pagination">
                                            <li><a href="#">&laquo;</a></li>
                                            <li class="active">
                                                <a href="#">1</a>
                                            </li>
                                            <li><a href="#">2</a></li>
                                            <li><a href="#">3</a></li>
                                            <li><a href="#">4</a></li>
                                            <li><a href="#">&raquo;</a></li>
                                        </ul>
                                    </div>

                                    <div class="pagination-container">
                                        <ul class="pagination pagination-sm">
                                            <li class="disabled"><a href="#">&laquo;</a></li>
                                            <li class="active">
                                                <a href="#">1</a>
                                            </li>
                                            <li><a href="#">2</a></li>
                                            <li><a href="#">3</a></li>
                                            <li><a href="#">4</a></li>
                                            <li><a href="#">&raquo;</a></li>
                                        </ul>
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
        <script type="text/javascript" src="vendors/jGrowl/jquery.jgrowl.js"></script>

        <script type="text/javascript">
            $(function() {
                $('.tooltip').tooltip();
                $('.tooltip-left').tooltip({placement: 'left'});
                $('.tooltip-right').tooltip({placement: 'right'});
                $('.tooltip-top').tooltip({placement: 'top'});
                $('.tooltip-bottom').tooltip({placement: 'bottom'});

                $('.popover-left').popover({placement: 'left', trigger: 'hover'});
                $('.popover-right').popover({placement: 'right', trigger: 'hover'});
                $('.popover-top').popover({placement: 'top', trigger: 'hover'});
                $('.popover-bottom').popover({placement: 'bottom', trigger: 'hover'});

                $('.notification').click(function() {
                    var $id = $(this).attr('id');
                    switch ($id) {
                        case 'notification-sticky':
                            $.jGrowl("Stick this!", {sticky: true});
                            break;

                        case 'notification-header':
                            $.jGrowl("A message with a header", {header: 'Important'});
                            break;

                        default:
                            $.jGrowl("Hello world!");
                            break;
                    }
                });
            });
        </script>
    </body>
</html>
