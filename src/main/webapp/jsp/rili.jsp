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

    <title>����ѡ����</title>
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

        alert("������Χ!");

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

            parent.window.returnValue = strY + "-" + strM + "-" + strDay;  //��ѡ������ڴ��ݵ���������

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
                    <a class="navbar-brand" href="/hello/login">�Ƶ��̨</a>
                </div>
                <!-- Collect the nav links, forms, and other content for toggling -->
                <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                    <ul class="nav navbar-nav">
                        <li class="active"><a href="/hello/index">��ҳ</a></li>
                        <li><a href="/hello/about">��������</a></li>
                        <li class="dropdown">
                            <a href="#" class="dropdown-toggle" data-toggle="dropdown">�����˵�<b class="caret"></b></a>
                            <ul class="dropdown-menu">
                                <li><a href="/room/roomList">��ס</a></li>
                                <li class="divider"></li>
                                <li><a href="/room/roomList">��Ա����</a></li>
                                <li><a href="/room/roomList">�ͷ�����</a></li>
                            </ul>
                        </li>
                    </ul>
                    <ul class="nav navbar-nav navbar-right">
                        <li><a href="http://www.baidu.com">����</a></li>
                        <li class="dropdown">
                            <a href="#" class="dropdown-toggle" data-toggle="dropdown">����Ա<b class="caret"></b></a>
                            <ul class="dropdown-menu">
                                <li><a href="/hello/login">����</a></li>
                                <li><a href="/hello/login">��������</a></li>
                                <li><a href="/hello/login">�˻�����</a></li>
                                <li class="divider"></li>
                                <li><a href="javascript:loginOut();">�˳���¼</a></li>
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
                            class="glyphicon glyphicon-chevron-right"></i> ��ҳ</a>
                </li>
                <li>
                    <a href="<%=request.getContextPath()%>/hello/about"><i
                            class="glyphicon glyphicon-chevron-right"></i> ��������</a>
                </li>
                <li>
                    <a href="<%=request.getContextPath()%>/hello/rili"><i class="glyphicon glyphicon-chevron-right"></i>
                        ����</a><!-- calendar.html -->
                </li>
                <li class="disabled">
                    <a href="#"><i class="glyphicon glyphicon-chevron-right"></i> ͳ��ͼ��</a><!-- stats.html -->
                </li>
                <li>
                    <a href="forms.jsp"><i class="glyphicon glyphicon-chevron-right"></i> ��</a>
                </li>
                <li class="active">
                    <a href="tables.jsp"><i class="glyphicon glyphicon-chevron-right"></i> ���ݱ��</a>
                </li>
                <li>
                    <a href="buttons-and-icons.jsp"><i class="glyphicon glyphicon-chevron-right"></i> ��ť &amp; ͼ��</a>
                </li>
                <li>
                    <a href="wysiwyg-editors.jsp"><i class="glyphicon glyphicon-chevron-right"></i> HTML�༭��</a>
                </li>
                <li>
                    <a href="ui-and-interface.jsp"><i class="glyphicon glyphicon-chevron-right"></i> UI����</a>
                </li>
                <li>
                    <a href="#"><span class="badge pull-right">731</span> ����</a>
                </li>
                <li>
                    <a href="#"><span class="badge pull-right">812</span> �嵥</a>
                </li>
                <li>
                    <a href="#"><span class="badge pull-right">27</span> �ͻ�</a>
                </li>
                <li>
                    <a href="#"><span class="badge pull-right">1,234</span> �û�</a>
                </li>
                <li>
                    <a href="#"><span class="badge pull-right">2,221</span> ��Ϣ</a>
                </li>
                <li>
                    <a href="#"><span class="badge pull-right">11</span> ����</a>
                </li>
                <li>
                    <a href="#"><span class="badge pull-right">83</span> ����</a>
                </li>
                <li>
                    <a href="#"><span class="badge pull-right">4,231</span> ��־</a>
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

                                            <td width="31" align="center" nowrap="nowrap"><font color="#FF0000">��</font>
                                            </td>

                                            <td width="31" align="center" nowrap="nowrap">һ</td>

                                            <td width="31" align="center" nowrap="nowrap">��</td>

                                            <td width="31" align="center" nowrap="nowrap">��</td>

                                            <td width="31" align="center" nowrap="nowrap">��</td>

                                            <td width="31" align="center" nowrap="nowrap">��</td>

                                            <td width="31" align="center" nowrap="nowrap">��</td>

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
                        <p>2018�����е����ηż�</p>
                        <h3>һ��</h3>
                        <p>
                            Ԫ��[1��1��]
                            ���˽�[1��5�գ����³��ˣ�]
                            ��[����1��20������]
                            С��[1��20�գ�ũ������إ����]
                            ��������[1��31��]
                            ��Ϧ[1��27�գ�ũ��������ʮ��]
                            ����[1��28�գ�ũ�����³�һ��]
                            ���ʺ�����[1��26��]
                        </p>
                        <h3>����</h3>
                        <p>
                            Ԫ����[2��11�գ�ũ������ʮ�壩]
                            ���˽�[2��14��]
                        </p>
                        <h3>����</h3>
                        <p>
                            ���˸�Ů��[3��8��]
                            ֲ����[3��12��]
                            ��ɫ���˽�[3��14��]
                        </p>
                        <h3>����</h3>
                        <p>
                            ���˽�[4��1��]
                            ���ʶ�ͯͼ����[4��2��]
                            ��ʳ��[4��3�գ�ũ�����³��ߣ�]
                            ������[4��4�գ�ũ�����³��ˣ�]
                            ����������[4��7��]
                            ��������ɭ����[4��11��]
                            ����[4��20��]
                            ���������[4��22��]
                            ���������[4��23��]
                            ����֪ʶ��Ȩ��[4��26��]
                            �����[4��16��]
                        </p>
                        <h3>����</h3>
                        <p>
                            ���ʲ������[5��18��]
                            ȫ��������[5��15��]
                            ȫ��ѧ��Ӫ����[5��20��]
                            ȫ��ĸ��ι��������[5��20��]
                            С��[5��21�գ�ũ������إ����]
                            ���������������[5��22��]
                            ����������[5��31��]
                            �����[5��30�գ�ũ�����³��壩]
                        </p>
                        <h3>����</h3>
                        <p>
                            ȫ��������[6��6��]
                            ���ʶ�ͯ��[6��1��]
                            ���绷����[6��5��]
                            â��[6��5�գ� ũ������ʮһ��]
                            �й��Ļ��Ų���[6��11��]
                            ���׽�[6��18��]
                            ������λ�Į���͸ɺ���[6��17��]
                            ����������[6��20��]
                            ����[6��21�գ�ũ������إ�ߣ�]
                            ���ʰ���ƥ����[6��23��]
                            ȫ��������[6��25��]
                            ���ʽ�����[6��26��]
                            ���Ϲ�������[6��26��]
                        </p>
                        <h3>����</h3>
                        <p>
                            ��ۻع������[7��1��]
                            ���ʺ�����[ÿ��7�µĵ�һ��������]
                            ������[7��1��]
                            С��[7��7�գ�ũ������ʮ�ģ�]
                            �й�������ս��������[9��3��]
                            �����˿���[7��11��]
                            ����[7��22�գ�ũ������إ�ţ�]
                            ��Ϧ���˽�[8��28�գ�ũ�����³�
                        </p>
                        <h3>����</h3>
                        <p>
                            ��һ������[����һ��]
                            ����[8��7�գ�ũ��������ʮ����]
                            ����[8��23�գ�ũ�����³��� ��]
                        </p>
                        <h3>����</h3>
                        <p>
                            ���纣����[ÿ��9�µ����һ��]
                            ��Ԫ��[9��15�գ�ũ������ʮ�壩]
                            ��¶[9��7�գ�ũ������ʮ�ߣ�]
                            ����ɨä��[ÿ��9��8��]
                            ��ʦ��[9��10��]
                            ����Ԥ����ɱ��[9��10��]
                            ���ʳ����㱣����[9��16��]
                            �й�������[9��18��]
                            ���ʰ�����[9��20��]
                            ���ʺ�ƽ��[ÿ��9��21��]
                            �������˽�[ÿ��9�µĵ��ĸ�������]
                            ���[9��23�գ�ũ�����³��ģ�]
                            ����������[9��27��]
                        </p>
                        <h3>ʮ��</h3>
                        <p>
                            �����[10��4�գ�ũ������ʮ�壩]
                            �����[10��1��]
                            ����������[ÿ��10��1��]
                            ���綯����[ÿ���10��4��]
                            ����ס����[ÿ��10�µĵ�һ������һ]
                            ��¶[10��8�գ�ũ������ʮ�ţ�]
                            �����Ӿ���[ÿ��10�µĵڶ���������]
                            ȫ����Ѫѹ��[10��8��]
                            ���ʼ�����Ȼ�ֺ���[ÿ��ʮ�µĵڶ���������]
                            ����������[10��9��]
                            ���羫��������[ÿ���10��10��]
                            ������[10��28�գ�ũ�����³��ţ�]
                            ����ä�˽�[ÿ���10��15��]
                            ������ʳ��[10��16��]
                            ��������ƶ����[10��17��]
                            ���紫ͳҽҩ��[ÿ���10��22��]
                            ˪��[10��23�գ�ũ�����³��ģ�]
                            ���Ϲ���[10��24��]
                            �����컨������[10��25��]
                        </p>
                        <h3>ʮһ��</h3>
                        <p>
                            ��ʥ��[��ÿ���11��1��]
                            ����[11��7�գ�ũ������ʮ�ţ�]
                            �й�������[11��8��]
                            ����������[11��9��]
                            �����[11��11��]
                            ���Ϲ�������[11��14��]
                            ���ʴ�ѧ����[11��17��]
                            Сѩ[ÿ��11��22�ջ�23��]
                            �ж���[ÿ��11�µĵ��ĸ�������]

                        </p>
                        <h3>ʮ����</h3>
                        <p>
                            ���簬�̲���[12��1��]
                            ���ʲм�����[ÿ���12��3��]
                            ��ѩ[12��7��]
                            ����������[12��9��]
                            �Ͼ�����ɱ������[ÿ��12��13��]
                            ����ǿ��������[12��15��]
                            ���Żع���[12��20��]
                            ����������[12��21��]
                            ����[12��22�գ�ũ��ʮһ�³��壩]
                            ƽ��ҹ[12��24��]
                            ʥ����[12��25��]
                            ë�󶫵�����[12��26��]
                        </p>
                    </div>
                </div>
            </div>
        </div>
    </div>

</div>
</body>

</html>
