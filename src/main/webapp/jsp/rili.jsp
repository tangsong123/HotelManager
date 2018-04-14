<%--
  Created by IntelliJ IDEA.
  User: tangsong1
  Date: 2018/4/14
  Time: 13:07
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html; charset=gb2312" language="java" %>

<html>

<head>

    <title>日期选择器</title>
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
    <style>

        body, td {
            font-size: 9pt;
        }

        input {

            color: red;

            font-size: 9pt;

            border-width: 0;

            padding: 2px;

            width: 20px;

        }

    </style>

</head>

<script language=javascript>

    <!--

    var monthNames = new Array("", "1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12");

    var endDay = new Array(0, 31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31);

    var dayNow = 0;

    var monthNow = 0;

    var yearNow = 0;

    function load(form) {

        set_month_year_now();

        var found = false;

        for (var month = 0; month < form.monthList.length; month++)

            if (form.monthList[month].text == monthNames[monthNow]) {

                form.monthList[month].selected = true;

                found = true;

            }

        if (!found) {

            error();

            return;

        }

        var found = false;

        for (var year = 0; year < form.yearList.length; year++)

            if (form.yearList[year].text == yearNow) {

                form.yearList[year].selected = true;

                found = true;

            }

        if (!found) {

            error();

            return;

        }

        display_month(form);

    }

    function preceding_month(form) {

        var month_selected = form.monthList.selectedIndex;

        var year_selected = form.yearList.selectedIndex;

        if (!month_selected && !year_selected) {

            error();

            return;

        }

        if (month_selected > 0)

            month_selected--;

        else {

            month_selected = 11;

            year_selected--;

        }

        form.monthList[month_selected].selected = true;

        form.yearList[year_selected].selected = true;

        display_month(form);

    }

    function following_month(form) {

        var month_selected = form.monthList.selectedIndex;

        var year_selected = form.yearList.selectedIndex;

        if (month_selected >= ( form.monthList.length - 1 ) && year_selected >= ( form.yearList.length - 1 )) {

            error();

            return;

        }

        if (month_selected < 11)

            month_selected++;

        else {

            month_selected = 0;

            year_selected++;

        }

        form.monthList[month_selected].selected = true;

        form.yearList[year_selected].selected = true;

        display_month(form);

    }

    function set_month_year_now() {

        var form = document.calendar;

        var now = new Date();

        monthNow = now.getMonth() + 1;

        yearNow = now.getYear();

        dayNow = now.getDate();

        yearNow = ( yearNow < 100 ) ? yearNow + 1900 : yearNow;

        var count = 0

        for (var i = yearNow - 103; i < yearNow + 50; i++) {

            eval("form.yearList.options[count] = new Option('" + i + "', '" + i + "')");

            count++;

        }

        form.yearList.selectedIndex = 103;

        form.yearList.length = count;

    }

    function error() {

        alert("超出范围!");

    }

    function display_month(form) {

        var month = form.monthList.selectedIndex + 1;

        var year = parseInt(form.yearList.options[form.yearList.selectedIndex].text);

        var start_day = start_day_in_month(year, month);

        var count = 0;

        for (var row = 0; row < 6; row++) {

            for (var col = 0; col < 7; col++) {

                if (row == 0 && col < ( start_day - 1 ))

                    var day = "";

                else if (count < endDay[month])

                    day = ++count;

                else

                    day = "";

                form.dayBox[(row * 7) + col].style.display = "";

                form.dayBox[(row * 7) + col].style.color = "black";

                if (day == "") {

                    form.dayBox[(row * 7) + col].style.display = "none";

                } else {

                    form.dayBox[(row * 7) + col].value = day;

                    if (col % 7 == 0) form.dayBox[(row * 7) + col].style.color = "red";

                    if (yearNow == year && monthNow == month && dayNow == day) form.dayBox[(row * 7) + col].style.color = "blue";
                    ;

                }

            }

        }

    }

    function start_day_in_month(year, month) {

        var day, daynum, ndays, mnum;

        sday = start_day_in_year(year);

        endDay[2] = ( year % 4 ) ? 28 : 29;

        if (month == 1)

            daynum = sday;

        else {

            ndays = sday;

            for (mnum = 2; mnum < month + 1; mnum++)

                ndays = ndays + endDay[mnum - 1];

            daynum = ndays % 7;

        }

        daynum = (!daynum) ? 7 : daynum;

        return (daynum);

    }

    function start_day_in_year(year) {

        var y, m, d;

        var n;

        y = year - 1;
        m = 13;
        d = 1;

        n = d + 2 * m + ( Math.floor(( 0.6 + (m + 1) )) + y );

        n = n + Math.floor(((y / 4) - Math.floor((y / 100 )) + Math.floor(( y / 400 )) )) + 2;

        n = Math.floor(( (n / 7 - Math.floor((n / 7)) ) * 7 + 0.5 ));

        return (n + 1);

    }

    function CheckDate(strDay) {

        var docFrm = document.calendar;

        var choice_daynum = 0;

        var current_daynum = 0;

        var day_temp;

        if (strDay != "") {

            var strY = docFrm.yearList.value;

            var strM = docFrm.monthList.value;

            var curr_y = new String(yearNow);

            var curr_m = new String(monthNow);

            var curr_d = new String(dayNow);

            if (curr_m.length == 1) curr_m = "0" + curr_m;

            if (curr_d.length == 1) curr_d = "0" + curr_d;

            current_daynum = new Number(curr_y + curr_m + curr_d);

            if (strM.length == 1) strM = "0" + strM;

            if (strDay.length == 1) strDay = "0" + strDay;

            choice_daynum = new Number(strY + strM + strDay);

            parent.window.returnValue = strY + "-" + strM + "-" + strDay;  //将选择的日期传递到父窗口中

            parent.window.close();

        }

        return false;

    }

    -->

