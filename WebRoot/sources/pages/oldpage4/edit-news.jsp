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
    <!-- 发布新动态表单 -->
    <div class="col-md-10">
      <div class="panel panel-default">
        <div class="panel-heading">
          <h2 class="panel-title"> 编辑新闻动态 </h2>
        </div>
        <div class="panel-body">
          <form class="form-horizontal" role="form">
            <div class="form-group">
              <label for="Nname" class="col-sm-2 control-label">新闻标题：</label>
              <div class="col-sm-10">
                <input type="text" class="form-control" id="Nname" 
				   placeholder="请输入标题">
              </div>
            </div>
            <div class="form-group">
              <label for="" class="col-sm-2 control-label">新闻类型：</label>
              <label class="checkbox-inline">
                <input type="radio" name="optionsRadiosinline" id="optionsRadios1" value="option1" checked>
                企业动态 </label>
              <label class="checkbox-inline">
                <input type="radio" name="optionsRadiosinline" id="optionsRadios2" value="option2">
                员工活动 </label>
            </div>
            <div class="form-group">
              <label for="Ndesc" class="col-sm-2 control-label">新闻内容：</label>
              <textarea class="form-control " rows="20" style="width:80%;padding-left: 15px;"></textarea>
            </div>
            <div class="form-group">
              <div class="col-sm-offset-2 col-sm-10">
                <button type="submit" class="btn btn-success">修改</button>
                <button type="submit" class="btn btn-default">删除</button>
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