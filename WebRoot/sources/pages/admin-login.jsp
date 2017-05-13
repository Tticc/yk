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
	<link rel="stylesheet" href="css/bootstrap.min.css">
	<script src="js/jquery.min.js"></script>
	<script src="js/bootstrap.min.js"></script>
    <style type="text/css">  
            body{background: url(images/gallery4.jpg) no-repeat;background-size:cover;font-size: 16px;}  
            .form{background: rgba(255,255,255,0.2);width:400px;margin:100px auto;}  
            #login_form{display: block;}  
            #register_form{display: none;}  
            .fa{display: inline-block;top: 27px;left: 6px;position: relative;color: #ccc;}  
            input[type="text"],input[type="password"]{padding-left:26px;}  
            .checkbox{padding-left:21px;}  
        </style>  
</head>
<body>

<div class="container">  
        <div class="form row">  
            <form class="form-horizontal col-sm-offset-3 col-md-offset-3" id="login_form" action="/yk/sources/pages/login" method="post">  
                <h3 class="form-title">管理员登录</h3>  
                <div class="col-sm-9 col-md-9">  
                    <div class="form-group">  
                        <i class="fa fa-user fa-lg"></i>  
                        <input class="form-control required" type="text" placeholder="Username" name="u_name" autofocus maxlength="20"/>  
                    </div>  
                    <div class="form-group">  
                            <i class="fa fa-lock fa-lg"></i>  
                            <input class="form-control required" type="password" placeholder="Password" name="u_password" maxlength="8"/>  
                    </div>  
                    <div class="form-group">  
                        <label class="checkbox">  
                            <input type="checkbox" name="remember" value="1"/> 记住密码  
                        </label>  
                        <hr /> 
                    </div>  
                    <div class="form-group">  
                        <input id="user_submit" type="submit" class="btn btn-success pull-left" value="登录 "/>     
                        <!-- <input id="admin_reg" type="button" class="btn btn-success pull-left" value="注册 "/>      -->
                    </div>  
                </div>  
            </form>  
        </div>  
  </div>

</body>
</html>
<script>
$(document).ready(function(){
	$('#admin_reg').on('click',function(){
		location.href="/yk/sources/pages/admin-reg.jsp";
	});
});
</script>