</script>

<body onLoad="load(document.calendar)" topmargin="0">
<div class="container">
    <!-- left, vertical navbar & content -->
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
                    <a class="navbar-brand" href="/hello/login">酒店后台</a>
                </div>
                <!-- Collect the nav links, forms, and other content for toggling -->
                <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                    <ul class="nav navbar-nav">
                        <li class="active"><a href="/hello/index">首页</a></li>
                        <li><a href="/hello/about">关于我们</a></li>
                        <li class="dropdown">
                            <a href="#" class="dropdown-toggle" data-toggle="dropdown">下拉菜单<b class="caret"></b></a>
                            <ul class="dropdown-menu">
                                <li><a href="/room/roomList">入住</a></li>
                                <li class="divider"></li>
                                <li><a href="/room/roomList">会员管理</a></li>
                                <li><a href="/room/roomList">客房管理</a></li>
                            </ul>
                        </li>
                    </ul>
                    <ul class="nav navbar-nav navbar-right">
                        <li><a href="http://www.baidu.com">链接</a></li>
                        <li class="dropdown">
                            <a href="#" class="dropdown-toggle" data-toggle="dropdown">管理员<b class="caret"></b></a>
                            <ul class="dropdown-menu">
                                <li><a href="/hello/login">设置</a></li>
                                <li><a href="/hello/login">个人资料</a></li>
                                <li><a href="/hello/login">账户中心</a></li>
                                <li class="divider"></li>
                                <li><a href="javascript:loginOut();">退出登录</a></li>
                            </ul>
                        </li>
                    </ul>
                </div><!-- /.navbar-collapse -->
            </div>
        </div>
    </nav>
    <div class="row">
        <div class="col-md-2 bootstrap-admin-col-left">
            <ul class="nav navbar-collapse collapse bootstrap-admin-navbar-side">
                <li>
                    <a href="<%=request.getContextPath()%>/hello/index"><i
                            class="glyphicon glyphicon-chevron-right"></i> 首页</a>
                </li>
                <li>
                    <a href="<%=request.getContextPath()%>/hello/about"><i
                            class="glyphicon glyphicon-chevron-right"></i> 关于我们</a>
                </li>
                <li>
                    <a href="<%=request.getContextPath()%>/hello/rili"><i class="glyphicon glyphicon-chevron-right"></i>
                        日历</a><!-- calendar.html -->
                </li>
                <li class="disabled">
                    <a href="#"><i class="glyphicon glyphicon-chevron-right"></i> 统计图表</a><!-- stats.html -->
                </li>
                <li>
                    <a href="forms.jsp"><i class="glyphicon glyphicon-chevron-right"></i> 表单</a>
                </li>
                <li class="active">
                    <a href="tables.jsp"><i class="glyphicon glyphicon-chevron-right"></i> 数据表格</a>
                </li>
                <li>
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

        <form name="calendar">

            <table border="0" cellpadding="0" cellspacing="0" >

                <tr>

                    <td colspan="3" height="24"></td>

                </tr>

                <tr>

                    <td width="205" nowrap="nowrap" align="right"><select name="yearList"
                                                                          onChange="display_month(this.form)">

                    </select>

                    </td>

                    <td width="65" nowrap="nowrap" align="left"><select name="monthList" size="1"
                                                                        onChange="display_month(this.form)">

                        <%for (int i = 1; i < 13; i++) {%>

                        <option value="<%=i%>"><%=i%>
                        </option>

                        <%}%>

                    </select>

                    </td>

                    <td width="10"></td>

                </tr>

                <tr>

                    <td colspan="3" height="6"></td>

                </tr>

                <tr>

                    <td colspan="3">
                        <table border="0" cellpadding="1" cellspacing="0" align="center">

                            <tr>

                                <td bgcolor="#82664F">
                                    <table border="0" cellpadding="0" cellspacing="0">

                                        <tr bgcolor="#82664F" height="18">

                                            <td width="31" align="center" nowrap="nowrap"><font color="#FF0000">日</font>
                                            </td>

                                            <td width="31" align="center" nowrap="nowrap">一</td>

                                            <td width="31" align="center" nowrap="nowrap">二</td>

                                            <td width="31" align="center" nowrap="nowrap">三</td>

                                            <td width="31" align="center" nowrap="nowrap">四</td>

                                            <td width="31" align="center" nowrap="nowrap">五</td>

                                            <td width="31" align="center" nowrap="nowrap">六</td>

                                        </tr>

                                        <%for (int r = 0; r < 6; r++) {%>

                                        <tr bgcolor="#FFFFFF" height="18">

                                            <%for (int d = 0; d < 7; d++) {%>

                                            <td align="center"><input type="text" size="2" name="dayBox" readOnly
                                                                      onClick="javascript:CheckDate(this.value);"
                                                                      onMouseOver="this.style.background='#EEEEEE'"
                                                                      onmouseout="this.style.background='white'">

                                            </td>

                                            <%}%>

                                        </tr>

                                        <%}%>

                                    </table>
                                </td>

                            </tr>

                        </table>
                    </td>

                </tr>

            </table>

        </form>
        <div class="row">
            <div class="col-md-12">
                <div class="panel panel-default">
                    <div class="panel-heading">
                        <div class="text-muted bootstrap-admin-box-title">License</div>
                    </div>
                    <div class="bootstrap-admin-panel-content">
                        <p>2018年所有的旅游放假</p>
                        <h3>一月</h3>
                        <p>
                            元旦[1月1日]
                            腊八节[1月5日（腊月初八）]
                            大寒[公历1月20日左右]
                            小年[1月20日（农历腊月廿三）]
                            国际麻风节[1月31日]
                            除夕[1月27日（农历腊月三十）]
                            春节[1月28日（农历正月初一）]
                            国际海关日[1月26日]
                        </p>
                        <h3>二月</h3>
                        <p>
                            元宵节[2月11日（农历正月十五）]
                            情人节[2月14日]
                        </p>
                        <h3>三月</h3>
                        <p>
                            三八妇女节[3月8日]
                            植树节[3月12日]
                            白色情人节[3月14日]
                        </p>
                        <h3>四月</h3>
                        <p>
                            愚人节[4月1日]
                            国际儿童图书日[4月2日]
                            寒食节[4月3日（农历三月初七）]
                            清明节[4月4日（农历三月初八）]
                            世界卫生日[4月7日]
                            世界帕金森病日[4月11日]
                            谷雨[4月20日]
                            世界地球日[4月22日]
                            世界读书日[4月23日]
                            世界知识产权日[4月26日]
                            复活节[4月16日]
                        </p>
                        <h3>五月</h3>
                        <p>
                            国际博物馆日[5月18日]
                            全国助残日[5月15日]
                            全国学生营养日[5月20日]
                            全国母乳喂养宣传日[5月20日]
                            小满[5月21日（农历四月廿六）]
                            国际生物多样性日[5月22日]
                            世界无烟日[5月31日]
                            端午节[5月30日（农历五月初五）]
                        </p>
                        <h3>六月</h3>
                        <p>
                            全国爱眼日[6月6日]
                            国际儿童节[6月1日]
                            世界环境日[6月5日]
                            芒种[6月5日（ 农历五月十一）]
                            中国文化遗产日[6月11日]
                            父亲节[6月18日]
                            世界防治荒漠化和干旱日[6月17日]
                            世界难民日[6月20日]
                            夏至[6月21日（农历五月廿七）]
                            国际奥林匹克日[6月23日]
                            全国土地日[6月25日]
                            国际禁毒日[6月26日]
                            联合国宪章日[6月26日]
                        </p>
                        <h3>七月</h3>
                        <p>
                            香港回归纪念日[7月1日]
                            国际合作节[每年7月的第一个星期六]
                            建党节[7月1号]
                            小暑[7月7日（农历六月十四）]
                            中国人民抗日战争纪念日[9月3日]
                            世界人口日[7月11日]
                            大暑[7月22日（农历六月廿九）]
                            七夕情人节[8月28日（农历七月初
                        </p>
                        <h3>八月</h3>
                        <p>
                            八一建军节[八月一日]
                            立秋[8月7日（农历闰六月十六）]
                            处暑[8月23日（农历七月初二 ）]
                        </p>
                        <h3>九月</h3>
                        <p>
                            世界海事日[每年9月的最后一周]
                            中元节[9月15日（农历七月十五）]
                            白露[9月7日（农历七月十七）]
                            国际扫盲日[每年9月8日]
                            教师节[9月10日]
                            世界预防自杀日[9月10日]
                            国际臭氧层保护日[9月16日]
                            中国国耻日[9月18日]
                            国际爱牙日[9月20日]
                            国际和平日[每年9月21日]
                            国际聋人节[每年9月的第四个星期日]
                            秋分[9月23日（农历八月初四）]
                            世界旅游日[9月27日]
                        </p>
                        <h3>十月</h3>
                        <p>
                            中秋节[10月4日（农历八月十五）]
                            国庆节[10月1日]
                            国际音乐日[每年10月1日]
                            世界动物日[每年的10月4日]
                            世界住房日[每年10月的第一个星期一]
                            寒露[10月8日（农历八月十九）]
                            世界视觉日[每年10月的第二个星期四]
                            全国高血压日[10月8日]
                            国际减轻自然灾害日[每年十月的第二个星期三]
                            世界邮政日[10月9日]
                            世界精神卫生日[每年的10月10日]
                            重阳节[10月28日（农历九月初九）]
                            国际盲人节[每年的10月15日]
                            世界粮食节[10月16日]
                            国际消除贫困日[10月17日]
                            世界传统医药日[每年的10月22日]
                            霜降[10月23日（农历九月初四）]
                            联合国日[10月24日]
                            人类天花绝迹日[10月25日]
                        </p>
                        <h3>十一月</h3>
                        <p>
                            万圣节[在每年的11月1日]
                            立冬[11月7日（农历九月十九）]
                            中国记者日[11月8日]
                            消防宣传日[11月9日]
                            光棍节[11月11日]
                            联合国糖尿病日[11月14日]
                            国际大学生节[11月17日]
                            小雪[每年11月22日或23日]
                            感恩节[每年11月的第四个星期四]

                        </p>
                        <h3>十二月</h3>
                        <p>
                            世界艾滋病日[12月1日]
                            国际残疾人日[每年的12月3日]
                            大雪[12月7日]
                            世界足球日[12月9日]
                            南京大屠杀纪念日[每年12月13日]
                            世界强化免疫日[12月15日]
                            澳门回归日[12月20日]
                            国际篮球日[12月21日]
                            冬至[12月22日（农历十一月初五）]
                            平安夜[12月24日]
                            圣诞节[12月25日]
                            毛泽东诞辰日[12月26日]
                        </p>
                    </div>
                </div>
            </div>
        </div>
    </div>

</div>
</body>

</html>
