<%@ page language="java" contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix=""%>

<html>
<head>
    <meta http-equiv="content-type" content="text/html; charset=utf-8">
    <title>全部用户表</title>
    <%
        pageContext.setAttribute("APP_PATH", request.getContextPath());
    %>
    <link href="${APP_PATH}/css/bootstrap.min.css" rel="stylesheet">
    <script src="https://cdn.bootcss.com/jquery/1.12.4/jquery.min.js"></script>
    <script src="${APP_PATH}/js/bootstrap.min.js"></script>
</head>

<body>
    <!-- 搭建显示页面 -->
    <div class="container">
        <!-- 标题 -->
        <div class="row">
            <div class="col-md-12">
                <h1>酒店管理系统</h1>
            </div>
        </div>
        <!-- 按钮 -->
        <div class="row">
            <div class="col-md-4 col-md-offset-8 ">
                <button class="btn btn-primary">新增</button>
                <button class="btn btn-danger">删除</button>
            </div>
        </div>

        <!-- 显示表格数据 -->
        <div class="row">
            <div class="col-md-12">
               <table class="table table-hover">
                    <tr>
                        <th>ID</th>
                        <th>姓名</th>
                        <th>年龄</th>
                        <th>兴趣爱好</th>
                        <th>
                            操作
                        </th>
                    </tr>
                   <tr>
                       <th>1</th>
                       <th>汤松</th>
                       <th>18</th>
                       <th>打球</th>
                       <th>
                           <button class="btn btn-primary btn-sm">新增</button>
                           <button class="btn btn-danger btn-sm">删除</button>
                       </th>
                   </tr>
                   <tr>
                       <th>2</th>
                       <th>邓硕</th>
                       <th>13</th>
                       <th>打游戏</th>
                       <th>
                           <button class="btn btn-primary btn-sm">新增</button>
                           <button class="btn btn-danger btn-sm">删除</button>
                       </th>
                   </tr>
                   <tr>
                       <th>3</th>
                       <th>邓果</th>
                       <th>10</th>
                       <th>写作业</th>
                       <th>
                           <button class="btn btn-primary btn-sm">新增</button>
                           <button class="btn btn-danger btn-sm">删除</button>
                       </th>
                   </tr>
                   <tr>
                       <th>4</th>
                       <th>汤磊</th>
                       <th>4</th>
                       <th>看书</th>
                       <th>
                           <button class="btn btn-primary btn-sm">新增</button>
                           <button class="btn btn-danger btn-sm">删除</button>
                       </th>
                   </tr>
               </table>
            </div>
        </div>

        <!-- 显示分页信息 -->
        <div class="row"></div>

    </div>
</body>
</html>
