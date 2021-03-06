<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" import="java.util.*" isELIgnored="false"%>
<html>
    <head>
        <title>表单页面_Bootstrap3响应式后台主题模板Boot3Admin - cssmoban</title>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">

        <!-- Bootstrap -->
        <link href="<%=request.getContextPath()%>/css/bootstrap.min.css" rel="stylesheet" media="screen">
        <link href="<%=request.getContextPath()%>/css/bootstrap-theme.min.css" rel="stylesheet" media="screen">

        <!-- Bootstrap Admin Theme -->
        <link href="<%=request.getContextPath()%>/css/bootstrap-admin-theme.css" rel="stylesheet" media="screen">

        <!-- Vendors -->
        <link href="<%=request.getContextPath()%>/vendors/bootstrap-datepicker/css/datepicker.css" rel="stylesheet" media="screen">
        <link href="<%=request.getContextPath()%>/css/datepicker.fixes.css" rel="stylesheet" media="screen">
        <link href="<%=request.getContextPath()%>/vendors/uniform/themes/default/css/uniform.default.min.css" rel="stylesheet" media="screen">
        <link href="<%=request.getContextPath()%>/css/uniform.default.fixes.css" rel="stylesheet" media="screen">
        <link href="<%=request.getContextPath()%>/vendors/chosen.min.css" rel="stylesheet" media="screen">
        <link href="<%=request.getContextPath()%>/vendors/bootstrap-wysihtml5-rails-b3/vendor/assets/stylesheets/bootstrap-wysihtml5/core-b3.css" rel="stylesheet" media="screen">

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
                        <li class="active">
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
                        <div class="panel panel-default bootstrap-admin-no-table-panel">
                            <div class="panel-heading">
                                <div class="text-muted bootstrap-admin-box-title">Form Example</div>
                            </div>
                            <div class="bootstrap-admin-no-table-panel-content bootstrap-admin-panel-content collapse in">
                                <form class="form-horizontal">
                                    <fieldset>
                                        <legend>Form Horizontal</legend>
                                        <div class="form-group">
                                            <label class="col-lg-2 control-label" for="focusedInput">Focused input</label>
                                            <div class="col-lg-10">
                                                <input class="form-control" id="focusedInput" type="text" value="This is focused...">
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label class="col-lg-2 control-label">Uneditable input</label>
                                            <div class="col-lg-10">
                                                <span class="form-control">Some value here</span>
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label class="col-lg-2 control-label" for="disabledInput">Disabled input</label>
                                            <div class="col-lg-10">
                                                <input class="form-control disabled" id="disabledInput" type="text" placeholder="Disabled input here..." disabled="">
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label class="col-lg-2 control-label" for="optionsCheckbox2">Disabled checkbox</label>
                                            <div class="col-lg-10">
                                                <label>
                                                    <input type="checkbox" id="optionsCheckbox2" value="option1" disabled="">
                                                    This is a disabled checkbox
                                                </label>
                                            </div>
                                        </div>
                                        <div class="form-group has-warning">
                                            <label class="col-lg-2 control-label" for="inputError">Input with warning</label>
                                            <div class="col-lg-10">
                                                <input type="text" id="inputWarning" class="form-control">
                                                <span class="help-block">Something may have gone wrong</span>
                                            </div>
                                        </div>
                                        <div class="form-group has-error">
                                            <label class="col-lg-2 control-label" for="inputError">Input with error</label>
                                            <div class="col-lg-10">
                                                <input type="text" id="inputError" class="form-control">
                                                <span class="help-block">Please correct the error</span>
                                            </div>
                                        </div>
                                        <div class="form-group has-success">
                                            <label class="col-lg-2 control-label" for="inputError">Input with success</label>
                                            <div class="col-lg-10">
                                                <input type="text" id="inputSuccess" class="form-control">
                                                <span class="help-block">Woohoo!</span>
                                            </div>
                                        </div>
                                        <div class="form-group has-success">
                                            <label class="col-lg-2 control-label" for="selectError">Select with success</label>
                                            <div class="col-lg-10">
                                                <select id="selectError" class="form-control">
                                                    <option>1</option>
                                                    <option>2</option>
                                                    <option>3</option>
                                                    <option>4</option>
                                                    <option>5</option>
                                                </select>
                                                <span class="help-block">Woohoo!</span>
                                            </div>
                                        </div>
                                        <button type="submit" class="btn btn-primary">Save changes</button>
                                        <button type="reset" class="btn btn-default">Cancel</button>
                                    </fieldset>
                                </form>
                            </div>
                        </div>
                    </div>

                    <div class="row">
                        <div class="panel panel-default bootstrap-admin-no-table-panel">
                            <div class="panel-heading">
                                <div class="text-muted bootstrap-admin-box-title">Form Example</div>
                            </div>
                            <div class="bootstrap-admin-no-table-panel-content bootstrap-admin-panel-content collapse in">
                                <form class="form-horizontal">
                                    <fieldset>
                                        <legend>Form Components</legend>
                                        <div class="form-group">
                                            <label class="col-lg-2 control-label" for="typeahead">Text input </label>
                                            <div class="col-lg-10">
                                                <input type="text" class="form-control col-md-6" id="typeahead" autocomplete="off" data-provide="typeahead" data-items="4" data-source='["Alabama","Alaska","Arizona","Arkansas","California","Colorado","Connecticut","Delaware","Florida","Georgia","Hawaii","Idaho","Illinois","Indiana","Iowa","Kansas","Kentucky","Louisiana","Maine","Maryland","Massachusetts","Michigan","Minnesota","Mississippi","Missouri","Montana","Nebraska","Nevada","New Hampshire","New Jersey","New Mexico","New York","North Dakota","North Carolina","Ohio","Oklahoma","Oregon","Pennsylvania","Rhode Island","South Carolina","South Dakota","Tennessee","Texas","Utah","Vermont","Virginia","Washington","West Virginia","Wisconsin","Wyoming"]'>
                                                <p class="help-block">Start typing to activate auto complete!</p>
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label class="col-lg-2 control-label" for="date01">Date input</label>
                                            <div class="col-lg-10">
                                                <input type="text" class="form-control datepicker" id="date01" value="02/16/12">
                                                <p class="help-block">In addition to freeform text, any HTML5 text-based input appears like so.</p>
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label class="col-lg-2 control-label" for="optionsCheckbox">Checkbox</label>
                                            <div class="col-lg-10">
                                                <label class="uniform">
                                                    <input class="uniform_on" type="checkbox" id="optionsCheckbox" value="option1">
                                                    Option one is this and that&mdash;be sure to include why it's great
                                                </label>
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label class="col-lg-2 control-label" for="select01">Select list</label>
                                            <div class="col-lg-10">
                                                <select id="select01" class="chzn-select" style="width: 150px">
                                                    <option>something</option>
                                                    <option>2</option>
                                                    <option>3</option>
                                                    <option>4</option>
                                                    <option>5</option>
                                                </select>
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label class="col-lg-2 control-label" for="fileInput">File input</label>
                                            <div class="col-lg-10">
                                                <input class="form-control uniform_on" id="fileInput" type="file">
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label class="col-lg-2 control-label" for="textarea-wysihtml5">Textarea WYSIWYG</label>
                                            <div class="col-lg-10">
                                                <textarea id="textarea-wysihtml5" class="form-control textarea-wysihtml5" placeholder="Enter text..." style="width: 100%; height: 200px"></textarea>
                                            </div>
                                        </div>
                                        <button type="submit" class="btn btn-primary">Save changes</button>
                                        <button type="reset" class="btn btn-default">Cancel</button>
                                    </fieldset>
                                </form>
                            </div>
                        </div>
                    </div>

                    <div class="row">
                        <div class="panel panel-default bootstrap-admin-no-table-panel">
                            <div class="panel-heading">
                                <div class="text-muted bootstrap-admin-box-title">Form Wizard</div>
                            </div>
                            <div class="bootstrap-admin-no-table-panel-content bootstrap-admin-panel-content collapse in">
                                <div id="rootwizard">
                                    <div class="navbar">
                                        <div class="container">
                                            <ul>
                                                <li><a href="#tab1" data-toggle="tab">Step 1</a></li>
                                                <li><a href="#tab2" data-toggle="tab">Step 2</a></li>
                                                <li><a href="#tab3" data-toggle="tab">Step 3</a></li>
                                            </ul>
                                        </div>
                                    </div>
                                    <div id="bar" class="progress progress-striped active">
                                        <div class="progress-bar" role="progressbar" aria-valuemin="0" aria-valuemax="100"></div>
                                    </div>
                                    <div class="tab-content">
                                        <div class="tab-pane" id="tab1">
                                            <form class="form-horizontal">
                                                <fieldset>
                                                    <div class="form-group">
                                                        <label class="col-lg-2 control-label" for="focusedInput1">Name</label>
                                                        <div class="col-lg-10">
                                                            <input class="form-control" id="focusedInput1" type="text" value="">
                                                        </div>
                                                    </div>
                                                    <div class="form-group">
                                                        <label class="col-lg-2 control-label" for="focusedInput2">Email</label>
                                                        <div class="col-lg-10">
                                                            <input class="form-control" id="focusedInput2" type="text" value="">
                                                        </div>
                                                    </div>
                                                    <div class="form-group">
                                                        <label class="col-lg-2 control-label" for="focusedInput3">Phone</label>
                                                        <div class="col-lg-10">
                                                            <input class="form-control" id="focusedInput3" type="text" value="">
                                                        </div>
                                                    </div>
                                                </fieldset>
                                            </form>
                                        </div>
                                        <div class="tab-pane" id="tab2">
                                            <form class="form-horizontal">
                                                <fieldset>
                                                    <div class="form-group">
                                                        <label class="col-lg-2 control-label" for="focusedInput4">Address</label>
                                                        <div class="col-lg-10">
                                                            <input class="form-control" id="focusedInput4" type="text" value="">
                                                        </div>
                                                    </div>
                                                    <div class="form-group">
                                                        <label class="col-lg-2 control-label" for="focusedInput5">City</label>
                                                        <div class="col-lg-10">
                                                            <input class="form-control" id="focusedInput5" type="text" value="">
                                                        </div>
                                                    </div>
                                                    <div class="form-group">
                                                        <label class="col-lg-2 control-label" for="focusedInput6">State</label>
                                                        <div class="col-lg-10">
                                                            <input class="form-control" id="focusedInput6" type="text" value="">
                                                        </div>
                                                    </div>
                                                </fieldset>
                                            </form>
                                        </div>
                                        <div class="tab-pane" id="tab3">
                                            <form class="form-horizontal">
                                                <fieldset>
                                                    <div class="form-group">
                                                        <label class="col-lg-2 control-label" for="focusedInput7">Company Name</label>
                                                        <div class="col-lg-10">
                                                            <input class="form-control" id="focusedInput7" type="text" value="">
                                                        </div>
                                                    </div>
                                                    <div class="form-group">
                                                        <label class="col-lg-2 control-label" for="focusedInput8">Contact Name</label>
                                                        <div class="col-lg-10">
                                                            <input class="form-control" id="focusedInput8" type="text" value="">
                                                        </div>
                                                    </div>
                                                    <div class="form-group">
                                                        <label class="col-lg-2 control-label" for="focusedInput9">Contact Phone</label>
                                                        <div class="col-lg-10">
                                                            <input class="form-control" id="focusedInput9" type="text" value="">
                                                        </div>
                                                    </div>
                                                </fieldset>
                                            </form>
                                        </div>
                                        <ul class="pager wizard">
                                            <li class="previous first" style="display:none;"><a href="javascript:void(0);">First</a></li>
                                            <li class="previous"><a href="javascript:void(0);">Previous</a></li>
                                            <li class="next last" style="display:none;"><a href="javascript:void(0);">Last</a></li>
                                            <li class="next"><a href="javascript:void(0);">Next</a></li>
                                            <li class="next finish" style="display:none;"><a href="javascript:;">Finish</a></li>
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
        <script type="text/javascript" src="vendors/uniform/jquery.uniform.min.js"></script>
        <script type="text/javascript" src="vendors/chosen.jquery.min.js"></script>
        <script type="text/javascript" src="vendors/bootstrap-datepicker/js/bootstrap-datepicker.js"></script>
        <script type="text/javascript" src="vendors/bootstrap-wysihtml5-rails-b3/vendor/assets/javascripts/bootstrap-wysihtml5/wysihtml5.js"></script>
        <script type="text/javascript" src="vendors/bootstrap-wysihtml5-rails-b3/vendor/assets/javascripts/bootstrap-wysihtml5/core-b3.js"></script>
        <script type="text/javascript" src="vendors/twitter-bootstrap-wizard/jquery.bootstrap.wizard-for.bootstrap3.js"></script>
        <script type="text/javascript" src="vendors/boostrap3-typeahead/bootstrap3-typeahead.min.js"></script>

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
