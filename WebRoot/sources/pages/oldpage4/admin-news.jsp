<!-- 新闻动态列表管理页 -->
<%@ page language="java" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>云凯科技</title>
<!-- <link rel="stylesheet" href="css/bootstrap.min.css">
	<script src="js/jquery.min.js"></script>
	<script src="js/bootstrap.min.js"></script>  -->
<link href="css/admin.css" rel="stylesheet">
<link href="http://cdn.bootcss.com/bootstrap/3.2.0/css/bootstrap.min.css" rel="stylesheet">
<script src="http://cdn.bootcss.com/jquery/2.1.1/jquery.min.js"></script>
<script src="http://cdn.bootcss.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>
</head>

<body>
<div class="navbar navbar-duomi navbar-static-top" role="navigation">
  <div class="container-fluid">
    <div class="navbar-header"> <a class="navbar-brand" href="index.jsp" id="logo">重庆云凯科技 </a> </div>
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
    <div class="col-md-10"> 
        <div class="panel panel-default">
        <div class="panel-heading">
          <h2 class="panel-title"> 新闻动态管理 </h2>
        </div>
        <div class="panel-body">
          <table class="table table-hover">
            <caption>
            <a href="publish-news.jsp" type="button" class="glyphicon glyphicon-plus btn btn-primary btn-group-lg pull-left">发布新通知</a>
            </caption>
            <thead>
              <tr>
                <th>新闻名称</th>
                <th>新闻类型</th>
                <th>发布时间</th>
                <th>操作</th>
              </tr>
            </thead>
            <tbody>
              <tr>
                <td>云凯应邀参加“电子科技大学2017届毕业生春季双选会”</td>
                <td>公司动态</td>
                <td>2017-04-01</td>
                <td>
                  <a href="edit-news.jsp"  class="btn btn-success">编辑</a>
                  <button type="button" class="btn btn-default">删除</button>
                </td>
              </tr>
              <tr>
                <td>云凯应邀参加“电子科技大学2017届毕业生春季双选会”</td>
                <td>公司动态</td>
                <td>2017-04-01</td>
                <td>
                   <a href="edit-news.jsp"  class="btn btn-success">编辑</a>
                  <button type="button" class="btn btn-default">删除</button>
                </td>
              </tr>
              <tr>
                <td>云凯应邀参加“电子科技大学2017届毕业生春季双选会”</td>
                <td>公司动态</td>
                <td>2017-04-01</td>
                <td>
                   <a href="edit-news.jsp"  class="btn btn-success">编辑</a>
                  <button type="button" class="btn btn-default">删除</button>
                </td>
              </tr>
              <tr>
                <td>云凯应邀参加“电子科技大学2017届毕业生春季双选会”</td>
                <td>公司动态</td>
                <td>2017-04-01</td>
                <td>
                   <a href="edit-news.jsp"  class="btn btn-success">编辑</a>
                  <button type="button" class="btn btn-default">删除</button>
                </td>
              </tr>
              
            </tbody>
          </table>
        </div>
      </div>
    </div>
  </div>
</div>
</body>
</html>
