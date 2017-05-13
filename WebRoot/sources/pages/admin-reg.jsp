<%@ page language="java" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>重庆云凯科技</title>
<!-- <link rel="stylesheet" href="css/bootstrap.min.css">
	<script src="js/jquery.min.js"></script>
	<script src="js/bootstrap.min.js"></script>  -->
<link href="http://cdn.bootcss.com/bootstrap/3.2.0/css/bootstrap.min.css" rel="stylesheet">
<script src="http://cdn.bootcss.com/jquery/2.1.1/jquery.min.js"></script>
<script src="http://cdn.bootcss.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>
<link rel="stylesheet" type="text/css" href="css/admin.css"  />
</head>
<body>
<div class="navbar navbar-duomi navbar-static-top" role="navigation">
  <div class="container-fluid">
    <div class="navbar-header"> <a class="navbar-brand" href="home.jsp" id="logo">重庆云凯科技 </a> </div>
  </div>
</div>
<div class="container-fluid">
  <div class="row">
    <div class="col-md-2">
      <ul id="main-nav" class="nav nav-tabs nav-stacked" style="">
        <li class="active"> <a href="#"> <i class="glyphicon glyphicon-th-large"></i> 首页 </a> </li>
        <li> <a href="#news" class="nav-header collapsed" data-toggle="collapse"> <i class="glyphicon glyphicon-cog"></i> 新闻通知管理 <span class="pull-right glyphicon glyphicon-chevron-down"></span> </a>
          <ul id="news" class="nav nav-list collapse secondmenu" style="height: 0px;">
            <li><a href="publish-news.jsp"><i class="glyphicon glyphicon-th-list"></i>发布新闻通知</a></li>
            <li><a href="admin-news.jsp"><i class="glyphicon glyphicon-asterisk"></i>新闻通知管理</a></li>
          </ul>
        </li>
        <li> <a href="#products" class="nav-header collapsed" data-toggle="collapse"> <i class="glyphicon glyphicon-cog"></i> 产品信息管理 <span class="pull-right glyphicon glyphicon-chevron-down"></span> </a>
          <ul id="products" class="nav nav-list collapse secondmenu" style="height: 0px;">
            <li><a href="publish-product.jsp"><i class="glyphicon glyphicon-th-list"></i>发布新产品</a></li>
            <li><a href="admin-products.jsp"><i class="glyphicon glyphicon-asterisk"></i>软件产品管理</a></li>
          </ul>
        </li>
        <li> <a href="admin-messages.jsp"> <i class="glyphicon glyphicon-globe"></i> 留言管理 </a> </li>
        <li> <a href="#"> <i class="glyphicon glyphicon-user"></i> 用户管理 </a> </li>
        <li> <a href="about.jsp"> <i class="glyphicon glyphicon-fire"></i> 关于系统 </a> </li>
      </ul>
    </div>
    <!-- 发布产品信息表单 -->
    <div class="col-md-10">
      <div class="panel panel-default">
        <div class="panel-heading">
          <h2 class="panel-title">管理员注册</h2>
        </div>
        <div class="panel-body">
          <form class="form-horizontal" role="form">
            <div class="form-group">
              <label for="Uname" class="col-sm-2 control-label">用户名：</label>
              <div class="col-sm-10">
                <input type="text" class="form-control" id="Uname" 
				   placeholder="请输入用户名">
              </div>
            </div>
            <div class="form-group">
              <label for="Password" class="col-sm-2 control-label">密码</label>
              <div class="col-sm-10">
                <input type="password" class="form-control" id="Password" placeholder="请输入密码">
              </div>
            </div>
            <div class="form-group">
              <label for="Passwords" class="col-sm-2 control-label">确认密码</label>
              <div class="col-sm-10">
                <input type="password" class="form-control" id="Passwords" placeholder="请再次输入密码">
              </div>
            </div>
            <div class="form-group">
              <label for="" class="col-sm-2 control-label">性别：</label>
              <label class="checkbox-inline">
                <input type="radio" name="optionsRadiosinline" id="optionsRadios1" value="1" checked>
                男 </label>
              <label class="checkbox-inline">
                <input type="radio" name="optionsRadiosinline" id="optionsRadios2" value="2">
               女 </label>
            </div>
             <div class="form-group">
              <label for="phone" class="col-sm-2 control-label">电话：</label>
              <div class="col-sm-10">
                <input type="text" class="form-control" id="phone" 
				   placeholder="请输入联系电话">
              </div>
            </div>
             <div class="form-group">
              <label for="QQ" class="col-sm-2 control-label">QQ号：</label>
              <div class="col-sm-10">
                <input type="text" class="form-control" id="QQ" 
				   placeholder="请输入QQ号">
              </div>
            </div>
            <div class="form-group">
              <label for="email" class="col-sm-2 control-label">Email:</label>
              <div class="col-sm-10">
                <input type="email" class="form-control" id="email" placeholder="请输入邮箱">
              </div>
            </div>
            <div class="form-group">
              <label for="addr" class="col-sm-2 control-label">住址：</label>
              <div class="col-sm-10">
                <input type="text" class="form-control" id="addr" 
				   placeholder="请输入现住址">
              </div>
            </div>
            
            <div class="form-group">
              <label for="Rid" class="col-sm-2 control-label">用户角色：</label>
              <div class="col-sm-10">
                <p id="Rid" class="form-control-static">1</p>
              </div>
            </div>
            <div class="form-group">
              <div class="col-sm-offset-2 col-sm-10">
                <button type="submit" class="btn btn-success">注册</button>
              </div>
            </div>
          </form>
        </div>
      </div>
    </div>
  </div>
</div>
</body>
</html>