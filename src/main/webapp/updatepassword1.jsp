<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<% String path = request.getContextPath(); %>
<%@ taglib  prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0">
    <title> - login -</title>
    <meta name="keywords" content="">
    <meta name="description" content="">
    <link href="<%=path%>/css/bootstrap.min.css" rel="stylesheet">
    <link href="<%=path%>/css/font-awesome.css?v=4.4.0" rel="stylesheet">
    <link href="<%=path%>/css/animate.css" rel="stylesheet">
    <link href="<%=path%>/css/style.css" rel="stylesheet">
    <link href="<%=path%>/css/login.css" rel="stylesheet">
    <!--[if lt IE 9]>
    <meta http-equiv="refresh" content="0;ie.html" />
    <![endif]-->
    <script>
        if (window.top !== window.self) {
            window.top.location = window.location;
        }
    </script>


</head>

<body class="signin">
<div class="signinpanel">
    <div class="row">
        <div class="col-sm-12">
            <form method="post" action="<%=path%>/common/updateps">
                <h4 class="no-margins">更新密码</h4>
                <!--                    <p class="m-t-md" >登录到H+后台主题UI框架</p>-->
                <input type="text" class="form-control uname" name="username" placeholder="原密码" />原密码
                <input type="password" class="form-control pword m-b" name="password" placeholder="新密码" />新密码
                <input type="password" class="form-control pword m-b" name="password1" placeholder="再次输入新密码" />再次输入新密码
<%--                <a href="<%=path%>/update.jsp">忘记密码了或者密码重置？</a>--%>
                <button class="btn btn-success btn-block">更新</button>
<%--                <button class="btn btn-success btn-block"><a href="<%=path%>/common/register">注册</a> </button>--%>
            </form>
        </div>
    </div>
    <div class="signup-footer">
        <div class="pull-left">
            &copy; hAdmin
        </div>
    </div>
</div>
</body>

</html>
