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
	<title>云凯科技</title>
<link href="http://cdn.bootcss.com/bootstrap/3.2.0/css/bootstrap.min.css" rel="stylesheet">
<script src="http://cdn.bootcss.com/jquery/2.1.1/jquery.min.js"></script>
<script src="http://cdn.bootcss.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>
    <style type="text/css">  
            body{background: url(images/gallery4.jpg) no-repeat;background-size:cover;font-size: 16px;}  
            .form{background: rgba(255,255,255,0.2);width:400px;margin:100px auto;}  
            
            .fa{display: inline-block;top: 27px;left: 6px;position: relative;color: #ccc;}  
            input[type="text"],input[type="password"]{padding-left:26px;}  
            .checkbox{padding-left:21px;}  
        </style>  
</head>
<body>

<div class="container">  
        <!DOCTYPE html>
<html>
        <head>
        <meta charset="utf-8">
        <title>云凯科技</title>
        <link rel="stylesheet" href="css/bootstrap.min.css">
        <script src="js/jquery.min.js"></script>
        <script src="js/bootstrap.min.js"></script>
        <style type="text/css">
body {
	background: url(images/gallery4.jpg) no-repeat;
	background-size: cover;
	font-size: 16px;
}
.form {
	background: rgba(255,255,255,0.2);
	width: 400px;
	margin: 100px auto;
}
.fa {
	display: inline-block;
	top: 27px;
	left: 6px;
	position: relative;
	color: #ccc;
}
input[type="text"], input[type="password"] {
	padding-left: 26px;
}
.checkbox {
	padding-left: 21px;
}
</style>
        </head>
        <body>
        <div class="container">
          <div class="form row">
            <form class="form-horizontal col-sm-offset-3 col-md-offset-3" id="register_form" action="/yk/sources/pages/reg" method="post">
              <h3 class="form-title">用户注册</h3>
              <div class="col-sm-9 col-md-9">
                <div class="form-group"> <i class="fa fa-user fa-lg"></i>
                 <input class="form-control required" type="text" placeholder="用户名"  name="u_name" autofocus/>
                </div>
                <div class="form-group"> <i class="fa fa-lock fa-lg"></i>
                  <input class="form-control required" type="password" placeholder="密码" id="password" name="u_password"/>
                </div>
                <div class="form-group"> <i class="fa fa-check fa-lg"></i>
                  <input class="form-control required" type="password" placeholder="重复密码" name="passwords"/>
                </div>
                <div class="form-group"> <i class="fa fa-check fa-lg"></i>
                 
                  <label class="checkbox-inline">
                    <input type="radio" name="u_sex" id="optionsRadios1" value="1" checked>
                    男 </label>
                  <label class="checkbox-inline">
                    <input type="radio" name="u_sex" id="optionsRadios2" value="2">
                    女 </label>
                </div>
                <div class="form-group"> <i class="fa fa-check fa-lg"></i>
                  <input type="text" class="form-control" id="phone" name="u_phone" placeholder="电话">
                </div>
                <div class="form-group"> <i class="fa fa-check fa-lg"></i>
                  <input type="text" class="form-control" id="QQ" name="u_QQ" placeholder="QQ号">
                </div>
                <div class="form-group"> <i class="fa fa-check fa-lg"></i>
                    <input type="text" class="form-control email" id="email" name="u_email" placeholder="邮箱">
                
                </div>
                <div class="form-group"> <i class="fa fa-check fa-lg"></i>
                    <input type="text" class="form-control" id="addr" name="u_addr" placeholder="现住址">
                 
                </div>
                <div class="form-group"> <i class="fa fa-check fa-lg"></i>
                  
                  <div class="col-sm-10">
                    <p id="Rid" class="form-control-static" value="2">用户角色：2</p>
                    <input type="hidden" class="form-control" id="r_id" name="r_id" value="2">
                  </div>
                </div>
               
                <div class="form-group">
                  <input type="submit" class="btn btn-success pull-right" value="注册 "/>
                  <input type="submit" class="btn btn-info pull-left" id="back_btn" value="取消"/>
                </div>
              </div>
            </form>
          </div>
        </div>
</body>
</html>  
  </div>

</body>
</html>